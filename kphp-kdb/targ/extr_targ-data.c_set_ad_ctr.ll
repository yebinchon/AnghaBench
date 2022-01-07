; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_ad_ctr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_ad_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32 }
%struct.advert = type { i64, i64, i64, i64, i64 }
%struct.lev_targ_ad_setctr = type { i64, i64 }
%struct.lev_targ_ad_setctr_pack = type { i64 }

@targeting_disabled = common dso_local global i64 0, align 8
@LEV_TARG_AD_SETCTR = common dso_local global i32 0, align 4
@LEV_TARG_AD_SETCTR_PACK = common dso_local global i32 0, align 4
@MAX_G_CLICKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_generic*)* @set_ad_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ad_ctr(%struct.lev_generic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_generic*, align 8
  %4 = alloca %struct.advert*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.lev_generic* %0, %struct.lev_generic** %3, align 8
  %7 = load i64, i64* @targeting_disabled, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

10:                                               ; preds = %1
  %11 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %12 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.advert* @get_ad_f(i32 %13, i32 0)
  store %struct.advert* %14, %struct.advert** %4, align 8
  %15 = load %struct.advert*, %struct.advert** %4, align 8
  %16 = icmp ne %struct.advert* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.advert*, %struct.advert** %4, align 8
  %19 = getelementptr inbounds %struct.advert, %struct.advert* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br label %22

22:                                               ; preds = %17, %10
  %23 = phi i1 [ false, %10 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %27 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LEV_TARG_AD_SETCTR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %33 = bitcast %struct.lev_generic* %32 to %struct.lev_targ_ad_setctr*
  %34 = getelementptr inbounds %struct.lev_targ_ad_setctr, %struct.lev_targ_ad_setctr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  %36 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %37 = bitcast %struct.lev_generic* %36 to %struct.lev_targ_ad_setctr*
  %38 = getelementptr inbounds %struct.lev_targ_ad_setctr, %struct.lev_targ_ad_setctr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  br label %58

40:                                               ; preds = %22
  %41 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %42 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -256
  %45 = load i32, i32* @LEV_TARG_AD_SETCTR_PACK, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %50 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 255
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %5, align 8
  %54 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %55 = bitcast %struct.lev_generic* %54 to %struct.lev_targ_ad_setctr_pack*
  %56 = getelementptr inbounds %struct.lev_targ_ad_setctr_pack, %struct.lev_targ_ad_setctr_pack* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %40, %31
  %59 = load i64, i64* %5, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @MAX_G_CLICKS, align 8
  %67 = icmp slt i64 %65, %66
  br label %68

68:                                               ; preds = %64, %61, %58
  %69 = phi i1 [ false, %61 ], [ false, %58 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.advert*, %struct.advert** %4, align 8
  %74 = getelementptr inbounds %struct.advert, %struct.advert* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = mul nsw i64 %75, 10
  %77 = sub nsw i64 %72, %76
  %78 = load %struct.advert*, %struct.advert** %4, align 8
  %79 = getelementptr inbounds %struct.advert, %struct.advert* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.advert*, %struct.advert** %4, align 8
  %82 = getelementptr inbounds %struct.advert, %struct.advert* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = mul nsw i64 %83, 10
  %85 = sub nsw i64 %80, %84
  %86 = load %struct.advert*, %struct.advert** %4, align 8
  %87 = getelementptr inbounds %struct.advert, %struct.advert* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.advert*, %struct.advert** %4, align 8
  %89 = call i32 @compute_estimated_gain(%struct.advert* %88)
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %68, %9
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_estimated_gain(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
