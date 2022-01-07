; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_send_response_callback.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_send_response_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.st_mruby_subreq_t = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_7__ = type { i32 }

@app_request_type = common dso_local global i32 0, align 4
@INITIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32*)* @send_response_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_response_callback(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.st_mruby_subreq_t*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.st_mruby_subreq_t* @mrb_data_check_get_ptr(i32 %16, i32 %17, i32* @app_request_type)
  store %struct.st_mruby_subreq_t* %18, %struct.st_mruby_subreq_t** %9, align 8
  %19 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %9, align 8
  %20 = icmp ne %struct.st_mruby_subreq_t* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %9, align 8
  %24 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @mrb_obj_ptr(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @mrb_obj_ptr(i32 %28)
  %30 = icmp eq i64 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %9, align 8
  %35 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @mrb_gc_register(i32 %43, i32 %44)
  %46 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %9, align 8
  %47 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @INITIAL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %4
  %52 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %9, align 8
  %53 = call i32 @send_response_shortcutted(%struct.st_mruby_subreq_t* %52)
  br label %54

54:                                               ; preds = %51, %4
  ret i32 0
}

declare dso_local %struct.st_mruby_subreq_t* @mrb_data_check_get_ptr(i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mrb_obj_ptr(i32) #1

declare dso_local i32 @mrb_gc_register(i32, i32) #1

declare dso_local i32 @send_response_shortcutted(%struct.st_mruby_subreq_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
