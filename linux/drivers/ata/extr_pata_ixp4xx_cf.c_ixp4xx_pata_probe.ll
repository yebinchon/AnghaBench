; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ixp4xx_cf.c_ixp4xx_pata_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ixp4xx_cf.c_ixp4xx_pata_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.ata_host = type { %struct.ata_port** }
%struct.ata_port = type { i32, i32, i32* }
%struct.ixp4xx_pata_data = type { i32, i32*, i32, i32*, i8*, i8* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@ixp4xx_port_ops = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_FLAG_NO_ATAPI = common dso_local global i32 0, align 4
@DRV_VERSION = common dso_local global i32 0, align 4
@ata_sff_interrupt = common dso_local global i32 0, align 4
@ixp4xx_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ixp4xx_pata_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_pata_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.ata_host*, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca %struct.ixp4xx_pata_data*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.ixp4xx_pata_data* @dev_get_platdata(i32* %12)
  store %struct.ixp4xx_pata_data* %13, %struct.ixp4xx_pata_data** %9, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 1)
  store %struct.resource* %19, %struct.resource** %6, align 8
  %20 = load %struct.resource*, %struct.resource** %5, align 8
  %21 = icmp ne %struct.resource* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %129

28:                                               ; preds = %22
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call %struct.ata_host* @ata_host_alloc(i32* %30, i32 1)
  store %struct.ata_host* %31, %struct.ata_host** %7, align 8
  %32 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %33 = icmp ne %struct.ata_host* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %129

37:                                               ; preds = %28
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @DMA_BIT_MASK(i32 32)
  %41 = call i32 @dma_set_coherent_mask(i32* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %2, align 4
  br label %129

46:                                               ; preds = %37
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.resource*, %struct.resource** %5, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @devm_ioremap(i32* %48, i32 %51, i32 4096)
  %53 = load %struct.ixp4xx_pata_data*, %struct.ixp4xx_pata_data** %9, align 8
  %54 = getelementptr inbounds %struct.ixp4xx_pata_data, %struct.ixp4xx_pata_data* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @devm_ioremap(i32* %56, i32 %59, i32 4096)
  %61 = load %struct.ixp4xx_pata_data*, %struct.ixp4xx_pata_data** %9, align 8
  %62 = getelementptr inbounds %struct.ixp4xx_pata_data, %struct.ixp4xx_pata_data* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.ixp4xx_pata_data*, %struct.ixp4xx_pata_data** %9, align 8
  %64 = getelementptr inbounds %struct.ixp4xx_pata_data, %struct.ixp4xx_pata_data* %63, i32 0, i32 5
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %46
  %68 = load %struct.ixp4xx_pata_data*, %struct.ixp4xx_pata_data** %9, align 8
  %69 = getelementptr inbounds %struct.ixp4xx_pata_data, %struct.ixp4xx_pata_data* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67, %46
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %129

75:                                               ; preds = %67
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = call i32 @platform_get_irq(%struct.platform_device* %76, i32 0)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %83 = call i32 @irq_set_irq_type(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.ixp4xx_pata_data*, %struct.ixp4xx_pata_data** %9, align 8
  %86 = getelementptr inbounds %struct.ixp4xx_pata_data, %struct.ixp4xx_pata_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ixp4xx_pata_data*, %struct.ixp4xx_pata_data** %9, align 8
  %89 = getelementptr inbounds %struct.ixp4xx_pata_data, %struct.ixp4xx_pata_data* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  store i32 %87, i32* %90, align 4
  %91 = load %struct.ixp4xx_pata_data*, %struct.ixp4xx_pata_data** %9, align 8
  %92 = getelementptr inbounds %struct.ixp4xx_pata_data, %struct.ixp4xx_pata_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ixp4xx_pata_data*, %struct.ixp4xx_pata_data** %9, align 8
  %95 = getelementptr inbounds %struct.ixp4xx_pata_data, %struct.ixp4xx_pata_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  store i32 %93, i32* %96, align 4
  %97 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %98 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %97, i32 0, i32 0
  %99 = load %struct.ata_port**, %struct.ata_port*** %98, align 8
  %100 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %99, i64 0
  %101 = load %struct.ata_port*, %struct.ata_port** %100, align 8
  store %struct.ata_port* %101, %struct.ata_port** %8, align 8
  %102 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %103 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %102, i32 0, i32 2
  store i32* @ixp4xx_port_ops, i32** %103, align 8
  %104 = load i32, i32* @ATA_PIO4, align 4
  %105 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %106 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @ATA_FLAG_NO_ATAPI, align 4
  %108 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %109 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %113 = load %struct.ixp4xx_pata_data*, %struct.ixp4xx_pata_data** %9, align 8
  %114 = load %struct.resource*, %struct.resource** %5, align 8
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.resource*, %struct.resource** %6, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ixp4xx_setup_port(%struct.ata_port* %112, %struct.ixp4xx_pata_data* %113, i32 %116, i32 %119)
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load i32, i32* @DRV_VERSION, align 4
  %124 = call i32 @ata_print_version_once(i32* %122, i32 %123)
  %125 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @ata_sff_interrupt, align 4
  %128 = call i32 @ata_host_activate(%struct.ata_host* %125, i32 %126, i32 %127, i32 0, i32* @ixp4xx_sht)
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %84, %72, %44, %34, %25
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.ixp4xx_pata_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.ata_host* @ata_host_alloc(i32*, i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i8* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @ixp4xx_setup_port(%struct.ata_port*, %struct.ixp4xx_pata_data*, i32, i32) #1

declare dso_local i32 @ata_print_version_once(i32*, i32) #1

declare dso_local i32 @ata_host_activate(%struct.ata_host*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
