; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_h2o_mruby_http_request_init_context.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_h2o_mruby_http_request_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.RClass = type { i32 }

@H2O_MRUBY_CODE_HTTP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"(h2o)lib/handler/mruby/embedded/http_request.rb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"H2O\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"http_request\00", align 1
@http_request_method = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"HttpRequest\00", align 1
@H2O_MRUBY_HTTP_REQUEST_CLASS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"HttpInputStream\00", align 1
@H2O_MRUBY_HTTP_INPUT_STREAM_CLASS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@H2O_MRUBY_HTTP_EMPTY_INPUT_STREAM_CLASS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"_h2o__http_join_response\00", align 1
@http_join_response_callback = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"_h2o__http_fetch_chunk\00", align 1
@http_fetch_chunk_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mruby_http_request_init_context(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.RClass*, align 8
  %5 = alloca %struct.RClass*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = load i32, i32* @H2O_MRUBY_CODE_HTTP_REQUEST, align 4
  %11 = call i32 @h2o_mruby_eval_expr_location(%struct.TYPE_11__* %9, i32 %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = call i32 @h2o_mruby_assert(%struct.TYPE_11__* %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call %struct.RClass* @mrb_define_module(%struct.TYPE_11__* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.RClass* %15, %struct.RClass** %4, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @http_request_method, align 4
  %21 = call i32 @MRB_ARGS_ARG(i32 1, i32 2)
  %22 = call i32 @mrb_define_method(%struct.TYPE_11__* %16, i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = load %struct.RClass*, %struct.RClass** %4, align 8
  %25 = call %struct.RClass* @mrb_class_get_under(%struct.TYPE_11__* %23, %struct.RClass* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store %struct.RClass* %25, %struct.RClass** %5, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @H2O_MRUBY_HTTP_REQUEST_CLASS, align 4
  %31 = load %struct.RClass*, %struct.RClass** %5, align 8
  %32 = call i32 @mrb_obj_value(%struct.RClass* %31)
  %33 = call i32 @mrb_ary_set(%struct.TYPE_11__* %26, i32 %29, i32 %30, i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = load %struct.RClass*, %struct.RClass** %4, align 8
  %36 = call %struct.RClass* @mrb_class_get_under(%struct.TYPE_11__* %34, %struct.RClass* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store %struct.RClass* %36, %struct.RClass** %5, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @H2O_MRUBY_HTTP_INPUT_STREAM_CLASS, align 4
  %42 = load %struct.RClass*, %struct.RClass** %5, align 8
  %43 = call i32 @mrb_obj_value(%struct.RClass* %42)
  %44 = call i32 @mrb_ary_set(%struct.TYPE_11__* %37, i32 %40, i32 %41, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = load %struct.RClass*, %struct.RClass** %5, align 8
  %47 = call %struct.RClass* @mrb_class_get_under(%struct.TYPE_11__* %45, %struct.RClass* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store %struct.RClass* %47, %struct.RClass** %5, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @H2O_MRUBY_HTTP_EMPTY_INPUT_STREAM_CLASS, align 4
  %53 = load %struct.RClass*, %struct.RClass** %5, align 8
  %54 = call i32 @mrb_obj_value(%struct.RClass* %53)
  %55 = call i32 @mrb_ary_set(%struct.TYPE_11__* %48, i32 %51, i32 %52, i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = load i32, i32* @http_join_response_callback, align 4
  %58 = call i32 @h2o_mruby_define_callback(%struct.TYPE_11__* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = load i32, i32* @http_fetch_chunk_callback, align 4
  %61 = call i32 @h2o_mruby_define_callback(%struct.TYPE_11__* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  ret void
}

declare dso_local i32 @h2o_mruby_eval_expr_location(%struct.TYPE_11__*, i32, i8*, i32) #1

declare dso_local i32 @h2o_mruby_assert(%struct.TYPE_11__*) #1

declare dso_local %struct.RClass* @mrb_define_module(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_11__*, i32, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_ARG(i32, i32) #1

declare dso_local %struct.RClass* @mrb_class_get_under(%struct.TYPE_11__*, %struct.RClass*, i8*) #1

declare dso_local i32 @mrb_ary_set(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @h2o_mruby_define_callback(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
