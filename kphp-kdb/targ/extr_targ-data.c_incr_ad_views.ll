; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_incr_ad_views.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_incr_ad_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { double, i64 }
%struct.advert = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@tot_views = common dso_local global i32 0, align 4
@ADF_ANYVIEWS = common dso_local global i32 0, align 4
@ADF_OLDVIEWS = common dso_local global i32 0, align 4
@AdStats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@tot_click_money = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @incr_ad_views to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @incr_ad_views(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.advert*, align 8
  %8 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.advert* @get_ad_f(i32 %9, i32 0)
  store %struct.advert* %10, %struct.advert** %7, align 8
  %11 = load %struct.advert*, %struct.advert** %7, align 8
  %12 = icmp ne %struct.advert* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ad_is_ancient(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %152

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.advert* @get_ad_f(i32 %19, i32 1)
  store %struct.advert* %20, %struct.advert** %7, align 8
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.advert*, %struct.advert** %7, align 8
  %23 = call i64 @load_ancient_ad(%struct.advert* %22)
  %24 = icmp sge i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ult i32 %27, 1048576
  br i1 %28, label %29, label %152

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.advert*, %struct.advert** %7, align 8
  %32 = getelementptr inbounds %struct.advert, %struct.advert* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.advert*, %struct.advert** %7, align 8
  %37 = getelementptr inbounds %struct.advert, %struct.advert* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @tot_views, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* @tot_views, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %29
  %46 = load %struct.advert*, %struct.advert** %7, align 8
  %47 = getelementptr inbounds %struct.advert, %struct.advert* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ADF_ANYVIEWS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ADF_OLDVIEWS, align 4
  %54 = load %struct.advert*, %struct.advert** %7, align 8
  %55 = getelementptr inbounds %struct.advert, %struct.advert* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %45, %29
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %123, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AdStats, i32 0, i32 0), align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = call i64 @likely(double %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %123

68:                                               ; preds = %61
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AdStats, i32 0, i32 0), align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sitofp i64 %72 to double
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AdStats, i32 0, i32 0), align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load double, double* %76, align 8
  %78 = fdiv double %73, %77
  store double %78, double* %8, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sitofp i32 %79 to double
  %81 = load double, double* %8, align 8
  %82 = fmul double %80, %81
  %83 = load %struct.advert*, %struct.advert** %7, align 8
  %84 = getelementptr inbounds %struct.advert, %struct.advert* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sitofp i32 %85 to double
  %87 = fadd double %86, %82
  %88 = fptosi double %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sitofp i32 %89 to double
  %91 = load double, double* %8, align 8
  %92 = fmul double %90, %91
  %93 = load %struct.advert*, %struct.advert** %7, align 8
  %94 = getelementptr inbounds %struct.advert, %struct.advert* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = sitofp i32 %95 to double
  %97 = fadd double %96, %92
  %98 = fptosi double %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sitofp i32 %99 to double
  %101 = load double, double* %8, align 8
  %102 = fmul double %100, %101
  %103 = load double, double* %8, align 8
  %104 = fmul double %102, %103
  %105 = load %struct.advert*, %struct.advert** %7, align 8
  %106 = getelementptr inbounds %struct.advert, %struct.advert* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = sitofp i32 %107 to double
  %109 = fadd double %108, %104
  %110 = fptosi double %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load i32, i32* %5, align 4
  %112 = sitofp i32 %111 to double
  %113 = load double, double* %8, align 8
  %114 = fmul double %112, %113
  %115 = load double, double* %8, align 8
  %116 = fmul double %114, %115
  %117 = load %struct.advert*, %struct.advert** %7, align 8
  %118 = getelementptr inbounds %struct.advert, %struct.advert* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = sitofp i32 %119 to double
  %121 = fadd double %120, %116
  %122 = fptosi double %121 to i32
  store i32 %122, i32* %118, align 8
  br label %123

123:                                              ; preds = %68, %61, %58
  %124 = load %struct.advert*, %struct.advert** %7, align 8
  %125 = getelementptr inbounds %struct.advert, %struct.advert* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %149

128:                                              ; preds = %123
  %129 = load %struct.advert*, %struct.advert** %7, align 8
  %130 = getelementptr inbounds %struct.advert, %struct.advert* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 0, %131
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %132, %134
  %136 = load %struct.advert*, %struct.advert** %7, align 8
  %137 = getelementptr inbounds %struct.advert, %struct.advert* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load %struct.advert*, %struct.advert** %7, align 8
  %141 = getelementptr inbounds %struct.advert, %struct.advert* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 0, %142
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = mul nsw i64 %143, %145
  %147 = load i64, i64* @tot_click_money, align 8
  %148 = add nsw i64 %147, %146
  store i64 %148, i64* @tot_click_money, align 8
  br label %149

149:                                              ; preds = %128, %123
  %150 = load %struct.advert*, %struct.advert** %7, align 8
  %151 = call i32 @compute_estimated_gain(%struct.advert* %150)
  br label %152

152:                                              ; preds = %17, %149, %21
  ret void
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @load_ancient_ad(%struct.advert*) #1

declare dso_local i64 @likely(double) #1

declare dso_local i32 @compute_estimated_gain(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
