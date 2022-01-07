; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_http_fetch_chunk_callback.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_http_fetch_chunk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.st_h2o_mruby_http_request_context_t = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@input_stream_type = common dso_local global i32 0, align 4
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"_HttpInputStream#each wrong self\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32*, i32, i32*)* @http_fetch_chunk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_fetch_chunk_callback(%struct.TYPE_7__* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.st_h2o_mruby_http_request_context_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @mrb_ary_entry(i32 %22, i32 0)
  %24 = call %struct.st_h2o_mruby_http_request_context_t* @mrb_data_check_get_ptr(i32* %21, i32 %23, i32* @input_stream_type)
  store %struct.st_h2o_mruby_http_request_context_t* %24, %struct.st_h2o_mruby_http_request_context_t** %13, align 8
  %25 = icmp eq %struct.st_h2o_mruby_http_request_context_t* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load i32*, i32** %11, align 8
  store i32 1, i32* %27, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %30 = call i32 @mrb_exc_new_str_lit(i32* %28, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %6, align 4
  br label %67

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @mrb_ary_entry(i32 %32, i32 1)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i64 @mrb_bool(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %13, align 8
  %39 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %11, align 8
  store i32 1, i32* %43, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @create_already_consumed_error(i32* %44)
  store i32 %45, i32* %6, align 4
  br label %67

46:                                               ; preds = %37
  %47 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %13, align 8
  %48 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %31
  %50 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %13, align 8
  %51 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %13, align 8
  %57 = call i32 @build_chunk(%struct.st_h2o_mruby_http_request_context_t* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 1, i32* %58, align 4
  br label %65

59:                                               ; preds = %49
  %60 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %13, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @attach_receiver(%struct.st_h2o_mruby_http_request_context_t* %60, i32 %62)
  %64 = call i32 (...) @mrb_nil_value()
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %59, %55
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %42, %26
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.st_h2o_mruby_http_request_context_t* @mrb_data_check_get_ptr(i32*, i32, i32*) #1

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @mrb_exc_new_str_lit(i32*, i32, i8*) #1

declare dso_local i64 @mrb_bool(i32) #1

declare dso_local i32 @create_already_consumed_error(i32*) #1

declare dso_local i32 @build_chunk(%struct.st_h2o_mruby_http_request_context_t*) #1

declare dso_local i32 @attach_receiver(%struct.st_h2o_mruby_http_request_context_t*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
