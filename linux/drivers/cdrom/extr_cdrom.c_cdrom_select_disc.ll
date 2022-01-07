; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_select_disc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_select_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}*, i32 (%struct.cdrom_device_info*, i32, i32)* }
%struct.cdrom_changer_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CD_CHANGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"entering cdrom_select_disc()\0A\00", align 1
@CDC_SELECT_DISC = common dso_local global i32 0, align 4
@EDRIVE_CANT_DO_THIS = common dso_local global i32 0, align 4
@CDSL_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CDSL_CURRENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @cdrom_select_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_select_disc(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdrom_changer_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @CD_CHANGER, align 4
  %10 = call i32 @cd_dbg(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @CDC_SELECT_DISC, align 4
  %12 = call i32 @CDROM_CAN(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EDRIVE_CANT_DO_THIS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %111

17:                                               ; preds = %2
  %18 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %19 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (%struct.cdrom_device_info*, i32, i32)*, i32 (%struct.cdrom_device_info*, i32, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.cdrom_device_info*, i32, i32)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %26 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (%struct.cdrom_device_info*, i32, i32)*, i32 (%struct.cdrom_device_info*, i32, i32)** %28, align 8
  %30 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %29(%struct.cdrom_device_info* %30, i32 0, i32 %31)
  br label %43

33:                                               ; preds = %17
  %34 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %35 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.cdrom_device_info*, i32)**
  %39 = load i32 (%struct.cdrom_device_info*, i32)*, i32 (%struct.cdrom_device_info*, i32)** %38, align 8
  %40 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 %39(%struct.cdrom_device_info* %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %24
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @CDSL_NONE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %49 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %48, i32 0, i32 0
  store i32 3, i32* %49, align 8
  %50 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %51 = call i32 @cdrom_load_unload(%struct.cdrom_device_info* %50, i32 -1)
  store i32 %51, i32* %3, align 4
  br label %111

52:                                               ; preds = %43
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.cdrom_changer_info* @kmalloc(i32 4, i32 %53)
  store %struct.cdrom_changer_info* %54, %struct.cdrom_changer_info** %6, align 8
  %55 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %56 = icmp ne %struct.cdrom_changer_info* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %111

60:                                               ; preds = %52
  %61 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %62 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %63 = call i32 @cdrom_read_mech_status(%struct.cdrom_device_info* %61, %struct.cdrom_changer_info* %62)
  store i32 %63, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %67 = call i32 @kfree(%struct.cdrom_changer_info* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %111

69:                                               ; preds = %60
  %70 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %71 = getelementptr inbounds %struct.cdrom_changer_info, %struct.cdrom_changer_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  %74 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %75 = call i32 @kfree(%struct.cdrom_changer_info* %74)
  %76 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %77 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %85, label %80

80:                                               ; preds = %69
  %81 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %82 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80, %69
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @CDSL_CURRENT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %111

91:                                               ; preds = %85
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %111

94:                                               ; preds = %80
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @CDSL_CURRENT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %102 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %101, i32 0, i32 0
  store i32 3, i32* %102, align 8
  %103 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @cdrom_load_unload(%struct.cdrom_device_info* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %111

109:                                              ; preds = %100
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %107, %91, %89, %65, %57, %47, %14
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @cd_dbg(i32, i8*) #1

declare dso_local i32 @CDROM_CAN(i32) #1

declare dso_local i32 @cdrom_load_unload(%struct.cdrom_device_info*, i32) #1

declare dso_local %struct.cdrom_changer_info* @kmalloc(i32, i32) #1

declare dso_local i32 @cdrom_read_mech_status(%struct.cdrom_device_info*, %struct.cdrom_changer_info*) #1

declare dso_local i32 @kfree(%struct.cdrom_changer_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
