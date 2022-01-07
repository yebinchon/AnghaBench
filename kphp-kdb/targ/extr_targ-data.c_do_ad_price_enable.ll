; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_ad_price_enable.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_ad_price_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i32 }
%struct.lev_targ_ad_price = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"warning: enabling undefined ad %d\0A\00", align 1
@LEV_TARG_AD_PRICE = common dso_local global i32 0, align 4
@ADF_ON = common dso_local global i32 0, align 4
@LEV_TARG_AD_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_ad_price_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_targ_ad_price*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ad_is_ancient(i32 %10)
  %12 = call %struct.advert* @get_ad_f(i32 %9, i32 %11)
  store %struct.advert* %12, %struct.advert** %6, align 8
  %13 = load %struct.advert*, %struct.advert** %6, align 8
  %14 = icmp ne %struct.advert* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @verbosity, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load %struct.advert*, %struct.advert** %6, align 8
  %25 = call i32 @load_ancient_ad(%struct.advert* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.advert*, %struct.advert** %6, align 8
  %35 = getelementptr inbounds %struct.advert, %struct.advert* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32, i32* @LEV_TARG_AD_PRICE, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call %struct.lev_targ_ad_price* @alloc_log_event(i32 %40, i32 12, i32 %41)
  store %struct.lev_targ_ad_price* %42, %struct.lev_targ_ad_price** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.lev_targ_ad_price*, %struct.lev_targ_ad_price** %8, align 8
  %45 = getelementptr inbounds %struct.lev_targ_ad_price, %struct.lev_targ_ad_price* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.lev_targ_ad_price*, %struct.lev_targ_ad_price** %8, align 8
  %47 = call i32 @set_ad_price(%struct.lev_targ_ad_price* %46)
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %39, %33, %30
  %49 = load %struct.advert*, %struct.advert** %6, align 8
  %50 = getelementptr inbounds %struct.advert, %struct.advert* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ADF_ON, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @LEV_TARG_AD_ON, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call %struct.lev_targ_ad_price* @alloc_log_event(i32 %56, i32 8, i32 %57)
  %59 = load %struct.advert*, %struct.advert** %6, align 8
  %60 = call i32 @ad_enable(%struct.advert* %59, i32 0)
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %55, %48
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %28, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @load_ancient_ad(%struct.advert*) #1

declare dso_local %struct.lev_targ_ad_price* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @set_ad_price(%struct.lev_targ_ad_price*) #1

declare dso_local i32 @ad_enable(%struct.advert*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
