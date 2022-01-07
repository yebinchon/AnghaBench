; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/usb/host/extr_ohci-mcs814x.c_usb_hcd_mcs814x_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/usb/host/extr_ohci-mcs814x.c_usb_hcd_mcs814x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.usb_hcd = type { i64, i64, i32* }

@IORESOURCE_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"resource[1] is not IORESOURCE_IRQ\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mcs814x\00", align 1
@hcd_name = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ioremap failed\00", align 1
@IRQF_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hc_driver*, %struct.platform_device*)* @usb_hcd_mcs814x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hcd_mcs814x_probe(%struct.hc_driver* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  store %struct.hc_driver* %0, %struct.hc_driver** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IORESOURCE_IRQ, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %131

20:                                               ; preds = %2
  %21 = call i32 @DMA_BIT_MASK(i32 32)
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32* %27, i32** %30, align 8
  %31 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 1
  %34 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %31, %struct.TYPE_4__* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.usb_hcd* %34, %struct.usb_hcd** %7, align 8
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %36 = icmp eq %struct.usb_hcd* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %131

40:                                               ; preds = %20
  %41 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %54, %60
  %62 = add nsw i64 %61, 1
  %63 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %64 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %66 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %69 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @hcd_name, align 4
  %72 = call i32 @request_mem_region(i64 %67, i64 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %40
  %75 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %76 = call i32 @usb_put_hcd(%struct.usb_hcd* %75)
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %127

79:                                               ; preds = %40
  %80 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %81 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %84 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32* @ioremap(i64 %82, i64 %85)
  %87 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %88 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %90 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %119

97:                                               ; preds = %79
  %98 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %99 = call i32 @hcd_to_ohci(%struct.usb_hcd* %98)
  %100 = call i32 @ohci_hcd_init(i32 %99)
  %101 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @IRQF_DISABLED, align 4
  %109 = call i32 @usb_add_hcd(%struct.usb_hcd* %101, i64 %107, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %97
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %131

114:                                              ; preds = %97
  %115 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %116 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @iounmap(i32* %117)
  br label %119

119:                                              ; preds = %114, %93
  %120 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %121 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %124 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @release_mem_region(i64 %122, i64 %125)
  br label %127

127:                                              ; preds = %119, %74
  %128 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %129 = call i32 @usb_put_hcd(%struct.usb_hcd* %128)
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %112, %37, %16
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32* @ioremap(i64, i64) #1

declare dso_local i32 @ohci_hcd_init(i32) #1

declare dso_local i32 @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i64, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
