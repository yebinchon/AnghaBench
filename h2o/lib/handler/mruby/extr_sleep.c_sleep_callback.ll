; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sleep.c_sleep_callback.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sleep.c_sleep_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.st_h2o_mruby_sleep_context_t = type { %struct.TYPE_13__*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"to_f\00", align 1
@E_NOMETHOD_ERROR = common dso_local global i32 0, align 4
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"the argument of the sleep function must respond to 'to_f' method\00", align 1
@on_sleep_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32*, i32, i32*)* @sleep_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sleep_callback(%struct.TYPE_13__* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.st_h2o_mruby_sleep_context_t*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @mrb_array_p(i32 %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @RARRAY_LEN(i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = call i32 (...) @mrb_nil_value()
  store i32 %29, i32* %6, align 4
  br label %107

30:                                               ; preds = %5
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @mrb_ary_entry(i32 %31, i32 0)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @mrb_funcall(%struct.TYPE_12__* %33, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %30
  %41 = load i32*, i32** %11, align 8
  store i32 1, i32* %41, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @mrb_obj_value(i32* %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @E_NOMETHOD_ERROR, align 4
  %49 = call i64 @mrb_obj_is_kind_of(%struct.TYPE_12__* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %53 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %54 = call i32 @mrb_exc_new_str_lit(%struct.TYPE_12__* %52, i32 %53, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %51, %40
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %6, align 4
  br label %107

59:                                               ; preds = %30
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @mrb_float(i32 %60)
  %62 = mul nsw i32 %61, 1000
  store i32 %62, i32* %15, align 4
  %63 = call %struct.st_h2o_mruby_sleep_context_t* @h2o_mem_alloc(i32 24)
  store %struct.st_h2o_mruby_sleep_context_t* %63, %struct.st_h2o_mruby_sleep_context_t** %16, align 8
  %64 = load %struct.st_h2o_mruby_sleep_context_t*, %struct.st_h2o_mruby_sleep_context_t** %16, align 8
  %65 = call i32 @memset(%struct.st_h2o_mruby_sleep_context_t* %64, i32 0, i32 24)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = load %struct.st_h2o_mruby_sleep_context_t*, %struct.st_h2o_mruby_sleep_context_t** %16, align 8
  %68 = getelementptr inbounds %struct.st_h2o_mruby_sleep_context_t, %struct.st_h2o_mruby_sleep_context_t* %67, i32 0, i32 0
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %68, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.st_h2o_mruby_sleep_context_t*, %struct.st_h2o_mruby_sleep_context_t** %16, align 8
  %72 = getelementptr inbounds %struct.st_h2o_mruby_sleep_context_t, %struct.st_h2o_mruby_sleep_context_t* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.st_h2o_mruby_sleep_context_t*, %struct.st_h2o_mruby_sleep_context_t** %16, align 8
  %74 = getelementptr inbounds %struct.st_h2o_mruby_sleep_context_t, %struct.st_h2o_mruby_sleep_context_t* %73, i32 0, i32 2
  %75 = load i32, i32* @on_sleep_timeout, align 4
  %76 = call i32 @h2o_timer_init(i32* %74, i32 %75)
  %77 = load %struct.st_h2o_mruby_sleep_context_t*, %struct.st_h2o_mruby_sleep_context_t** %16, align 8
  %78 = getelementptr inbounds %struct.st_h2o_mruby_sleep_context_t, %struct.st_h2o_mruby_sleep_context_t* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.st_h2o_mruby_sleep_context_t*, %struct.st_h2o_mruby_sleep_context_t** %16, align 8
  %88 = getelementptr inbounds %struct.st_h2o_mruby_sleep_context_t, %struct.st_h2o_mruby_sleep_context_t* %87, i32 0, i32 2
  %89 = call i32 @h2o_timer_link(i32 %85, i32 %86, i32* %88)
  %90 = load %struct.st_h2o_mruby_sleep_context_t*, %struct.st_h2o_mruby_sleep_context_t** %16, align 8
  %91 = getelementptr inbounds %struct.st_h2o_mruby_sleep_context_t, %struct.st_h2o_mruby_sleep_context_t* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @h2o_now(i32 %98)
  %100 = load %struct.st_h2o_mruby_sleep_context_t*, %struct.st_h2o_mruby_sleep_context_t** %16, align 8
  %101 = getelementptr inbounds %struct.st_h2o_mruby_sleep_context_t, %struct.st_h2o_mruby_sleep_context_t* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mrb_gc_register(%struct.TYPE_12__* %102, i32 %104)
  %106 = call i32 (...) @mrb_nil_value()
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %59, %55, %28
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mrb_array_p(i32) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @mrb_funcall(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @mrb_obj_value(i32*) #1

declare dso_local i64 @mrb_obj_is_kind_of(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @mrb_exc_new_str_lit(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @mrb_float(i32) #1

declare dso_local %struct.st_h2o_mruby_sleep_context_t* @h2o_mem_alloc(i32) #1

declare dso_local i32 @memset(%struct.st_h2o_mruby_sleep_context_t*, i32, i32) #1

declare dso_local i32 @h2o_timer_init(i32*, i32) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

declare dso_local i32 @h2o_now(i32) #1

declare dso_local i32 @mrb_gc_register(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
