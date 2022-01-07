; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_register_platform_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_register_platform_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdm_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@arch_clkdm = common dso_local global %struct.clkdm_ops* null, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clkdm_register_platform_funcs(%struct.clkdm_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clkdm_ops*, align 8
  store %struct.clkdm_ops* %0, %struct.clkdm_ops** %3, align 8
  %4 = load %struct.clkdm_ops*, %struct.clkdm_ops** %3, align 8
  %5 = icmp ne %struct.clkdm_ops* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.clkdm_ops*, %struct.clkdm_ops** @arch_clkdm, align 8
  %11 = icmp ne %struct.clkdm_ops* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @EEXIST, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %9
  %16 = load %struct.clkdm_ops*, %struct.clkdm_ops** %3, align 8
  store %struct.clkdm_ops* %16, %struct.clkdm_ops** @arch_clkdm, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %12, %6
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
