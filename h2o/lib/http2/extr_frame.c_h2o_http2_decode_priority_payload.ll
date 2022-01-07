; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_h2o_http2_decode_priority_payload.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_h2o_http2_decode_priority_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"invalid stream id in PRIORITY frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid PRIORITY frame\00", align 1
@H2O_HTTP2_ERROR_FRAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_http2_decode_priority_payload(i32* %0, %struct.TYPE_3__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8**, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %14, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 5
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %22 = load i32, i32* @H2O_HTTP2_ERROR_FRAME_SIZE, align 4
  store i32 %22, i32* %4, align 4
  br label %29

23:                                               ; preds = %15
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @decode_priority(i32* %24, i32 %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %20, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @decode_priority(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
