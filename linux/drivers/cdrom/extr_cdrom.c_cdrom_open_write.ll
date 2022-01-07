; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_open_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_open_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }

@CDC_MO_DRIVE = common dso_local global i32 0, align 4
@CDC_MRW = common dso_local global i32 0, align 4
@CDC_MRW_W = common dso_local global i32 0, align 4
@CDC_RAM = common dso_local global i32 0, align 4
@CDC_DVD_RAM = common dso_local global i32 0, align 4
@CDC_CD_R = common dso_local global i32 0, align 4
@CDC_CD_RW = common dso_local global i32 0, align 4
@CDC_DVD = common dso_local global i32 0, align 4
@CDC_DVD_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*)* @cdrom_open_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_open_write(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca %struct.cdrom_device_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %2, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %3, align 4
  %7 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %8 = call i32 @cdrom_is_mrw(%struct.cdrom_device_info* %7, i32* %4)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i32, i32* @CDC_MO_DRIVE, align 4
  %13 = call i64 @CDROM_CAN(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %19

16:                                               ; preds = %11
  %17 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %18 = call i32 @cdrom_is_random_writable(%struct.cdrom_device_info* %17, i32* %5)
  br label %19

19:                                               ; preds = %16, %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* @CDC_MRW, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %26 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load i32, i32* @CDC_MRW, align 4
  %31 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %32 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* @CDC_MRW_W, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %42 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %51

45:                                               ; preds = %35
  %46 = load i32, i32* @CDC_MRW_W, align 4
  %47 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %48 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* @CDC_RAM, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %58 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %67

61:                                               ; preds = %51
  %62 = load i32, i32* @CDC_RAM, align 4
  %63 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %64 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %54
  %68 = load i32, i32* @CDC_MRW_W, align 4
  %69 = call i64 @CDROM_CAN(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %73 = call i32 @cdrom_mrw_open_write(%struct.cdrom_device_info* %72)
  store i32 %73, i32* %6, align 4
  br label %118

74:                                               ; preds = %67
  %75 = load i32, i32* @CDC_DVD_RAM, align 4
  %76 = call i64 @CDROM_CAN(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %80 = call i32 @cdrom_dvdram_open_write(%struct.cdrom_device_info* %79)
  store i32 %80, i32* %6, align 4
  br label %117

81:                                               ; preds = %74
  %82 = load i32, i32* @CDC_RAM, align 4
  %83 = call i64 @CDROM_CAN(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i32, i32* @CDC_CD_R, align 4
  %87 = load i32, i32* @CDC_CD_RW, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @CDC_DVD, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @CDC_DVD_R, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @CDC_MRW, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @CDC_MO_DRIVE, align 4
  %96 = or i32 %94, %95
  %97 = call i64 @CDROM_CAN(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %85
  %100 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %101 = call i32 @cdrom_ram_open_write(%struct.cdrom_device_info* %100)
  store i32 %101, i32* %6, align 4
  br label %116

102:                                              ; preds = %85, %81
  %103 = load i32, i32* @CDC_MO_DRIVE, align 4
  %104 = call i64 @CDROM_CAN(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %108 = call i32 @mo_open_write(%struct.cdrom_device_info* %107)
  store i32 %108, i32* %6, align 4
  br label %115

109:                                              ; preds = %102
  %110 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %111 = call i32 @cdrom_is_dvd_rw(%struct.cdrom_device_info* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %109
  br label %115

115:                                              ; preds = %114, %106
  br label %116

116:                                              ; preds = %115, %99
  br label %117

117:                                              ; preds = %116, %78
  br label %118

118:                                              ; preds = %117, %71
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @cdrom_is_mrw(%struct.cdrom_device_info*, i32*) #1

declare dso_local i64 @CDROM_CAN(i32) #1

declare dso_local i32 @cdrom_is_random_writable(%struct.cdrom_device_info*, i32*) #1

declare dso_local i32 @cdrom_mrw_open_write(%struct.cdrom_device_info*) #1

declare dso_local i32 @cdrom_dvdram_open_write(%struct.cdrom_device_info*) #1

declare dso_local i32 @cdrom_ram_open_write(%struct.cdrom_device_info*) #1

declare dso_local i32 @mo_open_write(%struct.cdrom_device_info*) #1

declare dso_local i32 @cdrom_is_dvd_rw(%struct.cdrom_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
