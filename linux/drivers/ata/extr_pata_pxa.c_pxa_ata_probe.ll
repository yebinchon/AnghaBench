; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pxa.c_pxa_ata_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pxa.c_pxa_ata_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.ata_host = type { %struct.ata_port** }
%struct.ata_port = type { %struct.pata_pxa_data*, %struct.TYPE_2__, i32, i32, i32* }
%struct.pata_pxa_data = type { i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.resource = type { i32 }
%struct.pata_pxa_pdata = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [29 x i8] c"invalid number of resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pxa_ata_port_ops = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_MWDMA2 = common dso_local global i32 0, align 4
@ATA_REG_DATA = common dso_local global i32 0, align 4
@ATA_REG_ERR = common dso_local global i32 0, align 4
@ATA_REG_FEATURE = common dso_local global i32 0, align 4
@ATA_REG_NSECT = common dso_local global i32 0, align 4
@ATA_REG_LBAL = common dso_local global i32 0, align 4
@ATA_REG_LBAM = common dso_local global i32 0, align 4
@ATA_REG_LBAH = common dso_local global i32 0, align 4
@ATA_REG_DEVICE = common dso_local global i32 0, align 4
@ATA_REG_STATUS = common dso_local global i32 0, align 4
@ATA_REG_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"dma configuration failed: %d\0A\00", align 1
@ata_sff_interrupt = common dso_local global i32 0, align 4
@pxa_ata_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa_ata_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ata_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.pata_pxa_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.pata_pxa_pdata*, align 8
  %12 = alloca %struct.dma_slave_config, align 8
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = call %struct.pata_pxa_pdata* @dev_get_platdata(i32* %15)
  store %struct.pata_pxa_pdata* %16, %struct.pata_pxa_pdata** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 1
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %350

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %7, align 8
  %31 = load %struct.resource*, %struct.resource** %7, align 8
  %32 = icmp eq %struct.resource* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %350

39:                                               ; preds = %27
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource(%struct.platform_device* %40, i32 %41, i32 1)
  store %struct.resource* %42, %struct.resource** %8, align 8
  %43 = load %struct.resource*, %struct.resource** %8, align 8
  %44 = icmp eq %struct.resource* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %350

51:                                               ; preds = %39
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_DMA, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %9, align 8
  %55 = load %struct.resource*, %struct.resource** %9, align 8
  %56 = icmp eq %struct.resource* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %350

63:                                               ; preds = %51
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load i32, i32* @IORESOURCE_IRQ, align 4
  %66 = call %struct.resource* @platform_get_resource(%struct.platform_device* %64, i32 %65, i32 0)
  store %struct.resource* %66, %struct.resource** %10, align 8
  %67 = load %struct.resource*, %struct.resource** %10, align 8
  %68 = icmp eq %struct.resource* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %350

75:                                               ; preds = %63
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 1
  %78 = call %struct.ata_host* @ata_host_alloc(i32* %77, i32 1)
  store %struct.ata_host* %78, %struct.ata_host** %4, align 8
  %79 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %80 = icmp ne %struct.ata_host* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %350

84:                                               ; preds = %75
  %85 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %86 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %85, i32 0, i32 0
  %87 = load %struct.ata_port**, %struct.ata_port*** %86, align 8
  %88 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %87, i64 0
  %89 = load %struct.ata_port*, %struct.ata_port** %88, align 8
  store %struct.ata_port* %89, %struct.ata_port** %5, align 8
  %90 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %91 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %90, i32 0, i32 4
  store i32* @pxa_ata_port_ops, i32** %91, align 8
  %92 = load i32, i32* @ATA_PIO4, align 4
  %93 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %94 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @ATA_MWDMA2, align 4
  %96 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %97 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 1
  %100 = load %struct.resource*, %struct.resource** %7, align 8
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.resource*, %struct.resource** %7, align 8
  %104 = call i32 @resource_size(%struct.resource* %103)
  %105 = call i8* @devm_ioremap(i32* %99, i32 %102, i32 %104)
  %106 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %107 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 1
  %111 = load %struct.resource*, %struct.resource** %8, align 8
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.resource*, %struct.resource** %8, align 8
  %115 = call i32 @resource_size(%struct.resource* %114)
  %116 = call i8* @devm_ioremap(i32* %110, i32 %113, i32 %115)
  %117 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %118 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 11
  store i8* %116, i8** %119, align 8
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 1
  %122 = load %struct.resource*, %struct.resource** %9, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.resource*, %struct.resource** %9, align 8
  %126 = call i32 @resource_size(%struct.resource* %125)
  %127 = call i8* @devm_ioremap(i32* %121, i32 %124, i32 %126)
  %128 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %129 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 13
  store i8* %127, i8** %130, align 8
  %131 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %132 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 11
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %136 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 12
  store i8* %134, i8** %137, align 8
  %138 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %139 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* @ATA_REG_DATA, align 4
  %143 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %144 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %142, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr i8, i8* %141, i64 %147
  %149 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %150 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 10
  store i8* %148, i8** %151, align 8
  %152 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %153 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* @ATA_REG_ERR, align 4
  %157 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %158 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr i8, i8* %155, i64 %161
  %163 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %164 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 9
  store i8* %162, i8** %165, align 8
  %166 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %167 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* @ATA_REG_FEATURE, align 4
  %171 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %172 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %170, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr i8, i8* %169, i64 %175
  %177 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %178 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 8
  store i8* %176, i8** %179, align 8
  %180 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %181 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* @ATA_REG_NSECT, align 4
  %185 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %186 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %184, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr i8, i8* %183, i64 %189
  %191 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %192 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 7
  store i8* %190, i8** %193, align 8
  %194 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %195 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load i32, i32* @ATA_REG_LBAL, align 4
  %199 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %200 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = shl i32 %198, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr i8, i8* %197, i64 %203
  %205 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %206 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 6
  store i8* %204, i8** %207, align 8
  %208 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %209 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* @ATA_REG_LBAM, align 4
  %213 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %214 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %212, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr i8, i8* %211, i64 %217
  %219 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %220 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 5
  store i8* %218, i8** %221, align 8
  %222 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %223 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* @ATA_REG_LBAH, align 4
  %227 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %228 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = shl i32 %226, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr i8, i8* %225, i64 %231
  %233 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %234 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 4
  store i8* %232, i8** %235, align 8
  %236 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %237 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* @ATA_REG_DEVICE, align 4
  %241 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %242 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = shl i32 %240, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr i8, i8* %239, i64 %245
  %247 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %248 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 3
  store i8* %246, i8** %249, align 8
  %250 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %251 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i32, i32* @ATA_REG_STATUS, align 4
  %255 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %256 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = shl i32 %254, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr i8, i8* %253, i64 %259
  %261 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %262 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 2
  store i8* %260, i8** %263, align 8
  %264 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %265 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* @ATA_REG_CMD, align 4
  %269 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %270 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = shl i32 %268, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr i8, i8* %267, i64 %273
  %275 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %276 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 1
  store i8* %274, i8** %277, align 8
  %278 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %279 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %278, i32 0, i32 1
  %280 = load i32, i32* @GFP_KERNEL, align 4
  %281 = call %struct.pata_pxa_data* @devm_kzalloc(i32* %279, i32 4, i32 %280)
  store %struct.pata_pxa_data* %281, %struct.pata_pxa_data** %6, align 8
  %282 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %6, align 8
  %283 = icmp ne %struct.pata_pxa_data* %282, null
  br i1 %283, label %287, label %284

284:                                              ; preds = %84
  %285 = load i32, i32* @ENOMEM, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %2, align 4
  br label %350

287:                                              ; preds = %84
  %288 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %6, align 8
  %289 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %290 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %289, i32 0, i32 0
  store %struct.pata_pxa_data* %288, %struct.pata_pxa_data** %290, align 8
  %291 = call i32 @memset(%struct.dma_slave_config* %12, i32 0, i32 32)
  %292 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_2_BYTES, align 8
  %293 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 5
  store i8* %292, i8** %293, align 8
  %294 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_2_BYTES, align 8
  %295 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 4
  store i8* %294, i8** %295, align 8
  %296 = load %struct.resource*, %struct.resource** %9, align 8
  %297 = getelementptr inbounds %struct.resource, %struct.resource* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 3
  store i32 %298, i32* %299, align 4
  %300 = load %struct.resource*, %struct.resource** %9, align 8
  %301 = getelementptr inbounds %struct.resource, %struct.resource* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 2
  store i32 %302, i32* %303, align 8
  %304 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 0
  store i32 32, i32* %304, align 8
  %305 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 1
  store i32 32, i32* %305, align 4
  %306 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %307 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %306, i32 0, i32 1
  %308 = call i32 @dma_request_slave_channel(i32* %307, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %309 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %6, align 8
  %310 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 4
  %311 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %6, align 8
  %312 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %287
  %316 = load i32, i32* @EBUSY, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %2, align 4
  br label %350

318:                                              ; preds = %287
  %319 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %6, align 8
  %320 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @dmaengine_slave_config(i32 %321, %struct.dma_slave_config* %12)
  store i32 %322, i32* %13, align 4
  %323 = load i32, i32* %13, align 4
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %318
  %326 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %327 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %326, i32 0, i32 1
  %328 = load i32, i32* %13, align 4
  %329 = call i32 (i32*, i8*, ...) @dev_err(i32* %327, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* %13, align 4
  store i32 %330, i32* %2, align 4
  br label %350

331:                                              ; preds = %318
  %332 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %333 = load %struct.resource*, %struct.resource** %10, align 8
  %334 = getelementptr inbounds %struct.resource, %struct.resource* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @ata_sff_interrupt, align 4
  %337 = load %struct.pata_pxa_pdata*, %struct.pata_pxa_pdata** %11, align 8
  %338 = getelementptr inbounds %struct.pata_pxa_pdata, %struct.pata_pxa_pdata* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @ata_host_activate(%struct.ata_host* %332, i32 %335, i32 %336, i32 %339, i32* @pxa_ata_sht)
  store i32 %340, i32* %13, align 4
  %341 = load i32, i32* %13, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %331
  %344 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %6, align 8
  %345 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @dma_release_channel(i32 %346)
  br label %348

348:                                              ; preds = %343, %331
  %349 = load i32, i32* %13, align 4
  store i32 %349, i32* %2, align 4
  br label %350

350:                                              ; preds = %348, %325, %315, %284, %81, %72, %60, %48, %36, %21
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local %struct.pata_pxa_pdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ata_host* @ata_host_alloc(i32*, i32) #1

declare dso_local i8* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.pata_pxa_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dma_request_slave_channel(i32*, i8*) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local i32 @ata_host_activate(%struct.ata_host*, i32, i32, i32, i32*) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
