; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_link_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_link_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@SCR_CONTROL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ATA_TMOUT_PMP_SRST_WAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"COMRESET failed (errno=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"EXIT, rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_link_hardreset(%struct.ata_link* %0, i64* %1, i64 %2, i32* %3, i32 (%struct.ata_link*)* %4) #0 {
  %6 = alloca %struct.ata_link*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32 (%struct.ata_link*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ata_link* %0, %struct.ata_link** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 (%struct.ata_link*)* %4, i32 (%struct.ata_link*)** %10, align 8
  %14 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %5
  %20 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %21 = call i64 @sata_set_spd_needed(%struct.ata_link* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %25 = load i32, i32* @SCR_CONTROL, align 4
  %26 = call i32 @sata_scr_read(%struct.ata_link* %24, i32 %25, i32* %11)
  store i32 %26, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %120

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 240
  %32 = or i32 %31, 772
  store i32 %32, i32* %11, align 4
  %33 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %34 = load i32, i32* @SCR_CONTROL, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @sata_scr_write(%struct.ata_link* %33, i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %120

39:                                               ; preds = %29
  %40 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %41 = call i32 @sata_set_spd(%struct.ata_link* %40)
  br label %42

42:                                               ; preds = %39, %19
  %43 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %44 = load i32, i32* @SCR_CONTROL, align 4
  %45 = call i32 @sata_scr_read(%struct.ata_link* %43, i32 %44, i32* %11)
  store i32 %45, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %120

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, 240
  %51 = or i32 %50, 769
  store i32 %51, i32* %11, align 4
  %52 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %53 = load i32, i32* @SCR_CONTROL, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @sata_scr_write_flush(%struct.ata_link* %52, i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %120

58:                                               ; preds = %48
  %59 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %60 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ata_msleep(i32 %61, i32 1)
  %63 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @sata_link_resume(%struct.ata_link* %63, i64* %64, i64 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %120

70:                                               ; preds = %58
  %71 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %72 = call i64 @ata_phys_link_offline(%struct.ata_link* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %120

75:                                               ; preds = %70
  %76 = load i32*, i32** %9, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32*, i32** %9, align 8
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %82 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @sata_pmp_supported(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %80
  %87 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %88 = call i64 @ata_is_host_link(%struct.ata_link* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %86
  %91 = load i32 (%struct.ata_link*)*, i32 (%struct.ata_link*)** %10, align 8
  %92 = icmp ne i32 (%struct.ata_link*)* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = load i32, i32* @jiffies, align 4
  %95 = load i32, i32* @ATA_TMOUT_PMP_SRST_WAIT, align 4
  %96 = call i64 @ata_deadline(i32 %94, i32 %95)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @time_after(i64 %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i64, i64* %8, align 8
  store i64 %102, i64* %13, align 8
  br label %103

103:                                              ; preds = %101, %93
  %104 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i32 (%struct.ata_link*)*, i32 (%struct.ata_link*)** %10, align 8
  %107 = call i32 @ata_wait_ready(%struct.ata_link* %104, i64 %105, i32 (%struct.ata_link*)* %106)
  br label %108

108:                                              ; preds = %103, %90
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %120

111:                                              ; preds = %86, %80
  store i32 0, i32* %12, align 4
  %112 = load i32 (%struct.ata_link*)*, i32 (%struct.ata_link*)** %10, align 8
  %113 = icmp ne i32 (%struct.ata_link*)* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i32 (%struct.ata_link*)*, i32 (%struct.ata_link*)** %10, align 8
  %118 = call i32 @ata_wait_ready(%struct.ata_link* %115, i64 %116, i32 (%struct.ata_link*)* %117)
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %114, %111
  br label %120

120:                                              ; preds = %119, %108, %74, %69, %57, %47, %38, %28
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @EAGAIN, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load i32*, i32** %9, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32*, i32** %9, align 8
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %131, %128
  %134 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @ata_link_err(%struct.ata_link* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133, %123, %120
  %138 = load i32, i32* %12, align 4
  %139 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %12, align 4
  ret i32 %140
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i64 @sata_set_spd_needed(%struct.ata_link*) #1

declare dso_local i32 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @sata_scr_write(%struct.ata_link*, i32, i32) #1

declare dso_local i32 @sata_set_spd(%struct.ata_link*) #1

declare dso_local i32 @sata_scr_write_flush(%struct.ata_link*, i32, i32) #1

declare dso_local i32 @ata_msleep(i32, i32) #1

declare dso_local i32 @sata_link_resume(%struct.ata_link*, i64*, i64) #1

declare dso_local i64 @ata_phys_link_offline(%struct.ata_link*) #1

declare dso_local i64 @sata_pmp_supported(i32) #1

declare dso_local i64 @ata_is_host_link(%struct.ata_link*) #1

declare dso_local i64 @ata_deadline(i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ata_wait_ready(%struct.ata_link*, i64, i32 (%struct.ata_link*)*) #1

declare dso_local i32 @ata_link_err(%struct.ata_link*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
