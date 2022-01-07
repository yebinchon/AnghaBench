; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_core.c_bcma_core_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_core.c_bcma_core_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32 }

@BCMA_RESET_CTL = common dso_local global i32 0, align 4
@BCMA_RESET_CTL_RESET = common dso_local global i32 0, align 4
@BCMA_RESET_ST = common dso_local global i32 0, align 4
@BCMA_IOCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_core_disable(%struct.bcma_device* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %6 = load i32, i32* @BCMA_RESET_CTL, align 4
  %7 = call i32 @bcma_aread32(%struct.bcma_device* %5, i32 %6)
  %8 = load i32, i32* @BCMA_RESET_CTL_RESET, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %32

12:                                               ; preds = %2
  %13 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %14 = load i32, i32* @BCMA_RESET_ST, align 4
  %15 = call i32 @bcma_core_wait_value(%struct.bcma_device* %13, i32 %14, i32 -1, i32 0, i32 300)
  %16 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %17 = load i32, i32* @BCMA_RESET_CTL, align 4
  %18 = load i32, i32* @BCMA_RESET_CTL_RESET, align 4
  %19 = call i32 @bcma_awrite32(%struct.bcma_device* %16, i32 %17, i32 %18)
  %20 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %21 = load i32, i32* @BCMA_RESET_CTL, align 4
  %22 = call i32 @bcma_aread32(%struct.bcma_device* %20, i32 %21)
  %23 = call i32 @udelay(i32 1)
  %24 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %25 = load i32, i32* @BCMA_IOCTL, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @bcma_awrite32(%struct.bcma_device* %24, i32 %25, i32 %26)
  %28 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %29 = load i32, i32* @BCMA_IOCTL, align 4
  %30 = call i32 @bcma_aread32(%struct.bcma_device* %28, i32 %29)
  %31 = call i32 @udelay(i32 10)
  br label %32

32:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @bcma_aread32(%struct.bcma_device*, i32) #1

declare dso_local i32 @bcma_core_wait_value(%struct.bcma_device*, i32, i32, i32, i32) #1

declare dso_local i32 @bcma_awrite32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
