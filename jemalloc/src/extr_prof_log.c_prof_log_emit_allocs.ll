; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_log_emit_allocs.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_log_emit_allocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"allocations\00", align 1
@log_alloc_first = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"alloc_thread\00", align 1
@emitter_type_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"free_thread\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"alloc_trace\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"free_trace\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"alloc_timestamp\00", align 1
@emitter_type_uint64 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"free_timestamp\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"usize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @prof_log_emit_allocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prof_log_emit_allocs(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @emitter_json_array_kv_begin(i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @log_alloc_first, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  br label %10

10:                                               ; preds = %13, %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @emitter_json_object_begin(i32* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @emitter_type_size, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 7
  %20 = call i32 @emitter_json_kv(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @emitter_type_size, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  %25 = call i32 @emitter_json_kv(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @emitter_type_size, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  %30 = call i32 @emitter_json_kv(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @emitter_type_size, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = call i32 @emitter_json_kv(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @emitter_type_uint64, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = call i32 @emitter_json_kv(i32* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %37, i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @emitter_type_uint64, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = call i32 @emitter_json_kv(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @emitter_type_uint64, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = call i32 @emitter_json_kv(i32* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %47, i32* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @emitter_json_object_end(i32* %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %6, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %5, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @tsd_tsdn(i32* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = call i32 @idalloctm(i32 %58, %struct.TYPE_4__* %59, i32* null, i32* null, i32 1, i32 1)
  br label %10

61:                                               ; preds = %10
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @emitter_json_array_end(i32* %62)
  ret void
}

declare dso_local i32 @emitter_json_array_kv_begin(i32*, i8*) #1

declare dso_local i32 @emitter_json_object_begin(i32*) #1

declare dso_local i32 @emitter_json_kv(i32*, i8*, i32, i32*) #1

declare dso_local i32 @emitter_json_object_end(i32*) #1

declare dso_local i32 @idalloctm(i32, %struct.TYPE_4__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @emitter_json_array_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
