; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.expansion_card = type { i32 }
%struct.ecard_driver = type { i32 (%struct.expansion_card*, %struct.ecard_id*)*, i32 }
%struct.ecard_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ecard_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecard_drv_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.expansion_card*, align 8
  %4 = alloca %struct.ecard_driver*, align 8
  %5 = alloca %struct.ecard_id*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.expansion_card* @ECARD_DEV(%struct.device* %7)
  store %struct.expansion_card* %8, %struct.expansion_card** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ecard_driver* @ECARD_DRV(i32 %11)
  store %struct.ecard_driver* %12, %struct.ecard_driver** %4, align 8
  %13 = load %struct.ecard_driver*, %struct.ecard_driver** %4, align 8
  %14 = getelementptr inbounds %struct.ecard_driver, %struct.ecard_driver* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %17 = call %struct.ecard_id* @ecard_match_device(i32 %15, %struct.expansion_card* %16)
  store %struct.ecard_id* %17, %struct.ecard_id** %5, align 8
  %18 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %19 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.ecard_driver*, %struct.ecard_driver** %4, align 8
  %21 = getelementptr inbounds %struct.ecard_driver, %struct.ecard_driver* %20, i32 0, i32 0
  %22 = load i32 (%struct.expansion_card*, %struct.ecard_id*)*, i32 (%struct.expansion_card*, %struct.ecard_id*)** %21, align 8
  %23 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %24 = load %struct.ecard_id*, %struct.ecard_id** %5, align 8
  %25 = call i32 %22(%struct.expansion_card* %23, %struct.ecard_id* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %30 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %1
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.expansion_card* @ECARD_DEV(%struct.device*) #1

declare dso_local %struct.ecard_driver* @ECARD_DRV(i32) #1

declare dso_local %struct.ecard_id* @ecard_match_device(i32, %struct.expansion_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
