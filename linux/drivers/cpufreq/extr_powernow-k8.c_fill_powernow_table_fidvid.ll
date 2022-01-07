; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_fill_powernow_table_fidvid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_fill_powernow_table_fidvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.cpufreq_frequency_table = type { i32, i32 }

@EXT_FID_MASK = common dso_local global i32 0, align 4
@VID_SHIFT = common dso_local global i32 0, align 4
@EXT_VID_MASK = common dso_local global i32 0, align 4
@FID_MASK = common dso_local global i32 0, align 4
@VID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"   %d : fid 0x%x, vid 0x%x\0A\00", align 1
@MAX_FREQ = common dso_local global i32 0, align 4
@MIN_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid freq %u kHz, ignoring\0A\00", align 1
@VID_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid vid %u, ignoring\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"invalid freq entries %u kHz vs. %u kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*, %struct.cpufreq_frequency_table*)* @fill_powernow_table_fidvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_powernow_table_fidvid(%struct.powernow_k8_data* %0, %struct.cpufreq_frequency_table* %1) #0 {
  %3 = alloca %struct.powernow_k8_data*, align 8
  %4 = alloca %struct.cpufreq_frequency_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %3, align 8
  store %struct.cpufreq_frequency_table* %1, %struct.cpufreq_frequency_table** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %138, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %15 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %141

19:                                               ; preds = %12
  %20 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %21 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %26 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @EXT_FID_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @VID_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = load i32, i32* @EXT_VID_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  br label %60

42:                                               ; preds = %19
  %43 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %44 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @FID_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @VID_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32, i32* @VID_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %42, %24
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %65, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %70, i64 %72
  %74 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @find_khz_freq_from_fid(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %78, i64 %80
  %82 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %81, i32 0, i32 1
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @MAX_FREQ, align 4
  %85 = mul nsw i32 %84, 1000
  %86 = icmp sgt i32 %83, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %60
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @MIN_FREQ, align 4
  %90 = mul nsw i32 %89, 1000
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %87, %60
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @invalidate_entry(%struct.cpufreq_frequency_table* %95, i32 %96)
  br label %138

98:                                               ; preds = %87
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @VID_OFF, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @invalidate_entry(%struct.cpufreq_frequency_table* %105, i32 %106)
  br label %138

108:                                              ; preds = %98
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %111 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 1000
  %120 = icmp ne i32 %109, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %108
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %124 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %131, 1000
  %133 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %132)
  %134 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @invalidate_entry(%struct.cpufreq_frequency_table* %134, i32 %135)
  br label %138

137:                                              ; preds = %108
  br label %138

138:                                              ; preds = %137, %121, %102, %92
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %12

141:                                              ; preds = %12
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @find_khz_freq_from_fid(i32) #1

declare dso_local i32 @invalidate_entry(%struct.cpufreq_frequency_table*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
