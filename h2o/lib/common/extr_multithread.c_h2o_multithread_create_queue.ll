; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_multithread.c_h2o_multithread_create_queue.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_multithread.c_h2o_multithread_create_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@queue_cb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @h2o_multithread_create_queue(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call %struct.TYPE_8__* @h2o_mem_alloc(i32 16)
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = call i32 @memset(%struct.TYPE_8__* %5, i32 0, i32 16)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @init_async(%struct.TYPE_8__* %7, i32* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = call i32 @pthread_mutex_init(i32* %11, i32* null)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = call i32 @h2o_linklist_init_anchor(i32* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @h2o_linklist_init_anchor(i32* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %21
}

declare dso_local %struct.TYPE_8__* @h2o_mem_alloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @init_async(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @h2o_linklist_init_anchor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
