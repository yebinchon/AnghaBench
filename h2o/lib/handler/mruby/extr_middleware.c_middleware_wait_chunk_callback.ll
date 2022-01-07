; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_middleware_wait_chunk_callback.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_middleware_wait_chunk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.st_mruby_subreq_t = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"downstream HTTP closed\00", align 1
@app_input_stream_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"AppInputStream#each wrong self\00", align 1
@FINAL_RECEIVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32, i32*)* @middleware_wait_chunk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @middleware_wait_chunk_callback(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.st_mruby_subreq_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @mrb_ary_entry(i32 %21, i32 0)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32* @DATA_PTR(i32 %23)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %29 = call i32 @mrb_exc_new_str_lit(i32* %27, i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  br label %94

30:                                               ; preds = %5
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call %struct.st_mruby_subreq_t* @mrb_data_check_get_ptr(i32* %31, i32 %32, i32* @app_input_stream_type)
  store %struct.st_mruby_subreq_t* %33, %struct.st_mruby_subreq_t** %13, align 8
  %34 = icmp eq %struct.st_mruby_subreq_t* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %38 = call i32 @mrb_exc_new_str_lit(i32* %36, i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %6, align 4
  br label %94

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %13, align 8
  %42 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %40
  %48 = load i32*, i32** %11, align 8
  store i32 1, i32* %48, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %13, align 8
  %51 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %13, align 8
  %56 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @h2o_mruby_new_str(i32* %49, i32 %54, i64 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %13, align 8
  %62 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %61, i32 0, i32 2
  %63 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %13, align 8
  %64 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @h2o_buffer_consume(%struct.TYPE_7__** %62, i64 %67)
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %6, align 4
  br label %94

70:                                               ; preds = %40
  %71 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %13, align 8
  %72 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FINAL_RECEIVED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32*, i32** %11, align 8
  store i32 1, i32* %77, align 4
  %78 = call i32 (...) @mrb_nil_value()
  store i32 %78, i32* %6, align 4
  br label %94

79:                                               ; preds = %70
  %80 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %13, align 8
  %81 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @mrb_nil_p(i32 %82)
  %84 = call i32 @assert(i32 %83)
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %13, align 8
  %88 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mrb_gc_register(i32* %89, i32 %91)
  %93 = call i32 (...) @mrb_nil_value()
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %79, %76, %47, %35, %26
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32* @DATA_PTR(i32) #1

declare dso_local i32 @mrb_exc_new_str_lit(i32*, i32, i8*) #1

declare dso_local %struct.st_mruby_subreq_t* @mrb_data_check_get_ptr(i32*, i32, i32*) #1

declare dso_local i32 @h2o_mruby_new_str(i32*, i32, i64) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_7__**, i64) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_gc_register(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
