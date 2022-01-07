; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_process_lru_ads.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_process_lru_ads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.advert*, %struct.TYPE_3__* }
%struct.advert = type { i64, i32, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"process_lru_ads() first=%d last=%d\0A\00", align 1
@AHd_lru = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@log_last_ts = common dso_local global i64 0, align 8
@AD_ANCIENT_DELAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"first ad in lru queue: ad #%d (%p), disabled_since=%d, log_last_ts=%d\0A\00", align 1
@ADF_ON = common dso_local global i32 0, align 4
@tot_userlists = common dso_local global i32 0, align 4
@tot_userlists_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_lru_ads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.advert*, align 8
  store i32 0, i32* %1, align 4
  %3 = load %struct.advert*, %struct.advert** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AHd_lru, i32 0, i32 0), align 8
  %4 = getelementptr inbounds %struct.advert, %struct.advert* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AHd_lru, i32 0, i32 1), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.advert*
  %11 = call i32 (i32, i8*, i32, %struct.advert*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %5, %struct.advert* %10)
  br label %12

12:                                               ; preds = %69, %0
  %13 = load %struct.advert*, %struct.advert** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AHd_lru, i32 0, i32 0), align 8
  %14 = icmp ne %struct.advert* %13, bitcast (%struct.TYPE_4__* @AHd_lru to %struct.advert*)
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.advert*, %struct.advert** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AHd_lru, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.advert, %struct.advert* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @log_last_ts, align 8
  %20 = load i64, i64* @AD_ANCIENT_DELAY, align 8
  %21 = sub nsw i64 %19, %20
  %22 = icmp sle i64 %18, %21
  br label %23

23:                                               ; preds = %15, %12
  %24 = phi i1 [ false, %12 ], [ %22, %15 ]
  br i1 %24, label %25, label %72

25:                                               ; preds = %23
  %26 = load %struct.advert*, %struct.advert** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AHd_lru, i32 0, i32 0), align 8
  store %struct.advert* %26, %struct.advert** %2, align 8
  %27 = load %struct.advert*, %struct.advert** %2, align 8
  %28 = getelementptr inbounds %struct.advert, %struct.advert* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.advert*, %struct.advert** %2, align 8
  %31 = load %struct.advert*, %struct.advert** %2, align 8
  %32 = getelementptr inbounds %struct.advert, %struct.advert* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @log_last_ts, align 8
  %35 = call i32 (i32, i8*, i32, %struct.advert*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %29, %struct.advert* %30, i64 %33, i64 %34)
  %36 = load %struct.advert*, %struct.advert** %2, align 8
  %37 = call i32 @remove_queue_ad(%struct.advert* %36)
  %38 = load %struct.advert*, %struct.advert** %2, align 8
  %39 = getelementptr inbounds %struct.advert, %struct.advert* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ADF_ON, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.advert*, %struct.advert** %2, align 8
  %48 = getelementptr inbounds %struct.advert, %struct.advert* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %25
  %52 = load i32, i32* @tot_userlists, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* @tot_userlists, align 4
  %54 = load %struct.advert*, %struct.advert** %2, align 8
  %55 = getelementptr inbounds %struct.advert, %struct.advert* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @tot_userlists_size, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* @tot_userlists_size, align 4
  %61 = load %struct.advert*, %struct.advert** %2, align 8
  %62 = getelementptr inbounds %struct.advert, %struct.advert* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @free(i64 %63)
  %65 = load %struct.advert*, %struct.advert** %2, align 8
  %66 = getelementptr inbounds %struct.advert, %struct.advert* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.advert*, %struct.advert** %2, align 8
  %68 = getelementptr inbounds %struct.advert, %struct.advert* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %51, %25
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %1, align 4
  br label %12

72:                                               ; preds = %23
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i32 @vkprintf(i32, i8*, i32, %struct.advert*, ...) #1

declare dso_local i32 @remove_queue_ad(%struct.advert*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
