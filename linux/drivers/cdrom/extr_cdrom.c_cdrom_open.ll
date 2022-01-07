; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, i32)*, i32 (%struct.cdrom_device_info*)*, i32 (%struct.cdrom_device_info*, i32)* }
%struct.block_device = type { i32 }

@CD_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"entering cdrom_open\0A\00", align 1
@FMODE_NDELAY = common dso_local global i32 0, align 4
@CDO_USE_FFLAGS = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@CDC_RAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Use count for \22/dev/%s\22 now %d\0A\00", align 1
@CDC_LOCK = common dso_local global i32 0, align 4
@CDO_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"door unlocked\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_open(%struct.cdrom_device_info* %0, %struct.block_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_info*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @CD_OPEN, align 4
  %10 = call i32 (i32, i8*, ...) @cd_dbg(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %12 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @FMODE_NDELAY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %21 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CDO_USE_FFLAGS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %28 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.cdrom_device_info*, i32)*, i32 (%struct.cdrom_device_info*, i32)** %30, align 8
  %32 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %33 = call i32 %31(%struct.cdrom_device_info* %32, i32 1)
  store i32 %33, i32* %8, align 4
  br label %63

34:                                               ; preds = %19, %3
  %35 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %36 = call i32 @open_for_data(%struct.cdrom_device_info* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %105

40:                                               ; preds = %34
  %41 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %42 = call i32 @cdrom_mmc3_profile(%struct.cdrom_device_info* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @FMODE_WRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load i32, i32* @EROFS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  %50 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %51 = call i64 @cdrom_open_write(%struct.cdrom_device_info* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %76

54:                                               ; preds = %47
  %55 = load i32, i32* @CDC_RAM, align 4
  %56 = call i64 @CDROM_CAN(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %76

59:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  %60 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %61 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %40
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %105

67:                                               ; preds = %63
  %68 = load i32, i32* @CD_OPEN, align 4
  %69 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %70 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %73 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @cd_dbg(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74)
  store i32 0, i32* %4, align 4
  br label %111

76:                                               ; preds = %58, %53
  %77 = load i32, i32* @CDC_LOCK, align 4
  %78 = call i64 @CDROM_CAN(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %82 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CDO_LOCK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %89 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32 (%struct.cdrom_device_info*, i32)*, i32 (%struct.cdrom_device_info*, i32)** %91, align 8
  %93 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %94 = call i32 %92(%struct.cdrom_device_info* %93, i32 0)
  %95 = load i32, i32* @CD_OPEN, align 4
  %96 = call i32 (i32, i8*, ...) @cd_dbg(i32 %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %87, %80, %76
  %98 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %99 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32 (%struct.cdrom_device_info*)*, i32 (%struct.cdrom_device_info*)** %101, align 8
  %103 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %104 = call i32 %102(%struct.cdrom_device_info* %103)
  br label %105

105:                                              ; preds = %97, %66, %39
  %106 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %107 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %105, %67
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @cd_dbg(i32, i8*, ...) #1

declare dso_local i32 @open_for_data(%struct.cdrom_device_info*) #1

declare dso_local i32 @cdrom_mmc3_profile(%struct.cdrom_device_info*) #1

declare dso_local i64 @cdrom_open_write(%struct.cdrom_device_info*) #1

declare dso_local i64 @CDROM_CAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
