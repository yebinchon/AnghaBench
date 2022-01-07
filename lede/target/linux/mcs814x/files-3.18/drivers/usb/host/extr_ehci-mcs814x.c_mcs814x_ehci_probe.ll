; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/usb/host/extr_ehci-mcs814x.c_mcs814x_ehci_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/usb/host/extr_ehci-mcs814x.c_mcs814x_ehci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.usb_hcd = type { i32, i32, i32* }
%struct.resource = type { i32 }

@mcs814x_ehci_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Found HC with no IRQ. Check %s setup!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Found HC with no register addr. Check %s setup!\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"controller already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"error mapping memory\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"added MCS814X EHCI driver\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"init %s fail, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcs814x_ehci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs814x_ehci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.hc_driver*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.hc_driver* @mcs814x_ehci_hc_driver, %struct.hc_driver** %5, align 8
  %9 = call i64 (...) @usb_disabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %155

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @IORESOURCE_IRQ, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 0)
  store %struct.resource* %17, %struct.resource** %6, align 8
  %18 = load %struct.resource*, %struct.resource** %6, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_name(%struct.TYPE_6__* %24)
  %26 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %155

29:                                               ; preds = %14
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = call i32 @DMA_BIT_MASK(i32 32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32* %39, i32** %42, align 8
  %43 = load %struct.hc_driver*, %struct.hc_driver** %5, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_name(%struct.TYPE_6__* %47)
  %49 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %43, %struct.TYPE_6__* %45, i32 %48)
  store %struct.usb_hcd* %49, %struct.usb_hcd** %4, align 8
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %51 = icmp ne %struct.usb_hcd* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %29
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %146

55:                                               ; preds = %29
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = call %struct.resource* @platform_get_resource(%struct.platform_device* %56, i32 %57, i32 0)
  store %struct.resource* %58, %struct.resource** %6, align 8
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = icmp ne %struct.resource* %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %55
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_name(%struct.TYPE_6__* %65)
  %67 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %143

70:                                               ; preds = %55
  %71 = load %struct.resource*, %struct.resource** %6, align 8
  %72 = getelementptr inbounds %struct.resource, %struct.resource* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %75 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.resource*, %struct.resource** %6, align 8
  %77 = call i32 @resource_size(%struct.resource* %76)
  %78 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %79 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %81 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %84 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hc_driver*, %struct.hc_driver** %5, align 8
  %87 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @request_mem_region(i32 %82, i32 %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %70
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_dbg(%struct.TYPE_6__* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @EBUSY, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %143

97:                                               ; preds = %70
  %98 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %99 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %102 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32* @ioremap_nocache(i32 %100, i32 %103)
  %105 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %106 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  %107 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %108 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %97
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @dev_dbg(%struct.TYPE_6__* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* @EFAULT, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %135

117:                                              ; preds = %97
  %118 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @IRQF_SHARED, align 4
  %121 = call i32 @usb_add_hcd(%struct.usb_hcd* %118, i32 %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %130

125:                                              ; preds = %117
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 @dev_info(%struct.TYPE_6__* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %155

130:                                              ; preds = %124
  %131 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %132 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @iounmap(i32* %133)
  br label %135

135:                                              ; preds = %130, %111
  %136 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %137 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %140 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @release_mem_region(i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %135, %91, %61
  %144 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %145 = call i32 @usb_put_hcd(%struct.usb_hcd* %144)
  br label %146

146:                                              ; preds = %143, %52
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_name(%struct.TYPE_6__* %150)
  %152 = load i32, i32* %8, align 4
  %153 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %146, %125, %20, %11
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
