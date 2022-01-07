; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsiop_inq_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsiop_inq_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_scsi_args = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ata_scsiop_inq_std.versions = internal constant [6 x i32] [i32 0, i32 96, i32 3, i32 32, i32 3, i32 0], align 16
@ata_scsiop_inq_std.versions_zbc = internal constant [8 x i32] [i32 0, i32 160, i32 6, i32 0, i32 5, i32 192, i32 96, i32 36], align 16
@TYPE_DISK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_PFLAG_EXTERNAL = common dso_local global i32 0, align 4
@ATA_DEV_ZAC = common dso_local global i64 0, align 8
@TYPE_ZBC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ATA     \00", align 1
@ATA_ID_PROD = common dso_local global i64 0, align 8
@ATA_ID_FW_REV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"n/a \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_scsi_args*, i32*)* @ata_scsiop_inq_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsiop_inq_std(%struct.ata_scsi_args* %0, i32* %1) #0 {
  %3 = alloca %struct.ata_scsi_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8 x i32], align 16
  store %struct.ata_scsi_args* %0, %struct.ata_scsi_args** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %7 = load i32, i32* @TYPE_DISK, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 5, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 2, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 91, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 2, i32* %14, align 4
  %15 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %17 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ata_id_removable(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %2
  %22 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %23 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATA_PFLAG_EXTERNAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21, %2
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, 128
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %34, %21
  %39 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %40 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ATA_DEV_ZAC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @TYPE_ZBC, align 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 %47, i32* %48, align 16
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 7, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %53 = call i32 (i32*, ...) @memcpy(i32* %51, i32* %52, i64 32)
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 8
  %56 = call i32 (i32*, ...) @memcpy(i32* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %57 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %58 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 16
  %62 = load i64, i64* @ATA_ID_PROD, align 8
  %63 = call i32 @ata_id_string(i32 %59, i32* %61, i64 %62, i32 16)
  %64 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %65 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 32
  %69 = load i64, i64* @ATA_ID_FW_REV, align 8
  %70 = add nsw i64 %69, 2
  %71 = call i32 @ata_id_string(i32 %66, i32* %68, i64 %70, i32 4)
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 32
  %74 = call i64 @strncmp(i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %50
  %77 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %78 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 32
  %82 = load i64, i64* @ATA_ID_FW_REV, align 8
  %83 = call i32 @ata_id_string(i32 %79, i32* %81, i64 %82, i32 4)
  br label %84

84:                                               ; preds = %76, %50
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 32
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 32
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %94, label %98

94:                                               ; preds = %89, %84
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 32
  %97 = call i32 (i32*, ...) @memcpy(i32* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %98

98:                                               ; preds = %94, %89
  %99 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %100 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @ata_id_zoned_cap(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %98
  %105 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %106 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ATA_DEV_ZAC, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %104, %98
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 58
  %115 = call i32 (i32*, ...) @memcpy(i32* %114, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ata_scsiop_inq_std.versions_zbc, i64 0, i64 0), i64 32)
  br label %120

116:                                              ; preds = %104
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 58
  %119 = call i32 (i32*, ...) @memcpy(i32* %118, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ata_scsiop_inq_std.versions, i64 0, i64 0), i64 24)
  br label %120

120:                                              ; preds = %116, %112
  ret i32 0
}

declare dso_local i32 @VPRINTK(i8*) #1

declare dso_local i64 @ata_id_removable(i32) #1

declare dso_local i32 @memcpy(i32*, ...) #1

declare dso_local i32 @ata_id_string(i32, i32*, i64, i32) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i64 @ata_id_zoned_cap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
