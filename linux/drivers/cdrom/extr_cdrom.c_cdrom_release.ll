; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i64, i32, i64, i32, i32, %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32, i32 (%struct.cdrom_device_info.0*, i32)*, i32 (%struct.cdrom_device_info.1*)*, i32 (%struct.cdrom_device_info.2*, i32)* }
%struct.cdrom_device_info.0 = type opaque
%struct.cdrom_device_info.1 = type opaque
%struct.cdrom_device_info.2 = type opaque

@CD_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"entering cdrom_release\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Use count for \22/dev/%s\22 now zero\0A\00", align 1
@CDC_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Unlocking door!\0A\00", align 1
@CDO_USE_FFLAGS = common dso_local global i32 0, align 4
@FMODE_NDELAY = common dso_local global i32 0, align 4
@CDC_RAM = common dso_local global i32 0, align 4
@CDO_AUTO_EJECT = common dso_local global i32 0, align 4
@CDC_OPEN_TRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdrom_release(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %8 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %7, i32 0, i32 5
  %9 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %8, align 8
  store %struct.cdrom_device_ops* %9, %struct.cdrom_device_ops** %5, align 8
  %10 = load i32, i32* @CD_CLOSE, align 4
  %11 = call i32 (i32, i8*, ...) @cd_dbg(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %13 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %18 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %23 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = load i32, i32* @CD_CLOSE, align 4
  %28 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %29 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @cd_dbg(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %33 = call i32 @cdrom_dvd_rw_close_write(%struct.cdrom_device_info* %32)
  %34 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %35 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CDC_LOCK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %26
  %41 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %42 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @CD_CLOSE, align 4
  %47 = call i32 (i32, i8*, ...) @cd_dbg(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %49 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %48, i32 0, i32 3
  %50 = load i32 (%struct.cdrom_device_info.2*, i32)*, i32 (%struct.cdrom_device_info.2*, i32)** %49, align 8
  %51 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %52 = bitcast %struct.cdrom_device_info* %51 to %struct.cdrom_device_info.2*
  %53 = call i32 %50(%struct.cdrom_device_info.2* %52, i32 0)
  br label %54

54:                                               ; preds = %45, %40, %26
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %57 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CDO_USE_FFLAGS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @FMODE_NDELAY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %62, %55
  %69 = phi i1 [ true, %55 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @CDC_RAM, align 4
  %72 = call i64 @CDROM_CAN(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %76 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %81 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %86 = call i32 @cdrom_close_write(%struct.cdrom_device_info* %85)
  br label %87

87:                                               ; preds = %84, %79, %74, %68
  %88 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %89 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %88, i32 0, i32 2
  %90 = load i32 (%struct.cdrom_device_info.1*)*, i32 (%struct.cdrom_device_info.1*)** %89, align 8
  %91 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %92 = bitcast %struct.cdrom_device_info* %91 to %struct.cdrom_device_info.1*
  %93 = call i32 %90(%struct.cdrom_device_info.1* %92)
  %94 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %95 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %87
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %103 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CDO_AUTO_EJECT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %101
  %109 = load i32, i32* @CDC_OPEN_TRAY, align 4
  %110 = call i64 @CDROM_CAN(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %114 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %113, i32 0, i32 1
  %115 = load i32 (%struct.cdrom_device_info.0*, i32)*, i32 (%struct.cdrom_device_info.0*, i32)** %114, align 8
  %116 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %117 = bitcast %struct.cdrom_device_info* %116 to %struct.cdrom_device_info.0*
  %118 = call i32 %115(%struct.cdrom_device_info.0* %117, i32 1)
  br label %119

119:                                              ; preds = %112, %108, %101, %98
  br label %120

120:                                              ; preds = %119, %87
  ret void
}

declare dso_local i32 @cd_dbg(i32, i8*, ...) #1

declare dso_local i32 @cdrom_dvd_rw_close_write(%struct.cdrom_device_info*) #1

declare dso_local i64 @CDROM_CAN(i32) #1

declare dso_local i32 @cdrom_close_write(%struct.cdrom_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
