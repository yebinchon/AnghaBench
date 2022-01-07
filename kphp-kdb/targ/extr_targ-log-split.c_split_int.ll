; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_split_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_split_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@split_par = common dso_local global i32 0, align 4
@split_quotient = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split_int(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @split_par, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* @split_quotient, align 4
  %10 = sdiv i32 %8, %9
  br label %17

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @split_par, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i32, i32* @split_quotient, align 4
  %16 = sdiv i32 %14, %15
  br label %17

17:                                               ; preds = %11, %5
  %18 = phi i32 [ %10, %5 ], [ %16, %11 ]
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
