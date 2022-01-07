; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_on_head.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_on_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.st_h2o_mruby_http_request_context_t* }
%struct.st_h2o_mruby_http_request_context_t = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i8*, i32, i32, i32, i32*, i64, i32)* @on_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @on_head(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.st_h2o_mruby_http_request_context_t*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %22, align 8
  store %struct.st_h2o_mruby_http_request_context_t* %23, %struct.st_h2o_mruby_http_request_context_t** %18, align 8
  %24 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %18, align 8
  %25 = call i64 @try_dispose_context(%struct.st_h2o_mruby_http_request_context_t* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  store i32* null, i32** %9, align 8
  br label %68

28:                                               ; preds = %8
  %29 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %18, align 8
  %30 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mrb_gc_arena_save(i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %18, align 8
  %38 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %18, align 8
  %45 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mrb_gc_protect(i32 %43, i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i32, i32* %17, align 4
  %57 = call i32* @do_on_head(%struct.TYPE_10__* %49, i8* %50, i32 %51, i32 %52, i32 %53, i32* %54, i64 %55, i32 %56)
  store i32* %57, i32** %20, align 8
  %58 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %18, align 8
  %59 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @mrb_gc_arena_restore(i32 %64, i32 %65)
  %67 = load i32*, i32** %20, align 8
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %28, %27
  %69 = load i32*, i32** %9, align 8
  ret i32* %69
}

declare dso_local i64 @try_dispose_context(%struct.st_h2o_mruby_http_request_context_t*) #1

declare dso_local i32 @mrb_gc_arena_save(i32) #1

declare dso_local i32 @mrb_gc_protect(i32, i32) #1

declare dso_local i32* @do_on_head(%struct.TYPE_10__*, i8*, i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
