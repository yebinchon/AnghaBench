; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_cpufreq_occ_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_cpufreq_occ_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32*, i8* }
%struct.notifier_block = type { i32 }
%struct.opal_msg = type { i32* }
%struct.opal_occ_msg = type { i32, i64, i8* }

@OPAL_MSG_OCC = common dso_local global i64 0, align 8
@occ_reset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"OCC (On Chip Controller - enforces hard thermal/power limits) Resetting\0A\00", align 1
@throttled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"CPU frequency is throttled for duration\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"OCC Loading, CPU frequency is throttled until OCC is started\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"OCC Active, CPU frequency is no longer throttled\0A\00", align 1
@nr_chips = common dso_local global i32 0, align 4
@chips = common dso_local global %struct.TYPE_2__* null, align 8
@OCC_MAX_THROTTLE_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @powernv_cpufreq_occ_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_cpufreq_occ_msg(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.opal_msg*, align 8
  %9 = alloca %struct.opal_occ_msg, align 8
  %10 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.opal_msg*
  store %struct.opal_msg* %12, %struct.opal_msg** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @OPAL_MSG_OCC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %143

17:                                               ; preds = %3
  %18 = load %struct.opal_msg*, %struct.opal_msg** %8, align 8
  %19 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @be64_to_cpu(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = getelementptr inbounds %struct.opal_occ_msg, %struct.opal_occ_msg* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.opal_occ_msg, %struct.opal_occ_msg* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %142 [
    i32 129, label %28
    i32 130, label %35
    i32 128, label %37
  ]

28:                                               ; preds = %17
  store i32 1, i32* @occ_reset, align 4
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @throttled, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  store i32 1, i32* @throttled, align 4
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  br label %142

35:                                               ; preds = %17
  %36 = call i32 @pr_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %142

37:                                               ; preds = %17
  %38 = load %struct.opal_msg*, %struct.opal_msg** %8, align 8
  %39 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @be64_to_cpu(i32 %42)
  %44 = getelementptr inbounds %struct.opal_occ_msg, %struct.opal_occ_msg* %9, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load %struct.opal_msg*, %struct.opal_msg** %8, align 8
  %46 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @be64_to_cpu(i32 %49)
  %51 = ptrtoint i8* %50 to i64
  %52 = getelementptr inbounds %struct.opal_occ_msg, %struct.opal_occ_msg* %9, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* @occ_reset, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %37
  store i32 0, i32* @occ_reset, align 4
  store i32 0, i32* @throttled, align 4
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %73, %55
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @nr_chips, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chips, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chips, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = call i32 @schedule_work(i32* %71)
  br label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %57

76:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %143

77:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %94, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @nr_chips, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chips, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds %struct.opal_occ_msg, %struct.opal_occ_msg* %9, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %97

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %78

97:                                               ; preds = %92, %78
  %98 = getelementptr inbounds %struct.opal_occ_msg, %struct.opal_occ_msg* %9, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.opal_occ_msg, %struct.opal_occ_msg* %9, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @OCC_MAX_THROTTLE_STATUS, align 8
  %105 = icmp ule i64 %103, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.opal_occ_msg, %struct.opal_occ_msg* %9, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chips, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i64 %108, i64* %113, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chips, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds %struct.opal_occ_msg, %struct.opal_occ_msg* %9, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %106, %101, %97
  %126 = getelementptr inbounds %struct.opal_occ_msg, %struct.opal_occ_msg* %9, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chips, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %129, %125
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chips, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = call i32 @schedule_work(i32* %140)
  br label %142

142:                                              ; preds = %135, %17, %35, %34
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %76, %16
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
