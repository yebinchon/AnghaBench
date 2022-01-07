; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_log_emit_threads.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_log_emit_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@log_thr_first = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"thr_uid\00", align 1
@emitter_type_uint64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"thr_name\00", align 1
@emitter_type_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @prof_log_emit_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prof_log_emit_threads(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @emitter_json_array_kv_begin(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @log_thr_first, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  br label %11

11:                                               ; preds = %14, %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @emitter_json_object_begin(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @emitter_type_uint64, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @emitter_json_kv(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %18, i8** %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @emitter_type_string, align 4
  %27 = call i32 @emitter_json_kv(i32* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %26, i8** %7)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @emitter_json_object_end(i32* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %6, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %5, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @tsd_tsdn(i32* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = call i32 @idalloctm(i32 %35, %struct.TYPE_4__* %36, i32* null, i32* null, i32 1, i32 1)
  br label %11

38:                                               ; preds = %11
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @emitter_json_array_end(i32* %39)
  ret void
}

declare dso_local i32 @emitter_json_array_kv_begin(i32*, i8*) #1

declare dso_local i32 @emitter_json_object_begin(i32*) #1

declare dso_local i32 @emitter_json_kv(i32*, i8*, i32, i8**) #1

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
