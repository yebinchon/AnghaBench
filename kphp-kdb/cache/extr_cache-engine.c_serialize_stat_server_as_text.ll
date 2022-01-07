; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_serialize_stat_server_as_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_serialize_stat_server_as_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { double, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%union.cache_packed_local_copy_location = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"%d\09%d\09%.6lf\09%lld\09%lld\0A\00", align 1
@access_success_counters = common dso_local global %struct.TYPE_11__* null, align 8
@stats_counters = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serialize_stat_server_as_text(%struct.TYPE_9__** %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2048 x i8], align 16
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %union.cache_packed_local_copy_location, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %84, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %87

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %13, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = bitcast %union.cache_packed_local_copy_location* %14 to i32*
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %30 = call i32 @cache_bclear(%struct.TYPE_10__* %12, i8* %29, i32 2048)
  %31 = bitcast %union.cache_packed_local_copy_location* %14 to %struct.TYPE_8__*
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = bitcast %union.cache_packed_local_copy_location* %14 to %struct.TYPE_8__*
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fmul double 1.000000e+02, %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @access_success_counters, align 8
  %44 = load i64, i64* @stats_counters, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @safe_div(double %42, i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cache_bprintf(%struct.TYPE_10__* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38, i32 %48, i32 %51, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %19
  br label %87

62:                                               ; preds = %19
  %63 = load i32, i32* %10, align 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %87

70:                                               ; preds = %62
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i8* %74, i32 %76, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %15

87:                                               ; preds = %69, %61, %15
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

declare dso_local i32 @cache_bclear(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @cache_bprintf(%struct.TYPE_10__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @safe_div(double, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
