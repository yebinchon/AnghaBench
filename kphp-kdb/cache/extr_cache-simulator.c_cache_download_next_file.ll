; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_cache_download_next_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_cache_download_next_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { %struct.cache_uri** }
%struct.cache_uri = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.cache_uri** }

@simulation_stats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@next_download_file_time = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"<%d> cache_download_next_file\0A\00", align 1
@uncached_ptr = common dso_local global i64 0, align 8
@heap_uncached = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@heap_uncached_files = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@simulation_params = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@next_priority_lists_request_time = common dso_local global i64 0, align 8
@cached_ptr = common dso_local global i32 0, align 4
@cached_bytes = common dso_local global i64 0, align 8
@heap_cached_files = common dso_local global i32 0, align 4
@heap_cached = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cache_download_next_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_download_next_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cache_uri*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @simulation_stats, i32 0, i32 2), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %160

12:                                               ; preds = %0
  %13 = load i64, i64* @next_download_file_time, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %1, align 4
  %15 = load i64, i64* @next_download_file_time, align 8
  %16 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* @uncached_ptr, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.cache_uri**, %struct.cache_uri*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @heap_uncached, i32 0, i32 0), align 8
  %21 = load i64, i64* @uncached_ptr, align 8
  %22 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %20, i64 %21
  %23 = load %struct.cache_uri*, %struct.cache_uri** %22, align 8
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @cache_add(%struct.cache_uri* %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %12
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @simulation_stats, i32 0, i32 0), align 8
  %28 = load i64, i64* @uncached_ptr, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @uncached_ptr, align 8
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @simulation_stats, i32 0, i32 0), align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i64, i64* @uncached_ptr, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* @uncached_ptr, align 8
  %35 = load i64, i64* @uncached_ptr, align 8
  %36 = load i64, i64* @heap_uncached_files, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i64, i64* @heap_uncached_files, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @resend_priority_lists_request(i32 %42)
  br label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @INT_MAX, align 8
  store i64 %45, i64* @next_download_file_time, align 8
  br label %46

46:                                               ; preds = %44, %41
  br label %160

47:                                               ; preds = %32
  %48 = load %struct.cache_uri**, %struct.cache_uri*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @heap_uncached, i32 0, i32 0), align 8
  %49 = load i64, i64* @uncached_ptr, align 8
  %50 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %48, i64 %49
  %51 = load %struct.cache_uri*, %struct.cache_uri** %50, align 8
  store %struct.cache_uri* %51, %struct.cache_uri** %2, align 8
  %52 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %53 = call i64 @cache_get_uri_size(%struct.cache_uri* %52, i32 1)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @simulation_params, i32 0, i32 0), align 8
  %56 = sdiv i64 %54, %55
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @simulation_params, i32 0, i32 0), align 8
  %59 = srem i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load i64, i64* %4, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %61, %47
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @next_download_file_time, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* @INT_MAX, align 8
  %69 = icmp sle i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @next_download_file_time, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* @next_download_file_time, align 8
  %75 = load i64, i64* @next_download_file_time, align 8
  %76 = load i64, i64* @next_priority_lists_request_time, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  br label %160

79:                                               ; preds = %64
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @simulation_params, i32 0, i32 1), align 8
  %81 = load i64, i64* %3, align 8
  %82 = sub nsw i64 %80, %81
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp sge i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  store i64 0, i64* %6, align 8
  %87 = load i32, i32* @cached_ptr, align 4
  store i32 %87, i32* %7, align 4
  %88 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %89 = call double @cache_get_uri_heuristic(%struct.cache_uri* %88)
  %90 = fsub double %89, 1.000000e+00
  store double %90, double* %8, align 8
  br label %91

91:                                               ; preds = %114, %79
  %92 = load i64, i64* @cached_bytes, align 8
  %93 = load i64, i64* %6, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load i64, i64* %5, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @heap_cached_files, align 4
  %100 = icmp sle i32 %98, %99
  br label %101

101:                                              ; preds = %97, %91
  %102 = phi i1 [ false, %91 ], [ %100, %97 ]
  br i1 %102, label %103, label %125

103:                                              ; preds = %101
  %104 = load %struct.cache_uri**, %struct.cache_uri*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @heap_cached, i32 0, i32 0), align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %104, i64 %106
  %108 = load %struct.cache_uri*, %struct.cache_uri** %107, align 8
  %109 = call double @cache_get_uri_heuristic(%struct.cache_uri* %108)
  %110 = load double, double* %8, align 8
  %111 = fcmp oge double %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i64, i64* @INT_MAX, align 8
  store i64 %113, i64* @next_download_file_time, align 8
  br label %160

114:                                              ; preds = %103
  %115 = load %struct.cache_uri**, %struct.cache_uri*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @heap_cached, i32 0, i32 0), align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %115, i64 %117
  %119 = load %struct.cache_uri*, %struct.cache_uri** %118, align 8
  %120 = call i64 @cache_get_uri_size(%struct.cache_uri* %119, i32 1)
  %121 = load i64, i64* %6, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %91

125:                                              ; preds = %101
  %126 = load i64, i64* @cached_bytes, align 8
  %127 = load i64, i64* %6, align 8
  %128 = sub nsw i64 %126, %127
  %129 = load i64, i64* %5, align 8
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @heap_cached_files, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* %1, align 4
  %137 = call i32 @resend_priority_lists_request(i32 %136)
  br label %160

138:                                              ; preds = %131, %125
  br label %139

139:                                              ; preds = %143, %138
  %140 = load i32, i32* @cached_ptr, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load %struct.cache_uri**, %struct.cache_uri*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @heap_cached, i32 0, i32 0), align 8
  %145 = load i32, i32* @cached_ptr, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @cached_ptr, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %144, i64 %147
  %149 = load %struct.cache_uri*, %struct.cache_uri** %148, align 8
  %150 = load i32, i32* %1, align 4
  %151 = call i32 @cache_remove(%struct.cache_uri* %149, i32 %150)
  br label %139

152:                                              ; preds = %139
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @simulation_stats, i32 0, i32 1), align 8
  %154 = load i32, i32* @cached_ptr, align 4
  %155 = sub nsw i32 %154, 1
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* @cached_ptr, align 4
  %159 = sub nsw i32 %158, 1
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @simulation_stats, i32 0, i32 1), align 8
  br label %160

160:                                              ; preds = %11, %46, %78, %112, %135, %157, %152
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i32 @cache_add(%struct.cache_uri*, i32) #1

declare dso_local i32 @resend_priority_lists_request(i32) #1

declare dso_local i64 @cache_get_uri_size(%struct.cache_uri*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local double @cache_get_uri_heuristic(%struct.cache_uri*) #1

declare dso_local i32 @cache_remove(%struct.cache_uri*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
