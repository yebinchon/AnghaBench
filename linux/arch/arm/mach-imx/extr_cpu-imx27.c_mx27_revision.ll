; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_cpu-imx27.c_mx27_revision.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_cpu-imx27.c_mx27_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mx27_cpu_rev = common dso_local global i32 0, align 4
@mx27_cpu_partnumber = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mx27_revision() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @mx27_cpu_rev, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @mx27_read_cpu_rev()
  store i32 %5, i32* @mx27_cpu_rev, align 4
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @mx27_cpu_partnumber, align 4
  %8 = icmp ne i32 %7, 34849
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %14

12:                                               ; preds = %6
  %13 = load i32, i32* @mx27_cpu_rev, align 4
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @mx27_read_cpu_rev(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
