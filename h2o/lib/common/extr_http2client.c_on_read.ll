; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_on_read.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_on_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.st_h2o_http2client_conn_t* }
%struct.st_h2o_http2client_conn_t = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@h2o_httpclient_error_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*)* @on_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_read(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %7, align 8
  store %struct.st_h2o_http2client_conn_t* %8, %struct.st_h2o_http2client_conn_t** %5, align 8
  %9 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %10 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %9, i32 0, i32 0
  %11 = call i32 @h2o_timer_unlink(i32* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %16 = load i32, i32* @h2o_httpclient_error_io, align 4
  %17 = call i32 @call_stream_callbacks_with_error(%struct.st_h2o_http2client_conn_t* %15, i32 %16)
  %18 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %19 = call i32 @close_connection(%struct.st_h2o_http2client_conn_t* %18)
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %22 = call i64 @parse_input(%struct.st_h2o_http2client_conn_t* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %59

25:                                               ; preds = %20
  %26 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %27 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i64 @h2o_timer_is_linked(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %33 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @h2o_timer_unlink(i32* %34)
  %36 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %37 = call i32 @do_emit_writereq(%struct.st_h2o_http2client_conn_t* %36)
  br label %38

38:                                               ; preds = %31, %25
  %39 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %40 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %39, i32 0, i32 0
  %41 = call i64 @h2o_timer_is_linked(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %45 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %51 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %57 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %56, i32 0, i32 0
  %58 = call i32 @h2o_timer_link(i32 %49, i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %14, %24, %43, %38
  ret void
}

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @call_stream_callbacks_with_error(%struct.st_h2o_http2client_conn_t*, i32) #1

declare dso_local i32 @close_connection(%struct.st_h2o_http2client_conn_t*) #1

declare dso_local i64 @parse_input(%struct.st_h2o_http2client_conn_t*) #1

declare dso_local i64 @h2o_timer_is_linked(i32*) #1

declare dso_local i32 @do_emit_writereq(%struct.st_h2o_http2client_conn_t*) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
