; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_via.c_via_mode_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_via.c_via_mode_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_host* }
%struct.ata_host = type { %struct.via_isa_bridge* }
%struct.via_isa_bridge = type { i64 }

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_82C586_0 = common dso_local global i64 0, align 8
@ATA_ID_PROD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"TS64GSSD25-M\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"disabling UDMA mode due to reported lockups with this device\0A\00", align 1
@ATA_MASK_UDMA = common dso_local global i64 0, align 8
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@no_atapi_dma_dmi_table = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"controller locks up on ATAPI DMA, forcing PIO\0A\00", align 1
@ATA_MASK_PIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ata_device*, i64)* @via_mode_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @via_mode_filter(%struct.ata_device* %0, i64 %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca %struct.via_isa_bridge*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ata_host*, %struct.ata_host** %14, align 8
  store %struct.ata_host* %15, %struct.ata_host** %5, align 8
  %16 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %17 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %16, i32 0, i32 0
  %18 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %17, align 8
  store %struct.via_isa_bridge* %18, %struct.via_isa_bridge** %6, align 8
  %19 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %6, align 8
  %25 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI_DEVICE_ID_VIA_82C586_0, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %2
  %30 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %31 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATA_ID_PROD, align 4
  %34 = trunc i64 %21 to i32
  %35 = call i32 @ata_id_c_string(i32 %32, i8* %23, i32 %33, i32 %34)
  %36 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %40 = call i32 @ata_dev_warn(%struct.ata_device* %39, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i64, i64* @ATA_MASK_UDMA, align 8
  %42 = xor i64 %41, -1
  %43 = load i64, i64* %4, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %38, %29
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %48 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i32, i32* @no_atapi_dma_dmi_table, align 4
  %54 = call i64 @dmi_check_system(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %58 = call i32 @ata_dev_warn(%struct.ata_device* %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i64, i64* @ATA_MASK_PIO, align 8
  %60 = load i64, i64* %4, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %56, %52, %46
  %63 = load i64, i64* %4, align 8
  %64 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i64 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_id_c_string(i32, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #2

declare dso_local i64 @dmi_check_system(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
