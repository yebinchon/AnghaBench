; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_mips.c_bcma_core_mips_irqflag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_mips.c_bcma_core_mips_irqflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32 }

@BCMA_MIPS_OOBSELOUTA30 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_device*)* @bcma_core_mips_irqflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_core_mips_irqflag(%struct.bcma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  %5 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %6 = call i64 @bcma_core_mips_bcm47162a0_quirk(%struct.bcma_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %10 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %14 = call i64 @bcma_core_mips_bcm5357b0_quirk(%struct.bcma_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %18 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %12
  %21 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %22 = load i32, i32* @BCMA_MIPS_OOBSELOUTA30, align 4
  %23 = call i32 @bcma_aread32(%struct.bcma_device* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 31
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %20
  store i32 63, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26, %16, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @bcma_core_mips_bcm47162a0_quirk(%struct.bcma_device*) #1

declare dso_local i64 @bcma_core_mips_bcm5357b0_quirk(%struct.bcma_device*) #1

declare dso_local i32 @bcma_aread32(%struct.bcma_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
