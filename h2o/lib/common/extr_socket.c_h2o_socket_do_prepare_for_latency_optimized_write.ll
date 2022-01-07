; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socket.c_h2o_socket_do_prepare_for_latency_optimized_write.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socket.c_h2o_socket_do_prepare_for_latency_optimized_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@UINT64_MAX = common dso_local global i32 0, align 4
@adjust_notsent_lowat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h2o_socket_do_prepare_for_latency_optimized_write(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @UINT64_MAX, align 4
  store i32 %11, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = call i32 @h2o_socket_get_loop(%struct.TYPE_9__* %15)
  %17 = call i32 @h2o_evloop_get_execution_time_millisec(i32 %16)
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = call i32 @h2o_socket_get_fd(%struct.TYPE_9__* %22)
  %24 = call i64 @obtain_tcp_info(i32 %23, i32* %5, i32* %6, i32* %7, i32* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %26, %21, %18
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @adjust_notsent_lowat, align 4
  %39 = call i32 @prepare_for_latency_optimized_write(%struct.TYPE_9__* %31, i32* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %44

40:                                               ; preds = %27
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = load i32, i32* @adjust_notsent_lowat, align 4
  %43 = call i32 @disable_latency_optimized_write(%struct.TYPE_9__* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %30
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  ret i64 %48
}

declare dso_local i32 @h2o_evloop_get_execution_time_millisec(i32) #1

declare dso_local i32 @h2o_socket_get_loop(%struct.TYPE_9__*) #1

declare dso_local i64 @obtain_tcp_info(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @h2o_socket_get_fd(%struct.TYPE_9__*) #1

declare dso_local i32 @prepare_for_latency_optimized_write(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @disable_latency_optimized_write(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
