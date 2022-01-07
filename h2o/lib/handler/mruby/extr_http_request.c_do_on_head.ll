; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_do_on_head.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_do_on_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.st_h2o_mruby_http_request_context_t* }
%struct.st_h2o_mruby_http_request_context_t = type { i32* }

@h2o_httpclient_error_is_eos = common dso_local global i8* null, align 8
@headers_sort_cb = common dso_local global i32 0, align 4
@on_body = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32, i32, i32, i32*, i64, i32)* @do_on_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_on_head(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.st_h2o_mruby_http_request_context_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %20, align 8
  store %struct.st_h2o_mruby_http_request_context_t* %21, %struct.st_h2o_mruby_http_request_context_t** %18, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %8
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** @h2o_httpclient_error_is_eos, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %18, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @post_error(%struct.st_h2o_mruby_http_request_context_t* %29, i8* %30)
  store i32* null, i32** %9, align 8
  br label %47

32:                                               ; preds = %24
  %33 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %18, align 8
  %34 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %32, %8
  %36 = load i32*, i32** %15, align 8
  %37 = load i64, i64* %16, align 8
  %38 = load i32, i32* @headers_sort_cb, align 4
  %39 = call i32 @qsort(i32* %36, i64 %37, i32 4, i32 %38)
  %40 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %18, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @post_response(%struct.st_h2o_mruby_http_request_context_t* %40, i32 %41, i32* %42, i64 %43, i32 %44)
  %46 = load i32*, i32** @on_body, align 8
  store i32* %46, i32** %9, align 8
  br label %47

47:                                               ; preds = %35, %28
  %48 = load i32*, i32** %9, align 8
  ret i32* %48
}

declare dso_local i32 @post_error(%struct.st_h2o_mruby_http_request_context_t*, i8*) #1

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

declare dso_local i32 @post_response(%struct.st_h2o_mruby_http_request_context_t*, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
