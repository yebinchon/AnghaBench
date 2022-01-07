; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_entity_read_do_send_error.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_entity_read_do_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@OSTREAM_STATE_HEAD = common dso_local global i64 0, align 8
@H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION = common dso_local global i32 0, align 4
@OSTREAM_STATE_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_conn_t*, i32, i64, i8*, i8*)* @entity_read_do_send_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entity_read_do_send_error(%struct.st_h2o_http1_conn_t* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.st_h2o_http1_conn_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %12 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %17 = call i32 @set_timeout(%struct.st_h2o_http1_conn_t* %16, i32 0, i32* null)
  %18 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @h2o_socket_read_stop(i32 %20)
  %22 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %23 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %5
  %28 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %29 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OSTREAM_STATE_HEAD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %46 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %45, i32 0, i32 1
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* @H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION, align 4
  %51 = call i32 @h2o_send_error_generic(%struct.TYPE_8__* %46, i32 %47, i8* %48, i8* %49, i32 %50)
  br label %66

52:                                               ; preds = %27, %5
  %53 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %54 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %57 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OSTREAM_STATE_DONE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %6, align 8
  %64 = call i32 @cleanup_connection(%struct.st_h2o_http1_conn_t* %63)
  br label %65

65:                                               ; preds = %62, %52
  br label %66

66:                                               ; preds = %65, %34
  ret void
}

declare dso_local i32 @set_timeout(%struct.st_h2o_http1_conn_t*, i32, i32*) #1

declare dso_local i32 @h2o_socket_read_stop(i32) #1

declare dso_local i32 @h2o_send_error_generic(%struct.TYPE_8__*, i32, i8*, i8*, i32) #1

declare dso_local i32 @cleanup_connection(%struct.st_h2o_http1_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
