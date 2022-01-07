; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_winbond_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_winbond_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.legacy_probe = type { i32 }
%struct.legacy_data = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"winbond\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.legacy_probe*, %struct.legacy_data*)* @winbond_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @winbond_port(%struct.platform_device* %0, %struct.legacy_probe* %1, %struct.legacy_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.legacy_probe*, align 8
  %7 = alloca %struct.legacy_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.legacy_probe* %1, %struct.legacy_probe** %6, align 8
  store %struct.legacy_data* %2, %struct.legacy_data** %7, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load %struct.legacy_probe*, %struct.legacy_probe** %6, align 8
  %11 = getelementptr inbounds %struct.legacy_probe, %struct.legacy_probe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @devm_request_region(i32* %9, i32 %12, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.legacy_probe*, %struct.legacy_probe** %6, align 8
  %20 = getelementptr inbounds %struct.legacy_probe, %struct.legacy_probe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.legacy_data*, %struct.legacy_data** %7, align 8
  %23 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32* @devm_request_region(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
