; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_local_user_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_local_user_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_split_mod = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@write_only = common dso_local global i64 0, align 8
@user_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @local_user_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %21

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @log_split_mod, align 4
  %10 = srem i32 %8, %9
  %11 = load i32, i32* @log_split_min, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %21

14:                                               ; preds = %7
  %15 = load i64, i64* @write_only, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ltbl_add(i32* @user_table, i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %17, %13, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ltbl_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
