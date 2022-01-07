; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_log_emit_traces.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_log_emit_traces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@.str = private unnamed_addr constant [13 x i8] c"stack_traces\00", align 1
@log_bt_first = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@emitter_type_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @prof_log_emit_traces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prof_log_emit_traces(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca [19 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @emitter_json_array_kv_begin(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @log_bt_first, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  store i64 19, i64* %8, align 8
  br label %14

14:                                               ; preds = %45, %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @emitter_json_array_begin(i32* %18)
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %42, %17
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = getelementptr inbounds [19 x i8], [19 x i8]* %7, i64 0, i64 0
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @malloc_snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [19 x i8], [19 x i8]* %7, i64 0, i64 0
  store i8* %38, i8** %10, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @emitter_type_string, align 4
  %41 = call i32 @emitter_json_value(i32* %39, i32 %40, i8** %10)
  br label %42

42:                                               ; preds = %27
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %20

45:                                               ; preds = %20
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @emitter_json_array_end(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %5, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @tsd_tsdn(i32* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = call i32 @idalloctm(i32 %53, %struct.TYPE_6__* %54, i32* null, i32* null, i32 1, i32 1)
  br label %14

56:                                               ; preds = %14
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @emitter_json_array_end(i32* %57)
  ret void
}

declare dso_local i32 @emitter_json_array_kv_begin(i32*, i8*) #1

declare dso_local i32 @emitter_json_array_begin(i32*) #1

declare dso_local i32 @malloc_snprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @emitter_json_value(i32*, i32, i8**) #1

declare dso_local i32 @emitter_json_array_end(i32*) #1

declare dso_local i32 @idalloctm(i32, %struct.TYPE_6__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
