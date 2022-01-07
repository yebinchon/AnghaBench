; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_util.c_h2o_accept.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_util.c_h2o_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32)* }
%struct.TYPE_16__ = type { i32*, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.timeval = type { i32 }

@accept_data_callbacks = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@on_read_proxy_line = common dso_local global i32 0, align 4
@on_ssl_handshake_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_accept(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.timeval, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @h2o_gettimeofday(i32 %10)
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %17, %2
  %23 = load i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @accept_data_callbacks, i32 0, i32 0), align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %23(%struct.TYPE_16__* %24, %struct.TYPE_15__* %25, i32 %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = load i32, i32* @on_read_proxy_line, align 4
  %38 = call i32 @h2o_socket_read_start(%struct.TYPE_15__* %36, i32 %37)
  br label %47

39:                                               ; preds = %22
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %45 = load i32, i32* @on_ssl_handshake_complete, align 4
  %46 = call i32 @h2o_socket_ssl_handshake(%struct.TYPE_15__* %40, i32* %43, i32* null, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %35
  br label %54

48:                                               ; preds = %17
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @h2o_http1_accept(%struct.TYPE_16__* %49, %struct.TYPE_15__* %50, i32 %52)
  br label %54

54:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @h2o_gettimeofday(i32) #1

declare dso_local i32 @h2o_socket_read_start(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @h2o_socket_ssl_handshake(%struct.TYPE_15__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i32*, i32) #1

declare dso_local i32 @h2o_http1_accept(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
