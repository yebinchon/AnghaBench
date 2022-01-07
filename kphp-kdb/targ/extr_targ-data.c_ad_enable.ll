; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_enable.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i64, i32, i64, i32, i32, i32 }

@ADF_ANCIENT = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i64 0, align 8
@AD_ANCIENT_DELAY = common dso_local global i64 0, align 8
@ADF_ON = common dso_local global i32 0, align 4
@AD_RECOMPUTE_INTERVAL = common dso_local global i64 0, align 8
@active_ads = common dso_local global i32 0, align 4
@delay_targeting = common dso_local global i32 0, align 4
@ADF_DELAYED = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"enabled previously disabled ad #%d: %d users\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.advert*, i32)* @ad_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_enable(%struct.advert* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.advert*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.advert* %0, %struct.advert** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.advert*, %struct.advert** %4, align 8
  %8 = icmp ne %struct.advert* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %129

10:                                               ; preds = %2
  %11 = load %struct.advert*, %struct.advert** %4, align 8
  %12 = getelementptr inbounds %struct.advert, %struct.advert* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ADF_ANCIENT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load %struct.advert*, %struct.advert** %4, align 8
  %19 = call i32 @load_ancient_ad(%struct.advert* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %129

24:                                               ; preds = %17
  %25 = load %struct.advert*, %struct.advert** %4, align 8
  %26 = getelementptr inbounds %struct.advert, %struct.advert* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @log_last_ts, align 8
  %29 = load i64, i64* @AD_ANCIENT_DELAY, align 8
  %30 = sub nsw i64 %28, %29
  %31 = icmp sle i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %34

34:                                               ; preds = %24, %10
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.advert*, %struct.advert** %4, align 8
  %40 = getelementptr inbounds %struct.advert, %struct.advert* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.advert*, %struct.advert** %4, align 8
  %43 = getelementptr inbounds %struct.advert, %struct.advert* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.advert*, %struct.advert** %4, align 8
  %47 = getelementptr inbounds %struct.advert, %struct.advert* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ADF_ON, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %41
  %53 = load %struct.advert*, %struct.advert** %4, align 8
  %54 = getelementptr inbounds %struct.advert, %struct.advert* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @log_last_ts, align 8
  %57 = load i64, i64* @AD_RECOMPUTE_INTERVAL, align 8
  %58 = sub nsw i64 %56, %57
  %59 = icmp sle i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.advert*, %struct.advert** %4, align 8
  %62 = call i32 @change_ad_target(%struct.advert* %61)
  br label %66

63:                                               ; preds = %52
  %64 = load %struct.advert*, %struct.advert** %4, align 8
  %65 = call i32 @compute_estimated_gain(%struct.advert* %64)
  br label %66

66:                                               ; preds = %63, %60
  store i32 0, i32* %3, align 4
  br label %129

67:                                               ; preds = %41
  %68 = load %struct.advert*, %struct.advert** %4, align 8
  %69 = getelementptr inbounds %struct.advert, %struct.advert* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load %struct.advert*, %struct.advert** %4, align 8
  %74 = getelementptr inbounds %struct.advert, %struct.advert* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @log_last_ts, align 8
  %77 = load i64, i64* @AD_ANCIENT_DELAY, align 8
  %78 = sub nsw i64 %76, %77
  %79 = icmp sle i64 %75, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.advert*, %struct.advert** %4, align 8
  %82 = getelementptr inbounds %struct.advert, %struct.advert* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @log_last_ts, align 8
  %85 = load i64, i64* @AD_RECOMPUTE_INTERVAL, align 8
  %86 = sub nsw i64 %84, %85
  %87 = icmp sle i64 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %80, %72, %67
  %89 = load %struct.advert*, %struct.advert** %4, align 8
  %90 = call i32 @compute_ad_user_list(%struct.advert* %89)
  br label %91

91:                                               ; preds = %88, %80
  %92 = load %struct.advert*, %struct.advert** %4, align 8
  %93 = call i32 @remove_queue_ad(%struct.advert* %92)
  %94 = load i32, i32* @ADF_ON, align 4
  %95 = load %struct.advert*, %struct.advert** %4, align 8
  %96 = getelementptr inbounds %struct.advert, %struct.advert* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @active_ads, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @active_ads, align 4
  %101 = load i32, i32* @delay_targeting, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %91
  %104 = load %struct.advert*, %struct.advert** %4, align 8
  %105 = call i32 @activate_ad(%struct.advert* %104)
  br label %112

106:                                              ; preds = %91
  %107 = load i32, i32* @ADF_DELAYED, align 4
  %108 = load %struct.advert*, %struct.advert** %4, align 8
  %109 = getelementptr inbounds %struct.advert, %struct.advert* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %103
  %113 = load %struct.advert*, %struct.advert** %4, align 8
  %114 = call i32 @apply_periodic_ad_state(%struct.advert* %113)
  %115 = load %struct.advert*, %struct.advert** %4, align 8
  %116 = call i32 @compute_estimated_gain(%struct.advert* %115)
  %117 = load i32, i32* @verbosity, align 4
  %118 = icmp sgt i32 %117, 2
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load i32, i32* @stderr, align 4
  %121 = load %struct.advert*, %struct.advert** %4, align 8
  %122 = getelementptr inbounds %struct.advert, %struct.advert* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.advert*, %struct.advert** %4, align 8
  %125 = getelementptr inbounds %struct.advert, %struct.advert* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @fprintf(i32 %120, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %119, %112
  store i32 1, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %66, %22, %9
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @load_ancient_ad(%struct.advert*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @change_ad_target(%struct.advert*) #1

declare dso_local i32 @compute_estimated_gain(%struct.advert*) #1

declare dso_local i32 @compute_ad_user_list(%struct.advert*) #1

declare dso_local i32 @remove_queue_ad(%struct.advert*) #1

declare dso_local i32 @activate_ad(%struct.advert*) #1

declare dso_local i32 @apply_periodic_ad_state(%struct.advert*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
