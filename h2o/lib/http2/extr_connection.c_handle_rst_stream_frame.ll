; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_rst_stream_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_rst_stream_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"unexpected stream id in RST_STREAM frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i8**)* @handle_rst_stream_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rst_stream_frame(i32* %0, %struct.TYPE_4__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = call i32 @h2o_http2_decode_rst_stream_payload(i32* %8, %struct.TYPE_4__* %11, i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @is_idle_stream_id(i32* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %26, i32* %4, align 4
  br label %40

27:                                               ; preds = %17
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @h2o_http2_conn_get_stream(i32* %28, i32 %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @h2o_http2_stream_reset(i32* %36, i32* %37)
  br label %39

39:                                               ; preds = %35, %27
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %24, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @h2o_http2_decode_rst_stream_payload(i32*, %struct.TYPE_4__*, i8**) #1

declare dso_local i64 @is_idle_stream_id(i32*, i32) #1

declare dso_local i32* @h2o_http2_conn_get_stream(i32*, i32) #1

declare dso_local i32 @h2o_http2_stream_reset(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
