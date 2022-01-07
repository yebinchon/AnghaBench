; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_atapi_qc_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_atapi_qc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, i64*, %struct.scsi_cmnd*, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.scsi_cmnd = type { i32*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"ENTER, err_mask 0x%X\0A\00", align 1
@ATA_QCFLAG_SENSE_VALID = common dso_local global i32 0, align 4
@ALLOW_MEDIUM_REMOVAL = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i8* null, align 8
@AC_ERR_DEV = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @atapi_qc_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_qc_complete(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 3
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  store %struct.scsi_cmnd* %7, %struct.scsi_cmnd** %3, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @VPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 5
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ true, %21 ], [ %30, %24 ]
  br label %33

33:                                               ; preds = %31, %1
  %34 = phi i1 [ false, %1 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %33
  %39 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %40 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %47 = call i32 @ata_gen_passthru_sense(%struct.ata_queued_cmd* %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %50 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ALLOW_MEDIUM_REMOVAL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %58 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %57, i32 0, i32 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %65 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %64, i32 0, i32 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %56, %48
  %71 = load i8*, i8** @SAM_STAT_CHECK_CONDITION, align 8
  %72 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %73 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %72, i32 0, i32 3
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %73, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 1
  store i8* %71, i8** %75, align 8
  %76 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %77 = call i32 @ata_qc_done(%struct.ata_queued_cmd* %76)
  br label %124

78:                                               ; preds = %33
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @AC_ERR_DEV, align 4
  %81 = and i32 %79, %80
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i8*, i8** @SAM_STAT_CHECK_CONDITION, align 8
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %89 = call i32 @atapi_request_sense(%struct.ata_queued_cmd* %88)
  br label %124

90:                                               ; preds = %78
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %96 = call i32 @ata_gen_passthru_sense(%struct.ata_queued_cmd* %95)
  br label %120

97:                                               ; preds = %90
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @INQUIRY, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %97
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %107 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 3
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %115 = call i32 @atapi_fixup_inquiry(%struct.scsi_cmnd* %114)
  br label %116

116:                                              ; preds = %113, %105, %97
  %117 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %119 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %94
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %123 = call i32 @ata_qc_done(%struct.ata_queued_cmd* %122)
  br label %124

124:                                              ; preds = %121, %84, %70
  ret void
}

declare dso_local i32 @VPRINTK(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_gen_passthru_sense(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_qc_done(%struct.ata_queued_cmd*) #1

declare dso_local i32 @atapi_request_sense(%struct.ata_queued_cmd*) #1

declare dso_local i32 @atapi_fixup_inquiry(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
