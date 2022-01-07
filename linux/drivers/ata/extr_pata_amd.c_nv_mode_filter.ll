; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_amd.c_nv_mode_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_amd.c_nv_mode_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ata_port* }
%struct.ata_port = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ata_acpi_gtm = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@nv_mode_filter.udma_mask_map = internal constant [8 x i32] [i32 132, i32 133, i32 134, i32 0, i32 131, i32 130, i32 129, i32 128], align 16
@.str = private unnamed_addr constant [14 x i8] c" (%u:%u:0x%x)\00", align 1
@ATA_MASK_PIO = common dso_local global i64 0, align 8
@ATA_MASK_MWDMA = common dso_local global i64 0, align 8
@ATA_MASK_UDMA = common dso_local global i64 0, align 8
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_MWDMA2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"nv_mode_filter: 0x%lx&0x%lx->0x%lx, BIOS=0x%lx (0x%x) ACPI=0x%lx%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ata_device*, i64)* @nv_mode_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nv_mode_filter(%struct.ata_device* %0, i64 %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_acpi_gtm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.ata_port*, %struct.ata_port** %16, align 8
  store %struct.ata_port* %17, %struct.ata_port** %5, align 8
  %18 = bitcast [32 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 32, i1 false)
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 16
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %2
  %33 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 192
  %43 = icmp eq i32 %42, 192
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 7
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* @nv_mode_filter.udma_mask_map, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ata_pack_xfermask(i32 0, i32 0, i32 %49)
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %44, %40
  %52 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %53 = call %struct.ata_acpi_gtm* @ata_acpi_init_gtm(%struct.ata_port* %52)
  store %struct.ata_acpi_gtm* %53, %struct.ata_acpi_gtm** %9, align 8
  %54 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %9, align 8
  %55 = icmp ne %struct.ata_acpi_gtm* %54, null
  br i1 %55, label %56, label %77

56:                                               ; preds = %51
  %57 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %58 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %9, align 8
  %59 = call i64 @ata_acpi_gtm_xfermask(%struct.ata_device* %57, %struct.ata_acpi_gtm* %58)
  store i64 %59, i64* %11, align 8
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %61 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %9, align 8
  %62 = getelementptr inbounds %struct.ata_acpi_gtm, %struct.ata_acpi_gtm* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %9, align 8
  %68 = getelementptr inbounds %struct.ata_acpi_gtm, %struct.ata_acpi_gtm* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %9, align 8
  %74 = getelementptr inbounds %struct.ata_acpi_gtm, %struct.ata_acpi_gtm* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @snprintf(i8* %60, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %56, %51
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = or i64 %78, %79
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @ATA_MASK_PIO, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %77
  %86 = load i64, i64* @ATA_MASK_PIO, align 8
  %87 = load i64, i64* %12, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %85, %77
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* @ATA_MASK_MWDMA, align 8
  %92 = load i64, i64* @ATA_MASK_UDMA, align 8
  %93 = or i64 %91, %92
  %94 = and i64 %90, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load i64, i64* @ATA_MASK_MWDMA, align 8
  %98 = load i64, i64* @ATA_MASK_UDMA, align 8
  %99 = or i64 %97, %98
  %100 = load i64, i64* %12, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %12, align 8
  br label %102

102:                                              ; preds = %96, %89
  %103 = load i32, i32* @ATA_PIO4, align 4
  %104 = load i32, i32* @ATA_MWDMA2, align 4
  %105 = call i64 @ata_pack_xfermask(i32 %103, i32 %104, i32 132)
  %106 = load i64, i64* %12, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %12, align 8
  %108 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* %12, align 8
  %113 = and i64 %111, %112
  %114 = load i64, i64* %10, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %118 = call i32 @ata_port_dbg(%struct.ata_port* %108, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %109, i64 %110, i64 %113, i64 %114, i32 %115, i64 %116, i8* %117)
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* %12, align 8
  %121 = and i64 %119, %120
  ret i64 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ata_pack_xfermask(i32, i32, i32) #2

declare dso_local %struct.ata_acpi_gtm* @ata_acpi_init_gtm(%struct.ata_port*) #2

declare dso_local i64 @ata_acpi_gtm_xfermask(%struct.ata_device*, %struct.ata_acpi_gtm*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @ata_port_dbg(%struct.ata_port*, i8*, i64, i64, i64, i64, i32, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
