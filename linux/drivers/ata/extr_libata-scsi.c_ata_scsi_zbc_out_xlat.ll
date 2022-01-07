; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_zbc_out_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_zbc_out_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.ata_device*, %struct.scsi_cmnd*, %struct.ata_taskfile }
%struct.ata_device = type { i32 }
%struct.scsi_cmnd = type { i32*, i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ZO_CLOSE_ZONE = common dso_local global i32 0, align 4
@ZO_FINISH_ZONE = common dso_local global i32 0, align 4
@ZO_OPEN_ZONE = common dso_local global i32 0, align 4
@ZO_RESET_WRITE_POINTER = common dso_local global i32 0, align 4
@ATA_PROT_NCQ_NODATA = common dso_local global i32 0, align 4
@ATA_CMD_NCQ_NON_DATA = common dso_local global i32 0, align 4
@ATA_SUBCMD_NCQ_NON_DATA_ZAC_MGMT_OUT = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_CMD_ZAC_MGMT_OUT = common dso_local global i32 0, align 4
@ATA_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_zbc_out_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_zbc_out_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 3
  store %struct.ata_taskfile* %14, %struct.ata_taskfile** %4, align 8
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 2
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %5, align 8
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 1
  %20 = load %struct.ata_device*, %struct.ata_device** %19, align 8
  store %struct.ata_device* %20, %struct.ata_device** %6, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  store i32 -1, i32* %12, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 16
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 15, i32* %12, align 4
  br label %164

32:                                               ; preds = %1
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 31
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ZO_CLOSE_ZONE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ZO_FINISH_ZONE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @ZO_OPEN_ZONE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @ZO_RESET_WRITE_POINTER, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  br label %164

53:                                               ; preds = %48, %44, %40, %32
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @scsi_16_lba_len(i32* %54, i32* %10, i64* %11)
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %171

59:                                               ; preds = %53
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 14
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  br label %75

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %70 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 2, i32* %12, align 4
  br label %164

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %66
  %76 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %77 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %76, i32 0, i32 1
  %78 = load %struct.ata_device*, %struct.ata_device** %77, align 8
  %79 = call i64 @ata_ncq_enabled(%struct.ata_device* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %75
  %82 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %83 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %82, i32 0, i32 1
  %84 = load %struct.ata_device*, %struct.ata_device** %83, align 8
  %85 = call i64 @ata_fpdma_zac_mgmt_out_supported(%struct.ata_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %81
  %88 = load i32, i32* @ATA_PROT_NCQ_NODATA, align 4
  %89 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %90 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %89, i32 0, i32 13
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @ATA_CMD_NCQ_NON_DATA, align 4
  %92 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %93 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @ATA_SUBCMD_NCQ_NON_DATA_ZAC_MGMT_OUT, align 4
  %95 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %96 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %98 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 3
  %101 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %102 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = shl i32 %104, 8
  %106 = or i32 %103, %105
  %107 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %108 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %122

109:                                              ; preds = %81, %75
  %110 = load i32, i32* @ATA_PROT_NODATA, align 4
  %111 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %112 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %111, i32 0, i32 13
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @ATA_CMD_ZAC_MGMT_OUT, align 4
  %114 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %115 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %114, i32 0, i32 12
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %118 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %121 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %109, %87
  %123 = load i32, i32* %10, align 4
  %124 = ashr i32 %123, 16
  %125 = and i32 %124, 255
  %126 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %127 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %10, align 4
  %129 = ashr i32 %128, 8
  %130 = and i32 %129, 255
  %131 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %132 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, 255
  %135 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %136 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %10, align 4
  %138 = ashr i32 %137, 40
  %139 = and i32 %138, 255
  %140 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %141 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %140, i32 0, i32 7
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %10, align 4
  %143 = ashr i32 %142, 32
  %144 = and i32 %143, 255
  %145 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %146 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %10, align 4
  %148 = ashr i32 %147, 24
  %149 = and i32 %148, 255
  %150 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %151 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %150, i32 0, i32 9
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @ATA_LBA, align 4
  %153 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %154 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %153, i32 0, i32 11
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %156 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %161 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  store i32 0, i32* %2, align 4
  br label %178

164:                                              ; preds = %73, %52, %31
  %165 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %166 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %165, i32 0, i32 1
  %167 = load %struct.ata_device*, %struct.ata_device** %166, align 8
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @ata_scsi_set_invalid_field(%struct.ata_device* %167, %struct.scsi_cmnd* %168, i32 %169, i32 255)
  store i32 1, i32* %2, align 4
  br label %178

171:                                              ; preds = %58
  %172 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %173 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %172, i32 0, i32 1
  %174 = load %struct.ata_device*, %struct.ata_device** %173, align 8
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %176 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %177 = call i32 @ata_scsi_set_sense(%struct.ata_device* %174, %struct.scsi_cmnd* %175, i32 %176, i32 26, i32 0)
  store i32 1, i32* %2, align 4
  br label %178

178:                                              ; preds = %171, %164, %122
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scsi_16_lba_len(i32*, i32*, i64*) #1

declare dso_local i64 @ata_ncq_enabled(%struct.ata_device*) #1

declare dso_local i64 @ata_fpdma_zac_mgmt_out_supported(%struct.ata_device*) #1

declare dso_local i32 @ata_scsi_set_invalid_field(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
