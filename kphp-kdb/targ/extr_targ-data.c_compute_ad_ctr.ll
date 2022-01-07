; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_ad_ctr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_ad_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_ad_ctr(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.advert*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.advert* @get_ad_f(i32 %7, i32 0)
  store %struct.advert* %8, %struct.advert** %6, align 8
  %9 = load %struct.advert*, %struct.advert** %6, align 8
  %10 = icmp ne %struct.advert* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.advert*, %struct.advert** %6, align 8
  %14 = getelementptr inbounds %struct.advert, %struct.advert* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.advert*, %struct.advert** %6, align 8
  %19 = getelementptr inbounds %struct.advert, %struct.advert* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.advert*, %struct.advert** %6, align 8
  %24 = getelementptr inbounds %struct.advert, %struct.advert* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = mul nsw i64 %25, 4294967296
  %27 = sitofp i64 %26 to double
  %28 = fadd double %27, 5.000000e-01
  %29 = fptosi double %28 to i64
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.advert*, %struct.advert** %6, align 8
  %33 = getelementptr inbounds %struct.advert, %struct.advert* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = mul nsw i64 %34, 4294967296
  %36 = sitofp i64 %35 to double
  %37 = fadd double %36, 5.000000e-01
  %38 = fptosi double %37 to i64
  %39 = load i64*, i64** %5, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.advert*, %struct.advert** %6, align 8
  %42 = getelementptr inbounds %struct.advert, %struct.advert* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = mul nsw i64 %43, 4294967296
  %45 = sitofp i64 %44 to double
  %46 = fadd double %45, 5.000000e-01
  %47 = fptosi double %46 to i64
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 4
  store i64 %47, i64* %49, align 8
  store i32 5, i32* %3, align 4
  br label %50

50:                                               ; preds = %12, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
