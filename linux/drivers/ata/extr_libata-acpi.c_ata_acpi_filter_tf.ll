; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_filter_tf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_filter_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_taskfile = type { i64, i64, i64 }

@ATA_ACPI_FILTER_SETXFER = common dso_local global i32 0, align 4
@ATA_CMD_SET_FEATURES = common dso_local global i64 0, align 8
@SETFEATURES_XFER = common dso_local global i64 0, align 8
@ATA_ACPI_FILTER_LOCK = common dso_local global i32 0, align 4
@ATA_CMD_CONF_OVERLAY = common dso_local global i64 0, align 8
@ATA_DCO_FREEZE_LOCK = common dso_local global i64 0, align 8
@ATA_CMD_SEC_FREEZE_LOCK = common dso_local global i64 0, align 8
@ATA_CMD_READ_NATIVE_MAX = common dso_local global i64 0, align 8
@ATA_CMD_SET_MAX = common dso_local global i64 0, align 8
@ATA_SET_MAX_LOCK = common dso_local global i64 0, align 8
@ATA_SET_MAX_FREEZE_LOCK = common dso_local global i64 0, align 8
@SETFEATURES_SATA_ENABLE = common dso_local global i64 0, align 8
@ATA_ACPI_FILTER_DIPM = common dso_local global i32 0, align 4
@SATA_DIPM = common dso_local global i64 0, align 8
@ATA_ACPI_FILTER_FPDMA_OFFSET = common dso_local global i32 0, align 4
@SATA_FPDMA_OFFSET = common dso_local global i64 0, align 8
@SATA_FPDMA_IN_ORDER = common dso_local global i64 0, align 8
@ATA_ACPI_FILTER_FPDMA_AA = common dso_local global i32 0, align 4
@SATA_FPDMA_AA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, %struct.ata_taskfile*, %struct.ata_taskfile*)* @ata_acpi_filter_tf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_acpi_filter_tf(%struct.ata_device* %0, %struct.ata_taskfile* %1, %struct.ata_taskfile* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.ata_taskfile*, align 8
  %7 = alloca %struct.ata_taskfile*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %6, align 8
  store %struct.ata_taskfile* %2, %struct.ata_taskfile** %7, align 8
  %8 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %9 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ATA_ACPI_FILTER_SETXFER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %16 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ATA_CMD_SET_FEATURES, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %22 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SETFEATURES_XFER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %146

27:                                               ; preds = %20, %14
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATA_ACPI_FILTER_LOCK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %28
  %36 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %37 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ATA_CMD_CONF_OVERLAY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %43 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ATA_DCO_FREEZE_LOCK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %146

48:                                               ; preds = %41, %35
  %49 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %50 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ATA_CMD_SEC_FREEZE_LOCK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %146

55:                                               ; preds = %48
  %56 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %57 = icmp ne %struct.ata_taskfile* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %60 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ATA_CMD_READ_NATIVE_MAX, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %58, %55
  %65 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %66 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ATA_CMD_SET_MAX, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %72 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ATA_SET_MAX_LOCK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %78 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ATA_SET_MAX_FREEZE_LOCK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %70
  store i32 1, i32* %4, align 4
  br label %146

83:                                               ; preds = %76, %64, %58
  br label %84

84:                                               ; preds = %83, %28
  %85 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %86 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ATA_CMD_SET_FEATURES, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %145

90:                                               ; preds = %84
  %91 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %92 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SETFEATURES_SATA_ENABLE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %145

96:                                               ; preds = %90
  %97 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %98 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ATA_ACPI_FILTER_DIPM, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %105 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SATA_DIPM, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %4, align 4
  br label %146

110:                                              ; preds = %103, %96
  %111 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %112 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ATA_ACPI_FILTER_FPDMA_OFFSET, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %119 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SATA_FPDMA_OFFSET, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %125 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @SATA_FPDMA_IN_ORDER, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %117
  store i32 1, i32* %4, align 4
  br label %146

130:                                              ; preds = %123, %110
  %131 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %132 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ATA_ACPI_FILTER_FPDMA_AA, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %139 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SATA_FPDMA_AA, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 1, i32* %4, align 4
  br label %146

144:                                              ; preds = %137, %130
  br label %145

145:                                              ; preds = %144, %90, %84
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %143, %129, %109, %82, %54, %47, %26
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
