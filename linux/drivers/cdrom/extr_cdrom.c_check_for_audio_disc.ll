; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_check_for_audio_disc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_check_for_audio_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, i32)*, i32 (%struct.cdrom_device_info.1*, i32)* }
%struct.cdrom_device_info.0 = type opaque
%struct.cdrom_device_info.1 = type opaque
%struct.TYPE_3__ = type { i32, i64 }

@CD_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"entering check_for_audio_disc\0A\00", align 1
@CDO_CHECK_TYPE = common dso_local global i32 0, align 4
@CDSL_CURRENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"drive_status=%d\0A\00", align 1
@CDS_TRAY_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"the tray is open...\0A\00", align 1
@CDC_CLOSE_TRAY = common dso_local global i32 0, align 4
@CDO_AUTO_CLOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"trying to close the tray\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"bummer. tried to close tray but failed.\0A\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"bummer. this driver can't close the tray.\0A\00", align 1
@CDS_NO_DISC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"bummer. the tray is still not closed.\0A\00", align 1
@CDS_DISC_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"bummer. disc isn't ready.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"the tray is now closed\0A\00", align 1
@EMEDIUMTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.cdrom_device_ops*)* @check_for_audio_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_audio_disc(%struct.cdrom_device_info* %0, %struct.cdrom_device_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_device_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_device_ops* %1, %struct.cdrom_device_ops** %5, align 8
  %8 = load i32, i32* @CD_OPEN, align 4
  %9 = call i32 (i32, i8*, ...) @cd_dbg(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CDO_CHECK_TYPE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

17:                                               ; preds = %2
  %18 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %19 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.cdrom_device_info.0*, i32)*, i32 (%struct.cdrom_device_info.0*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.cdrom_device_info.0*, i32)* %20, null
  br i1 %21, label %22, label %104

22:                                               ; preds = %17
  %23 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %24 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.cdrom_device_info.0*, i32)*, i32 (%struct.cdrom_device_info.0*, i32)** %24, align 8
  %26 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %27 = bitcast %struct.cdrom_device_info* %26 to %struct.cdrom_device_info.0*
  %28 = load i32, i32* @CDSL_CURRENT, align 4
  %29 = call i32 %25(%struct.cdrom_device_info.0* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @CD_OPEN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, ...) @cd_dbg(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @CDS_TRAY_OPEN, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %103

36:                                               ; preds = %22
  %37 = load i32, i32* @CD_OPEN, align 4
  %38 = call i32 (i32, i8*, ...) @cd_dbg(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @CDC_CLOSE_TRAY, align 4
  %40 = call i64 @CDROM_CAN(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %44 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CDO_AUTO_CLOSE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load i32, i32* @CD_OPEN, align 4
  %51 = call i32 (i32, i8*, ...) @cd_dbg(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %53 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %52, i32 0, i32 1
  %54 = load i32 (%struct.cdrom_device_info.1*, i32)*, i32 (%struct.cdrom_device_info.1*, i32)** %53, align 8
  %55 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %56 = bitcast %struct.cdrom_device_info* %55 to %struct.cdrom_device_info.1*
  %57 = call i32 %54(%struct.cdrom_device_info.1* %56, i32 0)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load i32, i32* @CD_OPEN, align 4
  %62 = call i32 (i32, i8*, ...) @cd_dbg(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @ENOMEDIUM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %121

65:                                               ; preds = %49
  br label %71

66:                                               ; preds = %42, %36
  %67 = load i32, i32* @CD_OPEN, align 4
  %68 = call i32 (i32, i8*, ...) @cd_dbg(i32 %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEDIUM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %121

71:                                               ; preds = %65
  %72 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %73 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %72, i32 0, i32 0
  %74 = load i32 (%struct.cdrom_device_info.0*, i32)*, i32 (%struct.cdrom_device_info.0*, i32)** %73, align 8
  %75 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %76 = bitcast %struct.cdrom_device_info* %75 to %struct.cdrom_device_info.0*
  %77 = load i32, i32* @CDSL_CURRENT, align 4
  %78 = call i32 %74(%struct.cdrom_device_info.0* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @CDS_NO_DISC, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @CDS_TRAY_OPEN, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82, %71
  %87 = load i32, i32* @CD_OPEN, align 4
  %88 = call i32 (i32, i8*, ...) @cd_dbg(i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEDIUM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %121

91:                                               ; preds = %82
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @CDS_DISC_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* @CD_OPEN, align 4
  %97 = call i32 (i32, i8*, ...) @cd_dbg(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %121

100:                                              ; preds = %91
  %101 = load i32, i32* @CD_OPEN, align 4
  %102 = call i32 (i32, i8*, ...) @cd_dbg(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %22
  br label %104

104:                                              ; preds = %103, %17
  %105 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %106 = call i32 @cdrom_count_tracks(%struct.cdrom_device_info* %105, %struct.TYPE_3__* %7)
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %3, align 4
  br label %121

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* @EMEDIUMTYPE, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %121

120:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %117, %110, %95, %86, %66, %60, %16
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @cd_dbg(i32, i8*, ...) #1

declare dso_local i64 @CDROM_CAN(i32) #1

declare dso_local i32 @cdrom_count_tracks(%struct.cdrom_device_info*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
