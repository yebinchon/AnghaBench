; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_serialize_top_result_as_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_serialize_top_result_as_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.cache_uri** }
%struct.cache_uri = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.cache_local_copy = type { i32 }
%struct.amortization_counter = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@amortization_counter_types = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\09%.7lg\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\09%lld\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\09%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @serialize_top_result_as_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serialize_top_result_as_text(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2048 x i8], align 16
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca %struct.cache_uri*, align 8
  %12 = alloca %struct.cache_local_copy*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.amortization_counter*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %166, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %169

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.cache_uri**, %struct.cache_uri*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %28, i64 %30
  %32 = load %struct.cache_uri*, %struct.cache_uri** %31, align 8
  store %struct.cache_uri* %32, %struct.cache_uri** %11, align 8
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %34 = call i32 @cache_bclear(%struct.TYPE_9__* %10, i8* %33, i32 2048)
  store %struct.cache_local_copy* null, %struct.cache_local_copy** %12, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -2147483648
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %23
  %41 = load %struct.cache_uri*, %struct.cache_uri** %11, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.cache_local_copy* @cache_uri_local_copy_find(%struct.cache_uri* %41, i32 %44)
  store %struct.cache_local_copy* %45, %struct.cache_local_copy** %12, align 8
  %46 = load %struct.cache_local_copy*, %struct.cache_local_copy** %12, align 8
  %47 = call i32 @assert(%struct.cache_local_copy* %46)
  %48 = load %struct.cache_local_copy*, %struct.cache_local_copy** %12, align 8
  %49 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.TYPE_9__*, i8*, ...) @cache_bprintf(%struct.TYPE_9__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %40, %23
  %53 = load %struct.cache_uri*, %struct.cache_uri** %11, align 8
  %54 = call i32 @cache_get_uri_name(%struct.cache_uri* %53)
  %55 = call i32 (%struct.TYPE_9__*, i8*, ...) @cache_bprintf(%struct.TYPE_9__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %72, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @amortization_counter_types, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load %struct.cache_uri*, %struct.cache_uri** %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @cache_uri_get_acounter_value(%struct.cache_uri* %67, i32 %68)
  %70 = sitofp i64 %69 to double
  %71 = call i32 (%struct.TYPE_9__*, i8*, ...) @cache_bprintf(%struct.TYPE_9__* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %70)
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %62

75:                                               ; preds = %62
  br label %97

76:                                               ; preds = %52
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load %struct.cache_uri*, %struct.cache_uri** %11, align 8
  %84 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = bitcast i32* %89 to %struct.amortization_counter*
  store %struct.amortization_counter* %90, %struct.amortization_counter** %14, align 8
  %91 = load %struct.amortization_counter*, %struct.amortization_counter** %14, align 8
  %92 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sitofp i64 %93 to double
  %95 = call i32 (%struct.TYPE_9__*, i8*, ...) @cache_bprintf(%struct.TYPE_9__* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %94)
  br label %96

96:                                               ; preds = %82, %76
  br label %97

97:                                               ; preds = %96, %75
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 2
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.cache_uri*, %struct.cache_uri** %11, align 8
  %105 = call i32 @cache_uri_get_size(%struct.cache_uri* %104)
  %106 = call i32 (%struct.TYPE_9__*, i8*, ...) @cache_bprintf(%struct.TYPE_9__* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 96
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %107
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %114 = load %struct.cache_local_copy*, %struct.cache_local_copy** %12, align 8
  %115 = call i32 @assert(%struct.cache_local_copy* %114)
  %116 = load %struct.cache_local_copy*, %struct.cache_local_copy** %12, align 8
  %117 = call i32 @cache_local_copy_get_yellow_light_time(%struct.cache_local_copy* %116, i32* %15, i32* %16)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load i32, i32* %15, align 4
  %125 = call i32 (%struct.TYPE_9__*, i8*, ...) @cache_bprintf(%struct.TYPE_9__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %123, %113
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 64
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* %16, align 4
  %134 = call i32 (%struct.TYPE_9__*, i8*, ...) @cache_bprintf(%struct.TYPE_9__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %132, %126
  br label %136

136:                                              ; preds = %135, %107
  %137 = call i32 (%struct.TYPE_9__*, i8*, ...) @cache_bprintf(%struct.TYPE_9__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp sge i32 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %169

144:                                              ; preds = %136
  %145 = load i32, i32* %8, align 4
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %145, %147
  %149 = load i32, i32* %6, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %169

152:                                              ; preds = %144
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @memcpy(i8* %156, i32 %158, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %152
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %17

169:                                              ; preds = %151, %143, %17
  %170 = load i32, i32* %8, align 4
  ret i32 %170
}

declare dso_local i32 @cache_bclear(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local %struct.cache_local_copy* @cache_uri_local_copy_find(%struct.cache_uri*, i32) #1

declare dso_local i32 @assert(%struct.cache_local_copy*) #1

declare dso_local i32 @cache_bprintf(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @cache_get_uri_name(%struct.cache_uri*) #1

declare dso_local i64 @cache_uri_get_acounter_value(%struct.cache_uri*, i32) #1

declare dso_local i32 @cache_uri_get_size(%struct.cache_uri*) #1

declare dso_local i32 @cache_local_copy_get_yellow_light_time(%struct.cache_local_copy*, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
