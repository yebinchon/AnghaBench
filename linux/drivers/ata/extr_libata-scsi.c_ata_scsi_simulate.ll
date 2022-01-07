; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_simulate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_simulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32 }
%struct.scsi_cmnd = type { i32*, i32, i32 (%struct.scsi_cmnd*)* }
%struct.ata_scsi_args = type { %struct.scsi_cmnd*, i32, %struct.ata_device* }

@ata_scsiop_inq_std = common dso_local global i32 0, align 4
@ata_scsiop_inq_00 = common dso_local global i32 0, align 4
@ata_scsiop_inq_80 = common dso_local global i32 0, align 4
@ata_scsiop_inq_83 = common dso_local global i32 0, align 4
@ata_scsiop_inq_89 = common dso_local global i32 0, align 4
@ata_scsiop_inq_b0 = common dso_local global i32 0, align 4
@ata_scsiop_inq_b1 = common dso_local global i32 0, align 4
@ata_scsiop_inq_b2 = common dso_local global i32 0, align 4
@ATA_DFLAG_ZAC = common dso_local global i32 0, align 4
@ata_scsiop_inq_b6 = common dso_local global i32 0, align 4
@ata_scsiop_mode_sense = common dso_local global i32 0, align 4
@ata_scsiop_read_cap = common dso_local global i32 0, align 4
@SAI_READ_CAPACITY_16 = common dso_local global i32 0, align 4
@ata_scsiop_report_luns = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@MI_REPORT_SUPPORTED_OPERATION_CODES = common dso_local global i32 0, align 4
@ata_scsiop_maint_in = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_scsi_simulate(%struct.ata_device* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_scsi_args, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %12 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %5, i32 0, i32 2
  store %struct.ata_device* %11, %struct.ata_device** %12, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %5, i32 0, i32 0
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %18, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %153 [
    i32 141, label %22
    i32 139, label %84
    i32 138, label %84
    i32 137, label %87
    i32 130, label %90
    i32 136, label %105
    i32 135, label %108
    i32 129, label %116
    i32 134, label %116
    i32 132, label %116
    i32 133, label %116
    i32 128, label %116
    i32 131, label %117
    i32 140, label %139
  ]

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = call i32 @ata_scsi_set_invalid_field(%struct.ata_device* %29, %struct.scsi_cmnd* %30, i32 1, i32 255)
  br label %83

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ata_scsiop_inq_std, align 4
  %40 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %39)
  br label %82

41:                                               ; preds = %32
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %77 [
    i32 0, label %45
    i32 128, label %48
    i32 131, label %51
    i32 137, label %54
    i32 176, label %57
    i32 177, label %60
    i32 178, label %63
    i32 182, label %66
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @ata_scsiop_inq_00, align 4
  %47 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %46)
  br label %81

48:                                               ; preds = %41
  %49 = load i32, i32* @ata_scsiop_inq_80, align 4
  %50 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %49)
  br label %81

51:                                               ; preds = %41
  %52 = load i32, i32* @ata_scsiop_inq_83, align 4
  %53 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %52)
  br label %81

54:                                               ; preds = %41
  %55 = load i32, i32* @ata_scsiop_inq_89, align 4
  %56 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %55)
  br label %81

57:                                               ; preds = %41
  %58 = load i32, i32* @ata_scsiop_inq_b0, align 4
  %59 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %58)
  br label %81

60:                                               ; preds = %41
  %61 = load i32, i32* @ata_scsiop_inq_b1, align 4
  %62 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %61)
  br label %81

63:                                               ; preds = %41
  %64 = load i32, i32* @ata_scsiop_inq_b2, align 4
  %65 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %64)
  br label %81

66:                                               ; preds = %41
  %67 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %68 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ATA_DFLAG_ZAC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @ata_scsiop_inq_b6, align 4
  %75 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %74)
  br label %81

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %41, %76
  %78 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %80 = call i32 @ata_scsi_set_invalid_field(%struct.ata_device* %78, %struct.scsi_cmnd* %79, i32 2, i32 255)
  br label %81

81:                                               ; preds = %77, %73, %63, %60, %57, %54, %51, %48, %45
  br label %82

82:                                               ; preds = %81, %38
  br label %83

83:                                               ; preds = %82, %28
  br label %158

84:                                               ; preds = %2, %2
  %85 = load i32, i32* @ata_scsiop_mode_sense, align 4
  %86 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %85)
  br label %158

87:                                               ; preds = %2
  %88 = load i32, i32* @ata_scsiop_read_cap, align 4
  %89 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %88)
  br label %158

90:                                               ; preds = %2
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 31
  %95 = load i32, i32* @SAI_READ_CAPACITY_16, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @ata_scsiop_read_cap, align 4
  %99 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %98)
  br label %104

100:                                              ; preds = %90
  %101 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %103 = call i32 @ata_scsi_set_invalid_field(%struct.ata_device* %101, %struct.scsi_cmnd* %102, i32 1, i32 255)
  br label %104

104:                                              ; preds = %100, %97
  br label %158

105:                                              ; preds = %2
  %106 = load i32, i32* @ata_scsiop_report_luns, align 4
  %107 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %106)
  br label %158

108:                                              ; preds = %2
  %109 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %111 = call i32 @ata_scsi_set_sense(%struct.ata_device* %109, %struct.scsi_cmnd* %110, i32 0, i32 0, i32 0)
  %112 = load i32, i32* @DRIVER_SENSE, align 4
  %113 = shl i32 %112, 24
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  br label %158

116:                                              ; preds = %2, %2, %2, %2, %2
  br label %158

117:                                              ; preds = %2
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, -9
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 4
  br i1 %123, label %134, label %124

124:                                              ; preds = %117
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129, %124, %117
  %135 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %137 = call i32 @ata_scsi_set_invalid_field(%struct.ata_device* %135, %struct.scsi_cmnd* %136, i32 1, i32 255)
  br label %138

138:                                              ; preds = %134, %129
  br label %158

139:                                              ; preds = %2
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MI_REPORT_SUPPORTED_OPERATION_CODES, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* @ata_scsiop_maint_in, align 4
  %147 = call i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args* %5, i32 %146)
  br label %152

148:                                              ; preds = %139
  %149 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %151 = call i32 @ata_scsi_set_invalid_field(%struct.ata_device* %149, %struct.scsi_cmnd* %150, i32 1, i32 255)
  br label %152

152:                                              ; preds = %148, %145
  br label %158

153:                                              ; preds = %2
  %154 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %156 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %157 = call i32 @ata_scsi_set_sense(%struct.ata_device* %154, %struct.scsi_cmnd* %155, i32 %156, i32 32, i32 0)
  br label %158

158:                                              ; preds = %153, %152, %138, %116, %108, %105, %104, %87, %84, %83
  %159 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %160 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %159, i32 0, i32 2
  %161 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %160, align 8
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %163 = call i32 %161(%struct.scsi_cmnd* %162)
  ret void
}

declare dso_local i32 @ata_scsi_set_invalid_field(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @ata_scsi_rbuf_fill(%struct.ata_scsi_args*, i32) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
