; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_bad_image_cache_probe.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_bad_image_cache_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bad_image_cache_entry = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@BAD_IMAGE_CACHE_PRIME = common dso_local global i64 0, align 8
@CBI = common dso_local global %struct.bad_image_cache_entry* null, align 8
@now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @bad_image_cache_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bad_image_cache_probe(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bad_image_cache_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = xor i64 %9, %10
  %12 = load i64, i64* @BAD_IMAGE_CACHE_PRIME, align 8
  %13 = urem i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @BAD_IMAGE_CACHE_PRIME, align 8
  %21 = icmp ult i64 %19, %20
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i1 [ false, %2 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** @CBI, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %26, i64 %28
  store %struct.bad_image_cache_entry* %29, %struct.bad_image_cache_entry** %6, align 8
  %30 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %31 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %22
  %38 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %39 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i64, i64* @now, align 8
  %45 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %46 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %44, %47
  br label %49

49:                                               ; preds = %43, %37, %22
  %50 = phi i1 [ false, %37 ], [ false, %22 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
