; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_dump_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_dump_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ata%u: status=0x%02x { \00", align 1
@ATA_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Busy }\0A\00", align 1
@ATA_DRDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"DriveReady \00", align 1
@ATA_DF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"DeviceFault \00", align 1
@ATA_DSC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"SeekComplete \00", align 1
@ATA_DRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"DataRequest \00", align 1
@ATA_CORR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"CorrectedError \00", align 1
@ATA_SENSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"Sense \00", align 1
@ATA_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"Error \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"ata%u: error=0x%02x { \00", align 1
@ATA_ABORTED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"DriveStatusError \00", align 1
@ATA_ICRC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"BadCRC \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Sector \00", align 1
@ATA_UNC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"UncorrectableError \00", align 1
@ATA_IDNF = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"SectorIdNotFound \00", align 1
@ATA_TRK0NF = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"TrackZeroNotFound \00", align 1
@ATA_AMNF = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [18 x i8] c"AddrMarkNotFound \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ata_taskfile*)* @ata_dump_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dump_status(i32 %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %7 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %8 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %11 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ATA_BUSY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %131

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ATA_DRDY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ATA_DF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ATA_DSC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ATA_DRQ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ATA_CORR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ATA_SENSE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ATA_ERR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  %72 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %130

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @ATA_ABORTED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %75
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @ATA_ICRC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @ATA_ABORTED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %99

97:                                               ; preds = %90
  %98 = call i32 @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %95
  br label %100

100:                                              ; preds = %99, %85
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @ATA_UNC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %100
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @ATA_IDNF, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @ATA_TRK0NF, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 @pr_cont(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @ATA_AMNF, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = call i32 @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %121
  %129 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %71
  br label %131

131:                                              ; preds = %130, %20
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
