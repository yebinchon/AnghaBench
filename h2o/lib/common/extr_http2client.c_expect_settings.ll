; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_expect_settings.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_expect_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING = common dso_local global i64 0, align 8
@H2O_HTTP2_SETTINGS_CLIENT_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_TYPE_SETTINGS = common dso_local global i64 0, align 8
@H2O_HTTP2_ERROR_PROTOCOL_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@expect_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http2client_conn_t*, i32*, i64, i8**)* @expect_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect_settings(%struct.st_h2o_http2client_conn_t* %0, i32* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %14 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @H2O_HTTP2_SETTINGS_CLIENT_MAX_FRAME_SIZE, align 4
  %23 = load i8**, i8*** %9, align 8
  %24 = call i32 @h2o_http2_decode_frame(%struct.TYPE_6__* %10, i32* %20, i64 %21, i32 %22, i8** %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @H2O_HTTP2_FRAME_TYPE_SETTINGS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL_CLOSE_IMMEDIATELY, align 4
  store i32 %34, i32* %5, align 4
  br label %49

35:                                               ; preds = %28
  %36 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %37 = load i8**, i8*** %9, align 8
  %38 = call i32 @handle_settings_frame(%struct.st_h2o_http2client_conn_t* %36, %struct.TYPE_6__* %10, i8** %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %49

43:                                               ; preds = %35
  %44 = load i32, i32* @expect_default, align 4
  %45 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %46 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %41, %33, %26
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_http2_decode_frame(%struct.TYPE_6__*, i32*, i64, i32, i8**) #1

declare dso_local i32 @handle_settings_frame(%struct.st_h2o_http2client_conn_t*, %struct.TYPE_6__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
