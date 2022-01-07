; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-drv.c_admhc_adm5120_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-drv.c_admhc_adm5120_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i64, i64, i32 }
%struct.resource = type { i64, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no IOMEM resource found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no IRQ resource found\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ADM5120\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hcd_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"request_mem_region failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hc_driver*, %struct.platform_device*)* @admhc_adm5120_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @admhc_adm5120_probe(%struct.hc_driver* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store %struct.hc_driver* %0, %struct.hc_driver** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %9, align 8
  %13 = load %struct.resource*, %struct.resource** %9, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = call i32 @HCD_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %113

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 @HCD_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %113

28:                                               ; preds = %19
  %29 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %29, i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.usb_hcd* %32, %struct.usb_hcd** %7, align 8
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %34 = icmp ne %struct.usb_hcd* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %113

38:                                               ; preds = %28
  %39 = load %struct.resource*, %struct.resource** %9, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %43 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.resource*, %struct.resource** %9, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.resource*, %struct.resource** %9, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = add nsw i64 %50, 1
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %53 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %55 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %58 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @hcd_name, align 4
  %61 = call i32 @request_mem_region(i64 %56, i64 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %38
  %64 = call i32 @HCD_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %109

67:                                               ; preds = %38
  %68 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %69 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %72 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ioremap(i64 %70, i64 %73)
  %75 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %76 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %78 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %67
  %82 = call i32 @HCD_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %101

85:                                               ; preds = %67
  %86 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %87 = call i32 @hcd_to_admhcd(%struct.usb_hcd* %86)
  %88 = call i32 @admhc_hcd_init(i32 %87)
  %89 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @usb_add_hcd(%struct.usb_hcd* %89, i32 %90, i32 0)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %96

95:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %113

96:                                               ; preds = %94
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %98 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @iounmap(i32 %99)
  br label %101

101:                                              ; preds = %96, %81
  %102 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %103 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %106 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @release_mem_region(i64 %104, i64 %107)
  br label %109

109:                                              ; preds = %101, %63
  %110 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %111 = call i32 @usb_put_hcd(%struct.usb_hcd* %110)
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %95, %35, %24, %15
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @HCD_DBG(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i8*) #1

declare dso_local i32 @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @admhc_hcd_init(i32) #1

declare dso_local i32 @hcd_to_admhcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
