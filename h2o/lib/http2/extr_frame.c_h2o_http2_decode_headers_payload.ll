; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_h2o_http2_decode_headers_payload.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_h2o_http2_decode_headers_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32* }

@.str = private unnamed_addr constant [35 x i8] c"invalid stream id in HEADERS frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_FLAG_PADDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid HEADERS frame\00", align 1
@H2O_HTTP2_FRAME_FLAG_PRIORITY = common dso_local global i32 0, align 4
@h2o_http2_default_priority = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_http2_decode_headers_payload(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %9, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %28, i32* %4, align 4
  br label %103

29:                                               ; preds = %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_PADDED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %29
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp eq i32* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %41, align 8
  %42 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %42, i32* %4, align 4
  br label %103

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  %46 = load i32, i32* %44, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = ptrtoint i32* %47 to i64
  %50 = ptrtoint i32* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %57, align 8
  %58 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %58, i32* %4, align 4
  br label %103

59:                                               ; preds = %43
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = sext i32 %60 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %9, align 8
  br label %65

65:                                               ; preds = %59, %29
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_PRIORITY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = ptrtoint i32* %73 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = icmp slt i64 %78, 5
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %103

81:                                               ; preds = %72
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32*, i32** %8, align 8
  %85 = call i32* @decode_priority(i32* %83, i32* %84)
  store i32* %85, i32** %8, align 8
  br label %90

86:                                               ; preds = %65
  %87 = load i32, i32* @h2o_http2_default_priority, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = ptrtoint i32* %94 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %90, %80, %56, %40, %26
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32* @decode_priority(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
