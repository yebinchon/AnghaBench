; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_boot1.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_boot1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@opt_prof_leak = common dso_local global i64 0, align 8
@opt_prof = common dso_local global i32 0, align 4
@opt_prof_gdump = common dso_local global i32 0, align 4
@opt_lg_prof_interval = common dso_local global i32 0, align 4
@prof_interval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_boot1() #0 {
  %1 = load i32, i32* @config_prof, align 4
  %2 = call i32 @cassert(i32 %1)
  %3 = load i64, i64* @opt_prof_leak, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @opt_prof, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store i32 1, i32* @opt_prof, align 4
  store i32 0, i32* @opt_prof_gdump, align 4
  br label %20

9:                                                ; preds = %5, %0
  %10 = load i32, i32* @opt_prof, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* @opt_lg_prof_interval, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @opt_lg_prof_interval, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* @prof_interval, align 4
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %18, %9
  br label %20

20:                                               ; preds = %19, %8
  ret void
}

declare dso_local i32 @cassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
