; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_rstctrl_reset_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_rstctrl_reset_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*, i32)* @sysc_rstctrl_reset_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_rstctrl_reset_deassert(%struct.sysc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sysc*, %struct.sysc** %4, align 8
  %8 = getelementptr inbounds %struct.sysc, %struct.sysc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.sysc*, %struct.sysc** %4, align 8
  %17 = getelementptr inbounds %struct.sysc, %struct.sysc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @reset_control_assert(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %12
  %26 = load %struct.sysc*, %struct.sysc** %4, align 8
  %27 = getelementptr inbounds %struct.sysc, %struct.sysc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @reset_control_deassert(i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %22, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
