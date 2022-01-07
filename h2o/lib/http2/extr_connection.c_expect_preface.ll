; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_expect_preface.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_expect_preface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@CONNECTION_PREFACE = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@H2O_HTTP2_ERROR_INCOMPLETE = common dso_local global i64 0, align 8
@H2O_HTTP2_ERROR_PROTOCOL_CLOSE_IMMEDIATELY = common dso_local global i64 0, align 8
@SERVER_PREFACE = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@expect_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32*, i64, i8**)* @expect_preface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expect_preface(%struct.TYPE_14__* %0, i32* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CONNECTION_PREFACE, i32 0, i32 0), align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i64, i64* @H2O_HTTP2_ERROR_INCOMPLETE, align 8
  store i64 %15, i64* %5, align 8
  br label %66

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CONNECTION_PREFACE, i32 0, i32 1), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CONNECTION_PREFACE, i32 0, i32 0), align 8
  %20 = call i64 @memcmp(i32* %17, i32 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @H2O_HTTP2_ERROR_PROTOCOL_CLOSE_IMMEDIATELY, align 8
  store i64 %23, i64* %5, align 8
  br label %66

24:                                               ; preds = %16
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SERVER_PREFACE, i32 0, i32 0), align 8
  %29 = call i32 @h2o_buffer_reserve(%struct.TYPE_15__** %27, i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SERVER_PREFACE, i32 0, i32 1), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SERVER_PREFACE, i32 0, i32 0), align 8
  %35 = call i32 @memcpy(i32 %32, i32 %33, i64 %34)
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SERVER_PREFACE, i32 0, i32 0), align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %36
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %24
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @h2o_http2_encode_origin_frame(%struct.TYPE_15__** %53, i32 %57)
  br label %59

59:                                               ; preds = %50, %24
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = call i32 @h2o_http2_conn_request_write(%struct.TYPE_14__* %60)
  %62 = load i32, i32* @expect_default, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CONNECTION_PREFACE, i32 0, i32 0), align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %59, %22, %14
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i64 @memcmp(i32*, i32, i64) #1

declare dso_local i32 @h2o_buffer_reserve(%struct.TYPE_15__**, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @h2o_http2_encode_origin_frame(%struct.TYPE_15__**, i32) #1

declare dso_local i32 @h2o_http2_conn_request_write(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
