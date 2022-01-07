; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_websocket.c_ws_read_http_request.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_websocket.c_ws_read_http_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i8*)*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i8*, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Missing \\r\\n\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid HTTP header\00", align 1
@WS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ws_read_http_request(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8*], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  store i64 %27, i64* %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i8* @strnstr(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = call i32 %36(%struct.TYPE_8__* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %2, align 4
  br label %125

39:                                               ; preds = %1
  store i64 0, i64* %9, align 8
  br label %40

40:                                               ; preds = %92, %39
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %41, 3
  br i1 %42, label %43, label %95

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i1 [ false, %44 ], [ %52, %48 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  br label %44

58:                                               ; preds = %53
  %59 = load i8*, i8** %5, align 8
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %71, %58
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 32
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i1 [ false, %60 ], [ %68, %64 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  br label %60

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @strndup(i8* %79, i32 %85)
  br label %88

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %78
  %89 = phi i8* [ %86, %78 ], [ null, %87 ]
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 %90
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %9, align 8
  br label %40

95:                                               ; preds = %40
  %96 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %97 = load i8*, i8** %96, align 16
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  %105 = load i8*, i8** %104, align 16
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i8* %108, i8** %112, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %95
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %119, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = call i32 %120(%struct.TYPE_8__* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 %122, i32* %2, align 4
  br label %125

123:                                              ; preds = %95
  %124 = load i32, i32* @WS_SUCCESS, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %117, %33
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i8* @strnstr(i8*, i8*, i64) #1

declare dso_local i8* @strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
