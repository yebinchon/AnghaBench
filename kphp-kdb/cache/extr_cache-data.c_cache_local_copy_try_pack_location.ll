; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_try_pack_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_try_pack_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32 }
%struct.cache_local_copy = type { i8*, i32, i64 }
%union.cache_packed_local_copy_location = type { i64, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CACHE_LOCAL_COPY_FLAG_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cs%d_%d/d%d/%255s\00", align 1
@MAX_NODE_ID = common dso_local global i32 0, align 4
@MAX_SERVER_ID = common dso_local global i32 0, align 4
@MAX_DISK_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cs%d_%d/d%d/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_local_copy_try_pack_location(%struct.cache_uri* %0, %struct.cache_local_copy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_uri*, align 8
  %5 = alloca %struct.cache_local_copy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca [320 x i8], align 16
  %11 = alloca %union.cache_packed_local_copy_location, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %4, align 8
  store %struct.cache_local_copy* %1, %struct.cache_local_copy** %5, align 8
  %12 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %13 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %17 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %21 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %24 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i8* %23)
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %90

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 1
  br i1 %28, label %29, label %90

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MAX_NODE_ID, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 1
  br i1 %35, label %36, label %90

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MAX_SERVER_ID, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 1
  br i1 %42, label %43, label %90

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MAX_DISK_ID, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %90

47:                                               ; preds = %43
  %48 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %49 = call i8* @cache_uri_get_basename(%struct.cache_uri* %48)
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %51 = call i32 @strcmp(i8* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %90, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds [320 x i8], [320 x i8]* %10, i64 0, i64 0
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %59 = call i32 @snprintf(i8* %54, i32 320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i8* %58)
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 320
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = getelementptr inbounds [320 x i8], [320 x i8]* %10, i64 0, i64 0
  %65 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %66 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %64, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %53
  %71 = load i32, i32* %6, align 4
  %72 = bitcast %union.cache_packed_local_copy_location* %11 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = bitcast %union.cache_packed_local_copy_location* %11 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = bitcast %union.cache_packed_local_copy_location* %11 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = bitcast %union.cache_packed_local_copy_location* %11 to i64*
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %83 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %85 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %86 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  store i32 0, i32* %3, align 4
  br label %91

89:                                               ; preds = %53
  br label %90

90:                                               ; preds = %89, %47, %43, %40, %36, %33, %29, %26, %2
  store i32 -1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %70
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @cache_uri_get_basename(%struct.cache_uri*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
