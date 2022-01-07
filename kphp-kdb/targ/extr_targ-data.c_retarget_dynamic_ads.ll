; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_retarget_dynamic_ads.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_retarget_dynamic_ads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.advert*, %struct.TYPE_3__* }
%struct.advert = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@binlog_disabled = common dso_local global i64 0, align 8
@targeting_disabled = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"retarget_dynamic_ads() first=%d last=%d now=%d\0A\00", align 1
@AHd_retarget = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"first ad in retarget queue: ad #%d (%p), retarget_time=%d, now=%d\0A\00", align 1
@log_last_ts = common dso_local global i64 0, align 8
@LEV_TARG_AD_RETARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @retarget_dynamic_ads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.advert*, align 8
  %3 = load i64, i64* @binlog_disabled, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @targeting_disabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  store i32 0, i32* %1, align 4
  br label %53

9:                                                ; preds = %5
  %10 = load i64, i64* @now, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i64 @time(i32 0)
  store i64 %13, i64* @now, align 8
  br label %14

14:                                               ; preds = %12, %9
  %15 = load %struct.advert*, %struct.advert** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AHd_retarget, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.advert, %struct.advert* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AHd_retarget, i32 0, i32 1), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.advert*
  %23 = load i64, i64* @now, align 8
  %24 = call i32 (i32, i8*, i32, %struct.advert*, i64, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.advert* %22, i64 %23)
  %25 = load %struct.advert*, %struct.advert** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AHd_retarget, i32 0, i32 0), align 8
  %26 = icmp ne %struct.advert* %25, bitcast (%struct.TYPE_4__* @AHd_retarget to %struct.advert*)
  br i1 %26, label %27, label %52

27:                                               ; preds = %14
  %28 = load %struct.advert*, %struct.advert** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AHd_retarget, i32 0, i32 0), align 8
  store %struct.advert* %28, %struct.advert** %2, align 8
  %29 = load %struct.advert*, %struct.advert** %2, align 8
  %30 = getelementptr inbounds %struct.advert, %struct.advert* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.advert*, %struct.advert** %2, align 8
  %33 = load %struct.advert*, %struct.advert** %2, align 8
  %34 = getelementptr inbounds %struct.advert, %struct.advert* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @now, align 8
  %37 = call i32 (i32, i8*, i32, %struct.advert*, i64, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %31, %struct.advert* %32, i64 %35, i64 %36)
  %38 = load %struct.advert*, %struct.advert** %2, align 8
  %39 = getelementptr inbounds %struct.advert, %struct.advert* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @log_last_ts, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %27
  %44 = load i32, i32* @LEV_TARG_AD_RETARGET, align 4
  %45 = load %struct.advert*, %struct.advert** %2, align 8
  %46 = getelementptr inbounds %struct.advert, %struct.advert* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @alloc_log_event(i32 %44, i32 8, i32 %47)
  %49 = load %struct.advert*, %struct.advert** %2, align 8
  %50 = call i32 @retarget_ad(%struct.advert* %49)
  store i32 1, i32* %1, align 4
  br label %53

51:                                               ; preds = %27
  br label %52

52:                                               ; preds = %51, %14
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %52, %43, %8
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i64 @time(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, %struct.advert*, i64, ...) #1

declare dso_local i32 @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @retarget_ad(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
