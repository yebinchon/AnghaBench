; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_on_body.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_on_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.st_h2o_mruby_http_request_context_t* }
%struct.st_h2o_mruby_http_request_context_t = type { %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*)* @on_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_body(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.st_h2o_mruby_http_request_context_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %10, align 8
  store %struct.st_h2o_mruby_http_request_context_t* %11, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %12 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %13 = call i64 @try_dispose_context(%struct.st_h2o_mruby_http_request_context_t* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %18 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mrb_gc_arena_save(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %26 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %33 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mrb_gc_protect(i32 %31, i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @do_on_body(%struct.TYPE_10__* %37, i8* %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %41 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mrb_gc_arena_restore(i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %16, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @try_dispose_context(%struct.st_h2o_mruby_http_request_context_t*) #1

declare dso_local i32 @mrb_gc_arena_save(i32) #1

declare dso_local i32 @mrb_gc_protect(i32, i32) #1

declare dso_local i32 @do_on_body(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @mrb_gc_arena_restore(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
