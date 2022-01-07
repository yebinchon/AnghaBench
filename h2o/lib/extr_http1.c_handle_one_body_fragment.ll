; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_handle_one_body_fragment.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_handle_one_body_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { %struct.TYPE_8__, i32*, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (i32, i32, i32)*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Bad Gateway\00", align 1
@OSTREAM_STATE_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_conn_t*, i64, i32)* @handle_one_body_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_one_body_fragment(%struct.st_h2o_http1_conn_t* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.st_h2o_http1_conn_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %8 = call i32 @set_timeout(%struct.st_h2o_http1_conn_t* %7, i32 0, i32* null)
  %9 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %10 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %9, i32 0, i32 3
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = call i32 @h2o_socket_read_stop(%struct.TYPE_9__* %11)
  %13 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %14 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %16, align 8
  %18 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %24 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @h2o_iovec_init(i32 %29, i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i64 %17(i32 %22, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %37 = call i32 @entity_read_send_error_502(%struct.st_h2o_http1_conn_t* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %69

38:                                               ; preds = %3
  %39 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %40 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %39, i32 0, i32 3
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @h2o_buffer_consume(%struct.TYPE_10__** %42, i64 %43)
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %47 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %45
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %38
  %54 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %55 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %58 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %60 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @OSTREAM_STATE_DONE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %67 = call i32 @cleanup_connection(%struct.st_h2o_http1_conn_t* %66)
  br label %68

68:                                               ; preds = %65, %53
  br label %69

69:                                               ; preds = %35, %68, %38
  ret void
}

declare dso_local i32 @set_timeout(%struct.st_h2o_http1_conn_t*, i32, i32*) #1

declare dso_local i32 @h2o_socket_read_stop(%struct.TYPE_9__*) #1

declare dso_local i32 @h2o_iovec_init(i32, i64) #1

declare dso_local i32 @entity_read_send_error_502(%struct.st_h2o_http1_conn_t*, i8*, i8*) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_10__**, i64) #1

declare dso_local i32 @cleanup_connection(%struct.st_h2o_http1_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
