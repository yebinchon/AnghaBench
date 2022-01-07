; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_drv_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_drv_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.expansion_card = type { i64, i64 }
%struct.ecard_driver = type { i32 (%struct.expansion_card*)* }
%struct.ecard_request = type { %struct.expansion_card*, i32 }

@ecard_task_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ecard_drv_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecard_drv_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.expansion_card*, align 8
  %4 = alloca %struct.ecard_driver*, align 8
  %5 = alloca %struct.ecard_request, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.expansion_card* @ECARD_DEV(%struct.device* %6)
  store %struct.expansion_card* %7, %struct.expansion_card** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call %struct.ecard_driver* @ECARD_DRV(i64 %10)
  store %struct.ecard_driver* %11, %struct.ecard_driver** %4, align 8
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.ecard_driver*, %struct.ecard_driver** %4, align 8
  %18 = getelementptr inbounds %struct.ecard_driver, %struct.ecard_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.expansion_card*)*, i32 (%struct.expansion_card*)** %18, align 8
  %20 = icmp ne i32 (%struct.expansion_card*)* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.ecard_driver*, %struct.ecard_driver** %4, align 8
  %23 = getelementptr inbounds %struct.ecard_driver, %struct.ecard_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.expansion_card*)*, i32 (%struct.expansion_card*)** %23, align 8
  %25 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %26 = call i32 %24(%struct.expansion_card* %25)
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %29 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %32 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @ecard_task_reset, align 4
  %37 = getelementptr inbounds %struct.ecard_request, %struct.ecard_request* %5, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %39 = getelementptr inbounds %struct.ecard_request, %struct.ecard_request* %5, i32 0, i32 0
  store %struct.expansion_card* %38, %struct.expansion_card** %39, align 8
  %40 = call i32 @ecard_call(%struct.ecard_request* %5)
  br label %41

41:                                               ; preds = %35, %30
  ret void
}

declare dso_local %struct.expansion_card* @ECARD_DEV(%struct.device*) #1

declare dso_local %struct.ecard_driver* @ECARD_DRV(i64) #1

declare dso_local i32 @ecard_call(%struct.ecard_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
