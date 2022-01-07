; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_status.c_on_context_init.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_status.c_on_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.st_h2o_root_status_handler_t = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32** }
%struct.st_h2o_status_context_t = type { i32, %struct.TYPE_5__* }

@on_collect_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @on_context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_context_init(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.st_h2o_root_status_handler_t*, align 8
  %6 = alloca %struct.st_h2o_status_context_t*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = bitcast i8* %8 to %struct.st_h2o_root_status_handler_t*
  store %struct.st_h2o_root_status_handler_t* %9, %struct.st_h2o_root_status_handler_t** %5, align 8
  %10 = call %struct.st_h2o_status_context_t* @h2o_mem_alloc(i32 16)
  store %struct.st_h2o_status_context_t* %10, %struct.st_h2o_status_context_t** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.st_h2o_status_context_t*, %struct.st_h2o_status_context_t** %6, align 8
  %13 = getelementptr inbounds %struct.st_h2o_status_context_t, %struct.st_h2o_status_context_t* %12, i32 0, i32 1
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.st_h2o_status_context_t*, %struct.st_h2o_status_context_t** %6, align 8
  %18 = getelementptr inbounds %struct.st_h2o_status_context_t, %struct.st_h2o_status_context_t* %17, i32 0, i32 0
  %19 = load i32, i32* @on_collect_notify, align 4
  %20 = call i32 @h2o_multithread_register_receiver(i32 %16, i32* %18, i32 %19)
  %21 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %22 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %21, i32 0, i32 1
  %23 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %24 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_6__* %22, i64 %27)
  %29 = load %struct.st_h2o_status_context_t*, %struct.st_h2o_status_context_t** %6, align 8
  %30 = getelementptr inbounds %struct.st_h2o_status_context_t, %struct.st_h2o_status_context_t* %29, i32 0, i32 0
  %31 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %32 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %36 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds i32*, i32** %34, i64 %38
  store i32* %30, i32** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %5, align 8
  %43 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %42, i32 0, i32 0
  %44 = load %struct.st_h2o_status_context_t*, %struct.st_h2o_status_context_t** %6, align 8
  %45 = call i32 @h2o_context_set_handler_context(%struct.TYPE_5__* %41, i32* %43, %struct.st_h2o_status_context_t* %44)
  ret void
}

declare dso_local %struct.st_h2o_status_context_t* @h2o_mem_alloc(i32) #1

declare dso_local i32 @h2o_multithread_register_receiver(i32, i32*, i32) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @h2o_context_set_handler_context(%struct.TYPE_5__*, i32*, %struct.st_h2o_status_context_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
