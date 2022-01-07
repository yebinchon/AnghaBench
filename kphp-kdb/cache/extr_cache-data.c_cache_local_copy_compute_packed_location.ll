; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_compute_packed_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_compute_packed_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_local_copy = type { i32, i32, i64 }
%union.cache_packed_local_copy_location = type { i64, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CACHE_LOCAL_COPY_FLAG_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cs%d_%d/d%d\00", align 1
@MAX_NODE_ID = common dso_local global i32 0, align 4
@MAX_SERVER_ID = common dso_local global i32 0, align 4
@MAX_DISK_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_local_copy*, %union.cache_packed_local_copy_location*)* @cache_local_copy_compute_packed_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_local_copy_compute_packed_location(%struct.cache_local_copy* %0, %union.cache_packed_local_copy_location* %1) #0 {
  %3 = alloca %struct.cache_local_copy*, align 8
  %4 = alloca %union.cache_packed_local_copy_location*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cache_local_copy* %0, %struct.cache_local_copy** %3, align 8
  store %union.cache_packed_local_copy_location* %1, %union.cache_packed_local_copy_location** %4, align 8
  %8 = load %struct.cache_local_copy*, %struct.cache_local_copy** %3, align 8
  %9 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.cache_local_copy*, %struct.cache_local_copy** %3, align 8
  %16 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %union.cache_packed_local_copy_location*, %union.cache_packed_local_copy_location** %4, align 8
  %19 = bitcast %union.cache_packed_local_copy_location* %18 to i64*
  store i64 %17, i64* %19, align 8
  br label %63

20:                                               ; preds = %2
  %21 = load %union.cache_packed_local_copy_location*, %union.cache_packed_local_copy_location** %4, align 8
  %22 = bitcast %union.cache_packed_local_copy_location* %21 to i64*
  store i64 0, i64* %22, align 8
  %23 = load %struct.cache_local_copy*, %struct.cache_local_copy** %3, align 8
  %24 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sscanf(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6, i32* %7)
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %62

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 1
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MAX_NODE_ID, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 1
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MAX_SERVER_ID, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 1
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MAX_DISK_ID, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load %union.cache_packed_local_copy_location*, %union.cache_packed_local_copy_location** %4, align 8
  %52 = bitcast %union.cache_packed_local_copy_location* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %union.cache_packed_local_copy_location*, %union.cache_packed_local_copy_location** %4, align 8
  %56 = bitcast %union.cache_packed_local_copy_location* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %union.cache_packed_local_copy_location*, %union.cache_packed_local_copy_location** %4, align 8
  %60 = bitcast %union.cache_packed_local_copy_location* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  br label %62

62:                                               ; preds = %49, %45, %42, %38, %35, %31, %28, %20
  br label %63

63:                                               ; preds = %62, %14
  ret void
}

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
