; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_print_uri.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_print_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.cache_uri = type { i32, i64, i32* }

@now = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"U->last_access: %d, now: %d\0A\00", align 1
@simulation_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@print_unknown_size_uries = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@uri_in_bucket = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_uri(%struct.cache_uri* %0) #0 {
  %2 = alloca %struct.cache_uri*, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %2, align 8
  %3 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %4 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @now, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %10 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @now, align 4
  %13 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %16 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @now, align 4
  %19 = sub nsw i32 %18, 3600
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 8), align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 8), align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %26 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @now, align 4
  %29 = sub nsw i32 %28, 86400
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 7), align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 7), align 8
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %36 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @now, align 4
  %39 = sub nsw i32 %38, 604800
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 6), align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 6), align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %46 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @now, align 4
  %49 = sub nsw i32 %48, 2592000
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 5), align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 5), align 8
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %56 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, -2
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 4), align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 4), align 4
  %62 = load i64, i64* @print_unknown_size_uries, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %66 = call i8* @cache_get_uri_name(%struct.cache_uri* %65)
  %67 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %59
  br label %93

69:                                               ; preds = %54
  %70 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %71 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 3), align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 3), align 8
  %77 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %78 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 0), align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 0), align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 1), align 8
  %83 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %84 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %89 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 1), align 8
  br label %91

91:                                               ; preds = %87, %74
  br label %92

92:                                               ; preds = %91, %69
  br label %93

93:                                               ; preds = %92, %68
  %94 = load i64, i64* @uri_in_bucket, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* @uri_in_bucket, align 8
  %96 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %97 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 2), align 8
  %102 = load i64, i64* @uri_in_bucket, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i64, i64* @uri_in_bucket, align 8
  store i64 %105, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 2), align 8
  br label %106

106:                                              ; preds = %104, %100
  store i64 0, i64* @uri_in_bucket, align 8
  br label %107

107:                                              ; preds = %106, %93
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @cache_get_uri_name(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
