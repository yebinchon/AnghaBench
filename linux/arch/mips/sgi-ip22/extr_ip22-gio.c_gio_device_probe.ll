; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_gio_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_gio_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gio_driver = type { i32 (%struct.gio_device*, %struct.gio_device_id*)*, i32 }
%struct.gio_device = type opaque
%struct.gio_device_id = type opaque
%struct.gio_device.0 = type { i32 }
%struct.gio_device_id.1 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @gio_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gio_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gio_driver*, align 8
  %6 = alloca %struct.gio_device.0*, align 8
  %7 = alloca %struct.gio_device_id.1*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.gio_driver* @to_gio_driver(i32 %12)
  store %struct.gio_driver* %13, %struct.gio_driver** %5, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call %struct.gio_device.0* @to_gio_device(%struct.device* %14)
  store %struct.gio_device.0* %15, %struct.gio_device.0** %6, align 8
  %16 = load %struct.gio_driver*, %struct.gio_driver** %5, align 8
  %17 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.gio_device*, %struct.gio_device_id*)*, i32 (%struct.gio_device*, %struct.gio_device_id*)** %17, align 8
  %19 = icmp ne i32 (%struct.gio_device*, %struct.gio_device_id*)* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %49

22:                                               ; preds = %1
  %23 = load %struct.gio_device.0*, %struct.gio_device.0** %6, align 8
  %24 = call i32 @gio_dev_get(%struct.gio_device.0* %23)
  %25 = load %struct.gio_driver*, %struct.gio_driver** %5, align 8
  %26 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.gio_device.0*, %struct.gio_device.0** %6, align 8
  %29 = call %struct.gio_device_id.1* @gio_match_device(i32 %27, %struct.gio_device.0* %28)
  store %struct.gio_device_id.1* %29, %struct.gio_device_id.1** %7, align 8
  %30 = load %struct.gio_device_id.1*, %struct.gio_device_id.1** %7, align 8
  %31 = icmp ne %struct.gio_device_id.1* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.gio_driver*, %struct.gio_driver** %5, align 8
  %34 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %33, i32 0, i32 0
  %35 = load i32 (%struct.gio_device*, %struct.gio_device_id*)*, i32 (%struct.gio_device*, %struct.gio_device_id*)** %34, align 8
  %36 = load %struct.gio_device.0*, %struct.gio_device.0** %6, align 8
  %37 = bitcast %struct.gio_device.0* %36 to %struct.gio_device*
  %38 = load %struct.gio_device_id.1*, %struct.gio_device_id.1** %7, align 8
  %39 = bitcast %struct.gio_device_id.1* %38 to %struct.gio_device_id*
  %40 = call i32 %35(%struct.gio_device* %37, %struct.gio_device_id* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %22
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.gio_device.0*, %struct.gio_device.0** %6, align 8
  %46 = call i32 @gio_dev_put(%struct.gio_device.0* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %20
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.gio_driver* @to_gio_driver(i32) #1

declare dso_local %struct.gio_device.0* @to_gio_device(%struct.device*) #1

declare dso_local i32 @gio_dev_get(%struct.gio_device.0*) #1

declare dso_local %struct.gio_device_id.1* @gio_match_device(i32, %struct.gio_device.0*) #1

declare dso_local i32 @gio_dev_put(%struct.gio_device.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
