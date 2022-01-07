; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_bad_image_cache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_bad_image_cache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bad_image_cache_entry = type { i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@BAD_IMAGE_CACHE_PRIME = common dso_local global i64 0, align 8
@CBI = common dso_local global %struct.bad_image_cache_entry* null, align 8
@bad_image_cache_max_living_time = common dso_local global i8* null, align 8
@bad_image_cache_min_living_time = common dso_local global i8* null, align 8
@now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @bad_image_cache_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bad_image_cache_store(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bad_image_cache_entry*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = xor i64 %9, %12
  %14 = load i64, i64* @BAD_IMAGE_CACHE_PRIME, align 8
  %15 = urem i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @BAD_IMAGE_CACHE_PRIME, align 8
  %23 = icmp ult i64 %21, %22
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ false, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** @CBI, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %28, i64 %30
  store %struct.bad_image_cache_entry* %31, %struct.bad_image_cache_entry** %6, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %24
  %37 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %38 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %36
  %45 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %46 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %44
  %53 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %54 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %58 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8*, i8** @bad_image_cache_max_living_time, align 8
  %63 = icmp ugt i8* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load i8*, i8** @bad_image_cache_max_living_time, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %68 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %64, %52
  br label %75

70:                                               ; preds = %44, %36
  %71 = load i8*, i8** @bad_image_cache_min_living_time, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %74 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %69
  br label %81

76:                                               ; preds = %24
  %77 = load i8*, i8** @bad_image_cache_max_living_time, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %80 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %75
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %86 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %91 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* @now, align 8
  %93 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %94 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %92, %96
  %98 = load %struct.bad_image_cache_entry*, %struct.bad_image_cache_entry** %6, align 8
  %99 = getelementptr inbounds %struct.bad_image_cache_entry, %struct.bad_image_cache_entry* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
