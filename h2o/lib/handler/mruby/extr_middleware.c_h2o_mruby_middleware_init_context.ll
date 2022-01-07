; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_h2o_mruby_middleware_init_context.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_h2o_mruby_middleware_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.RClass = type { i32 }

@H2O_MRUBY_CODE_MIDDLEWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"H2O\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"App\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"request\00", align 1
@middleware_request_method = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"AppRequest\00", align 1
@H2O_MRUBY_APP_REQUEST_CLASS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"_h2o_middleware_wait_response\00", align 1
@middleware_wait_response_callback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"_can_build_response?\00", align 1
@can_build_response_method = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"_build_response\00", align 1
@build_response_method = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"AppInputStream\00", align 1
@H2O_MRUBY_APP_INPUT_STREAM_CLASS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"_h2o_middleware_wait_chunk\00", align 1
@middleware_wait_chunk_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mruby_middleware_init_context(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.RClass*, align 8
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca %struct.RClass*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @H2O_MRUBY_CODE_MIDDLEWARE, align 4
  %13 = call i32 @h2o_mruby_eval_expr(i32* %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @h2o_mruby_assert(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.RClass* @mrb_define_module(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %17, %struct.RClass** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.RClass*, %struct.RClass** %4, align 8
  %22 = call %struct.RClass* @mrb_class_get_under(i32* %20, %struct.RClass* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.RClass* %22, %struct.RClass** %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.RClass*, %struct.RClass** %5, align 8
  %25 = load i32, i32* @middleware_request_method, align 4
  %26 = call i32 @MRB_ARGS_ARG(i32 1, i32 0)
  %27 = call i32 @mrb_define_method(i32* %23, %struct.RClass* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.RClass*, %struct.RClass** %4, align 8
  %32 = call %struct.RClass* @mrb_class_get_under(i32* %30, %struct.RClass* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store %struct.RClass* %32, %struct.RClass** %6, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @H2O_MRUBY_APP_REQUEST_CLASS, align 4
  %40 = load %struct.RClass*, %struct.RClass** %6, align 8
  %41 = call i32 @mrb_obj_value(%struct.RClass* %40)
  %42 = call i32 @mrb_ary_set(i32* %35, i32 %38, i32 %39, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @middleware_wait_response_callback, align 4
  %45 = call i32 @h2o_mruby_define_callback(i32* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.RClass*, %struct.RClass** %6, align 8
  %48 = load i32, i32* @can_build_response_method, align 4
  %49 = call i32 (...) @MRB_ARGS_NONE()
  %50 = call i32 @mrb_define_method(i32* %46, %struct.RClass* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.RClass*, %struct.RClass** %6, align 8
  %53 = load i32, i32* @build_response_method, align 4
  %54 = call i32 (...) @MRB_ARGS_NONE()
  %55 = call i32 @mrb_define_method(i32* %51, %struct.RClass* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.RClass*, %struct.RClass** %4, align 8
  %60 = call %struct.RClass* @mrb_class_get_under(i32* %58, %struct.RClass* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store %struct.RClass* %60, %struct.RClass** %7, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @H2O_MRUBY_APP_INPUT_STREAM_CLASS, align 4
  %68 = load %struct.RClass*, %struct.RClass** %7, align 8
  %69 = call i32 @mrb_obj_value(%struct.RClass* %68)
  %70 = call i32 @mrb_ary_set(i32* %63, i32 %66, i32 %67, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @middleware_wait_chunk_callback, align 4
  %73 = call i32 @h2o_mruby_define_callback(i32* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @h2o_mruby_assert(i32* %74)
  ret void
}

declare dso_local i32 @h2o_mruby_eval_expr(i32*, i32) #1

declare dso_local i32 @h2o_mruby_assert(i32*) #1

declare dso_local %struct.RClass* @mrb_define_module(i32*, i8*) #1

declare dso_local %struct.RClass* @mrb_class_get_under(i32*, %struct.RClass*, i8*) #1

declare dso_local i32 @mrb_define_method(i32*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_ARG(i32, i32) #1

declare dso_local i32 @mrb_ary_set(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @h2o_mruby_define_callback(i32*, i8*, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
