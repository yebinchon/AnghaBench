; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_ad_limit_user_views.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_ad_limit_user_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i64 }
%struct.lev_generic = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"in do_ad_limit_user_views (%d, %d):\0A\00", align 1
@LEV_TARG_AD_LIMIT_USER_VIEWS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_ad_limit_user_views(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_generic*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ad_is_ancient(i32 %10)
  %12 = call %struct.advert* @get_ad_f(i32 %9, i32 %11)
  store %struct.advert* %12, %struct.advert** %6, align 8
  %13 = load i64, i64* @verbosity, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.advert*, %struct.advert** %6, align 8
  %22 = icmp ne %struct.advert* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 100
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %20
  store i32 0, i32* %3, align 4
  br label %52

30:                                               ; preds = %26, %23
  %31 = load %struct.advert*, %struct.advert** %6, align 8
  %32 = call i32 @load_ancient_ad(%struct.advert* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %30
  %38 = load %struct.advert*, %struct.advert** %6, align 8
  %39 = getelementptr inbounds %struct.advert, %struct.advert* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %52

43:                                               ; preds = %37
  %44 = load i64, i64* @LEV_TARG_AD_LIMIT_USER_VIEWS, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i32, i32* %4, align 4
  %49 = call %struct.lev_generic* @alloc_log_event(i64 %47, i32 8, i32 %48)
  store %struct.lev_generic* %49, %struct.lev_generic** %8, align 8
  %50 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %51 = call i32 @ad_limit_user_views(%struct.lev_generic* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %43, %42, %35, %29
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @load_ancient_ad(%struct.advert*) #1

declare dso_local %struct.lev_generic* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @ad_limit_user_views(%struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
