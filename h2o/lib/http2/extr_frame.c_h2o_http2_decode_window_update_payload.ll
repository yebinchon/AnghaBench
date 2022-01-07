; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_h2o_http2_decode_window_update_payload.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_h2o_http2_decode_window_update_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"invalid WINDOW_UPDATE frame\00", align 1
@H2O_HTTP2_ERROR_FRAME_SIZE = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_http2_decode_window_update_payload(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 4
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* @H2O_HTTP2_ERROR_FRAME_SIZE, align 4
  store i32 %17, i32* %5, align 4
  br label %40

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @h2o_http2_decode32u(i32 %21)
  %23 = and i32 %22, 2147483647
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %18
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %30, %14
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @h2o_http2_decode32u(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
