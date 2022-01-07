; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_imx.c_pata_imx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_imx.c_pata_imx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ata_host = type { %struct.ata_port**, %struct.pata_imx_priv* }
%struct.ata_port = type { %struct.TYPE_2__, i32, i32, i32* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.pata_imx_priv = type { i64, i64 }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@pata_imx_port_ops = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PATA_IMX_DRIVE_DATA = common dso_local global i64 0, align 8
@PATA_IMX_DRIVE_CONTROL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"cmd 0x%llx ctl 0x%llx\00", align 1
@PATA_IMX_ATA_CTRL_FIFO_RST_B = common dso_local global i32 0, align 4
@PATA_IMX_ATA_CTRL_ATA_RST_B = common dso_local global i32 0, align 4
@PATA_IMX_ATA_CONTROL = common dso_local global i64 0, align 8
@PATA_IMX_ATA_INTR_ATA_INTRQ2 = common dso_local global i32 0, align 4
@PATA_IMX_ATA_INT_EN = common dso_local global i64 0, align 8
@ata_sff_interrupt = common dso_local global i32 0, align 4
@pata_imx_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pata_imx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_imx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.pata_imx_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call i32 @platform_get_irq(%struct.platform_device* %10, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %170

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.pata_imx_priv* @devm_kzalloc(i32* %18, i32 16, i32 %19)
  store %struct.pata_imx_priv* %20, %struct.pata_imx_priv** %6, align 8
  %21 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %22 = icmp ne %struct.pata_imx_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %170

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i64 @devm_clk_get(i32* %28, i32* null)
  %30 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %31 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %33 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @IS_ERR(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %42 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @PTR_ERR(i64 %43)
  store i32 %44, i32* %2, align 4
  br label %170

45:                                               ; preds = %26
  %46 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %47 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @clk_prepare_enable(i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %170

54:                                               ; preds = %45
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call %struct.ata_host* @ata_host_alloc(i32* %56, i32 1)
  store %struct.ata_host* %57, %struct.ata_host** %4, align 8
  %58 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %59 = icmp ne %struct.ata_host* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %164

63:                                               ; preds = %54
  %64 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %65 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %66 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %65, i32 0, i32 1
  store %struct.pata_imx_priv* %64, %struct.pata_imx_priv** %66, align 8
  %67 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %68 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %67, i32 0, i32 0
  %69 = load %struct.ata_port**, %struct.ata_port*** %68, align 8
  %70 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %69, i64 0
  %71 = load %struct.ata_port*, %struct.ata_port** %70, align 8
  store %struct.ata_port* %71, %struct.ata_port** %5, align 8
  %72 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %73 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %72, i32 0, i32 3
  store i32* @pata_imx_port_ops, i32** %73, align 8
  %74 = load i32, i32* @ATA_PIO4, align 4
  %75 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %76 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @ATA_FLAG_SLAVE_POSS, align 4
  %78 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %79 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load i32, i32* @IORESOURCE_MEM, align 4
  %84 = call %struct.resource* @platform_get_resource(%struct.platform_device* %82, i32 %83, i32 0)
  store %struct.resource* %84, %struct.resource** %8, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.resource*, %struct.resource** %8, align 8
  %88 = call i64 @devm_ioremap_resource(i32* %86, %struct.resource* %87)
  %89 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %90 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %92 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @IS_ERR(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %63
  %97 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %98 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @PTR_ERR(i64 %99)
  store i32 %100, i32* %9, align 4
  br label %164

101:                                              ; preds = %63
  %102 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %103 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PATA_IMX_DRIVE_DATA, align 8
  %106 = add nsw i64 %104, %105
  %107 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %108 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i64 %106, i64* %109, align 8
  %110 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %111 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PATA_IMX_DRIVE_CONTROL, align 8
  %114 = add nsw i64 %112, %113
  %115 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %116 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  %118 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %119 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %123 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i64 %121, i64* %124, align 8
  %125 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %126 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %125, i32 0, i32 0
  %127 = call i32 @pata_imx_setup_port(%struct.TYPE_2__* %126)
  %128 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %129 = load %struct.resource*, %struct.resource** %8, align 8
  %130 = getelementptr inbounds %struct.resource, %struct.resource* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PATA_IMX_DRIVE_DATA, align 8
  %133 = add i64 %131, %132
  %134 = load %struct.resource*, %struct.resource** %8, align 8
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PATA_IMX_DRIVE_CONTROL, align 8
  %138 = add i64 %136, %137
  %139 = call i32 @ata_port_desc(%struct.ata_port* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %133, i64 %138)
  %140 = load i32, i32* @PATA_IMX_ATA_CTRL_FIFO_RST_B, align 4
  %141 = load i32, i32* @PATA_IMX_ATA_CTRL_ATA_RST_B, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %144 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PATA_IMX_ATA_CONTROL, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @__raw_writel(i32 %142, i64 %147)
  %149 = load i32, i32* @PATA_IMX_ATA_INTR_ATA_INTRQ2, align 4
  %150 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %151 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PATA_IMX_ATA_INT_EN, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @__raw_writel(i32 %149, i64 %154)
  %156 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @ata_sff_interrupt, align 4
  %159 = call i32 @ata_host_activate(%struct.ata_host* %156, i32 %157, i32 %158, i32 0, i32* @pata_imx_sht)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %101
  br label %164

163:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %170

164:                                              ; preds = %162, %96, %60
  %165 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %6, align 8
  %166 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @clk_disable_unprepare(i64 %167)
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %164, %163, %52, %37, %23, %14
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.pata_imx_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local %struct.ata_host* @ata_host_alloc(i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @pata_imx_setup_port(%struct.TYPE_2__*) #1

declare dso_local i32 @ata_port_desc(%struct.ata_port*, i8*, i64, i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @ata_host_activate(%struct.ata_host*, i32, i32, i32, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
