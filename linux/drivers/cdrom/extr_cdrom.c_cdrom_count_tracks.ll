; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_count_tracks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_count_tracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.cdrom_device_info*, i32, %struct.cdrom_tochdr*)* }
%struct.cdrom_tochdr = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8* }
%struct.cdrom_tocentry = type { i32, i32, i32, i32, i32 }

@CD_COUNT_TRACKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"entering cdrom_count_tracks\0A\00", align 1
@CDROMREADTOCHDR = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@CDS_NO_DISC = common dso_local global i8* null, align 8
@CDS_NO_INFO = common dso_local global i8* null, align 8
@CDROM_MSF = common dso_local global i32 0, align 4
@CDROMREADTOCENTRY = common dso_local global i32 0, align 4
@CDROM_DATA_TRACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"track %d: format=%d, ctrl=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"disc has %d tracks: %d=audio %d=data %d=Cd-I %d=XA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdrom_device_info*, %struct.TYPE_5__*)* @cdrom_count_tracks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdrom_count_tracks(%struct.cdrom_device_info* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.cdrom_tochdr, align 4
  %6 = alloca %struct.cdrom_tocentry, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  store i8* null, i8** %18, align 8
  %19 = load i32, i32* @CD_COUNT_TRACKS, align 4
  %20 = call i32 (i32, i8*, ...) @cd_dbg(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %22 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.cdrom_device_info*, i32, %struct.cdrom_tochdr*)*, i32 (%struct.cdrom_device_info*, i32, %struct.cdrom_tochdr*)** %24, align 8
  %26 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %27 = load i32, i32* @CDROMREADTOCHDR, align 4
  %28 = call i32 %25(%struct.cdrom_device_info* %26, i32 %27, %struct.cdrom_tochdr* %5)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ENOMEDIUM, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8*, i8** @CDS_NO_DISC, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  br label %44

40:                                               ; preds = %31
  %41 = load i8*, i8** @CDS_NO_INFO, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  br label %136

45:                                               ; preds = %2
  %46 = load i32, i32* @CDROM_MSF, align 4
  %47 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %116, %45
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %5, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %51, %53
  br i1 %54, label %55, label %119

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %59 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.cdrom_device_info*, i32, %struct.cdrom_tochdr*)*, i32 (%struct.cdrom_device_info*, i32, %struct.cdrom_tochdr*)** %61, align 8
  %63 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %64 = load i32, i32* @CDROMREADTOCENTRY, align 4
  %65 = bitcast %struct.cdrom_tocentry* %6 to %struct.cdrom_tochdr*
  %66 = call i32 %62(%struct.cdrom_device_info* %63, i32 %64, %struct.cdrom_tochdr* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load i8*, i8** @CDS_NO_INFO, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  br label %136

72:                                               ; preds = %55
  %73 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CDROM_DATA_TRACK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 16
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %102

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %101

96:                                               ; preds = %87
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %82
  br label %108

103:                                              ; preds = %72
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %102
  %109 = load i32, i32* @CD_COUNT_TRACKS, align 4
  %110 = load i32, i32* %8, align 4
  %111 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @cd_dbg(i32 %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %112, i32 %114)
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %50

119:                                              ; preds = %50
  %120 = load i32, i32* @CD_COUNT_TRACKS, align 4
  %121 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %5, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i32, i8*, ...) @cd_dbg(i32 %120, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %125, i32 %128, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %119, %68, %44
  ret void
}

declare dso_local i32 @cd_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
