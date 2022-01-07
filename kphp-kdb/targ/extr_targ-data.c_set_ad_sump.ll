; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_ad_sump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_ad_sump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_targ_ad_setsump = type { i64, i64, i64, i64, i32 }
%struct.advert = type { i64, double, double, double }

@targeting_disabled = common dso_local global i64 0, align 8
@LEV_TARG_AD_SETSUMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_ad_setsump*)* @set_ad_sump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ad_sump(%struct.lev_targ_ad_setsump* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_ad_setsump*, align 8
  %4 = alloca %struct.advert*, align 8
  store %struct.lev_targ_ad_setsump* %0, %struct.lev_targ_ad_setsump** %3, align 8
  %5 = load i64, i64* @targeting_disabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

8:                                                ; preds = %1
  %9 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %3, align 8
  %10 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.advert* @get_ad_f(i32 %11, i32 0)
  store %struct.advert* %12, %struct.advert** %4, align 8
  %13 = load %struct.advert*, %struct.advert** %4, align 8
  %14 = icmp ne %struct.advert* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.advert*, %struct.advert** %4, align 8
  %17 = getelementptr inbounds %struct.advert, %struct.advert* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i1 [ false, %8 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %3, align 8
  %25 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LEV_TARG_AD_SETSUMP, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %3, align 8
  %32 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %20
  %36 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %3, align 8
  %37 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %3, align 8
  %42 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %43, 0
  br label %45

45:                                               ; preds = %40, %35, %20
  %46 = phi i1 [ false, %35 ], [ false, %20 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %3, align 8
  %50 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sitofp i64 %51 to double
  %53 = fmul double %52, 0x3DF0000000000000
  %54 = load %struct.advert*, %struct.advert** %4, align 8
  %55 = getelementptr inbounds %struct.advert, %struct.advert* %54, i32 0, i32 1
  store double %53, double* %55, align 8
  %56 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %3, align 8
  %57 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sitofp i64 %58 to double
  %60 = fmul double %59, 0x3DF0000000000000
  %61 = load %struct.advert*, %struct.advert** %4, align 8
  %62 = getelementptr inbounds %struct.advert, %struct.advert* %61, i32 0, i32 2
  store double %60, double* %62, align 8
  %63 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %3, align 8
  %64 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to double
  %67 = fmul double %66, 0x3DF0000000000000
  %68 = load %struct.advert*, %struct.advert** %4, align 8
  %69 = getelementptr inbounds %struct.advert, %struct.advert* %68, i32 0, i32 3
  store double %67, double* %69, align 8
  %70 = load %struct.advert*, %struct.advert** %4, align 8
  %71 = call i32 @compute_estimated_gain(%struct.advert* %70)
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %45, %7
  %73 = load i32, i32* %2, align 4
  ret i32 %73
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
