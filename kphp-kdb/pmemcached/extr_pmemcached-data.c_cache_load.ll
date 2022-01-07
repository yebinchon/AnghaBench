; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_cache_load.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_cache_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_8__, i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"loading cache item... \00", align 1
@disable_cache = common dso_local global i64 0, align 8
@current_cache = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"current_cache->data.data_len = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"forceload = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"current_cache->key = \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"key = \00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"key_len = %d, current_cache->key_len = %d\0A\00", align 1
@cache_ok = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"already in cache\0A\00", align 1
@cache_miss = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"not in cache. Adding...\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Copying data from index...\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Data is not loaded. Using aio.\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Adding accumulated data...\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"Skipping loading data from index, because forceload set to 0...\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Added successfully.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_load(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sge i32 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i64, i64* @disable_cache, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.TYPE_9__* @get_cache_item_simple(i8* %18, i32 %19)
  br label %25

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.TYPE_9__* @get_cache_item(i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi %struct.TYPE_9__* [ %20, %17 ], [ %24, %21 ]
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** @current_cache, align 8
  %27 = load i32, i32* @verbosity, align 4
  %28 = icmp sge i32 %27, 4
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load i32, i32* @stderr, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @debug_dump_key(i8* %43, i32 %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @debug_dump_key(i8* %50, i32 %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %29, %25
  %60 = load i32, i32* %6, align 4
  %61 = icmp sge i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, -2
  br i1 %71, label %72, label %90

72:                                               ; preds = %66, %59
  %73 = load i32, i32* @cache_ok, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @cache_ok, align 4
  %75 = load i32, i32* @verbosity, align 4
  %76 = icmp sge i32 %75, 4
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %82 = call i32 @cache_reload(%struct.TYPE_9__* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, -1
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 1
  store i32 %89, i32* %4, align 4
  br label %200

90:                                               ; preds = %66
  %91 = load i32, i32* @cache_miss, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @cache_miss, align 4
  %93 = load i32, i32* @verbosity, align 4
  %94 = icmp sge i32 %93, 4
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %100 = call i32 @cache_reload(%struct.TYPE_9__* %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = icmp ne %struct.TYPE_10__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, -2
  br i1 %110, label %111, label %192

111:                                              ; preds = %105, %98
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %178

114:                                              ; preds = %111
  %115 = load i32, i32* @verbosity, align 4
  %116 = icmp sge i32 %115, 4
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @stderr, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %122 = call i32 @cache_assign_index_entry(%struct.TYPE_9__* %121)
  %123 = icmp eq i32 %122, -2
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i32, i32* @verbosity, align 4
  %126 = icmp sge i32 %125, 4
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %124
  store i32 -2, i32* %4, align 4
  br label %200

131:                                              ; preds = %120
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = icmp ne %struct.TYPE_10__* %134, null
  br i1 %135, label %136, label %177

136:                                              ; preds = %131
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %177

143:                                              ; preds = %136
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, -2
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32, i32* @verbosity, align 4
  %153 = icmp sge i32 %152, 4
  br i1 %153, label %154, label %157

154:                                              ; preds = %143
  %155 = load i32, i32* @stderr, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %143
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %8, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = call i32 @del_entry(%struct.TYPE_10__* %165)
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %168, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %157
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @pmemcached_incr_current(i64 %174)
  br label %176

176:                                              ; preds = %173, %157
  br label %177

177:                                              ; preds = %176, %136, %131
  br label %185

178:                                              ; preds = %111
  %179 = load i32, i32* @verbosity, align 4
  %180 = icmp sge i32 %179, 4
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* @stderr, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %178
  br label %185

185:                                              ; preds = %184, %177
  %186 = load i32, i32* @verbosity, align 4
  %187 = icmp sge i32 %186, 4
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32, i32* @stderr, align 4
  %190 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %185
  br label %192

192:                                              ; preds = %191, %105
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, -1
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 0, i32 1
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %192, %130, %80
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @get_cache_item_simple(i8*, i32) #1

declare dso_local %struct.TYPE_9__* @get_cache_item(i8*, i32) #1

declare dso_local i32 @debug_dump_key(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cache_reload(%struct.TYPE_9__*) #1

declare dso_local i32 @cache_assign_index_entry(%struct.TYPE_9__*) #1

declare dso_local i32 @del_entry(%struct.TYPE_10__*) #1

declare dso_local i32 @pmemcached_incr_current(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
