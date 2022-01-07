; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_do_emit_writereq.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_do_emit_writereq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__, i32, %struct.TYPE_18__, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i32 }

@emit_writereq_of_openref = common dso_local global i32 0, align 4
@on_write_complete = common dso_local global i32 0, align 4
@h2o_http2_wbuf_buffer_prototype = common dso_local global i32 0, align 4
@H2O_HTTP2_DEFAULT_OUTBUF_WRITE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_emit_writereq(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %4 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %8 = icmp eq %struct.TYPE_15__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 129
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %17 = call i64 @h2o_http2_conn_get_buffer_window(%struct.TYPE_23__* %16)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 6
  %22 = load i32, i32* @emit_writereq_of_openref, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %24 = call i32 @h2o_http2_scheduler_run(i32* %21, i32 %22, %struct.TYPE_23__* %23)
  br label %25

25:                                               ; preds = %19, %15, %1
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %34, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %42, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @on_write_complete, align 4
  %54 = call i32 @h2o_socket_write(i32 %52, %struct.TYPE_22__* %3, i32 1, i32 %53)
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %61, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = call i32 @h2o_buffer_init(%struct.TYPE_15__** %64, i32* @h2o_http2_wbuf_buffer_prototype)
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 2
  %68 = call i32 @h2o_timer_unlink(i32* %67)
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @H2O_HTTP2_DEFAULT_OUTBUF_WRITE_TIMEOUT, align 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  %78 = call i32 @h2o_timer_link(i32 %74, i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %33, %25
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %104 [
    i32 128, label %83
    i32 130, label %84
    i32 129, label %101
  ]

83:                                               ; preds = %79
  br label %104

84:                                               ; preds = %79
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %89, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %104

98:                                               ; preds = %84
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  store i32 129, i32* %100, align 8
  br label %101

101:                                              ; preds = %79, %98
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %103 = call i32 @close_connection_now(%struct.TYPE_23__* %102)
  br label %104

104:                                              ; preds = %79, %101, %97, %83
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @h2o_http2_conn_get_buffer_window(%struct.TYPE_23__*) #1

declare dso_local i32 @h2o_http2_scheduler_run(i32*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @h2o_socket_write(i32, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @h2o_buffer_init(%struct.TYPE_15__**, i32*) #1

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

declare dso_local i32 @close_connection_now(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
