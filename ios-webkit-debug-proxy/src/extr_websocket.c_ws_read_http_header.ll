; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_websocket.c_ws_read_http_header.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_websocket.c_ws_read_http_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i8*)*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Missing \\r\\n\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"TODO header continuation\00", align 1
@WS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ws_read_http_header(%struct.TYPE_8__* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %8, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  store i64 %32, i64* %10, align 8
  %33 = load i8**, i8*** %6, align 8
  store i8* null, i8** %33, align 8
  %34 = load i8**, i8*** %7, align 8
  store i8* null, i8** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i8* @strnstr(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = call i32 %43(%struct.TYPE_8__* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %4, align 4
  br label %136

46:                                               ; preds = %3
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %128

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = call i32 %59(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 %61, i32* %4, align 4
  br label %136

62:                                               ; preds = %50
  %63 = load i8*, i8** %12, align 8
  store i8* %63, i8** %13, align 8
  br label %64

64:                                               ; preds = %76, %62
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %13, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 58
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i1 [ false, %64 ], [ %73, %69 ]
  br i1 %75, label %76, label %77

76:                                               ; preds = %74
  br label %64

77:                                               ; preds = %74
  %78 = load i8*, i8** %13, align 8
  store i8* %78, i8** %14, align 8
  br label %79

79:                                               ; preds = %91, %77
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %14, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = icmp ult i8* %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** %14, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 32
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi i1 [ false, %79 ], [ %88, %84 ]
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  br label %79

92:                                               ; preds = %89
  %93 = load i8*, i8** %11, align 8
  store i8* %93, i8** %15, align 8
  br label %94

94:                                               ; preds = %106, %92
  %95 = load i8*, i8** %15, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ugt i8* %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 32
  br label %104

104:                                              ; preds = %98, %94
  %105 = phi i1 [ false, %94 ], [ %103, %98 ]
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = load i8*, i8** %15, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 -1
  store i8* %108, i8** %15, align 8
  br label %94

109:                                              ; preds = %104
  %110 = load i8*, i8** %12, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = call i8* @strndup(i8* %110, i32 %116)
  %118 = load i8**, i8*** %6, align 8
  store i8* %117, i8** %118, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = call i8* @strndup(i8* %119, i32 %125)
  %127 = load i8**, i8*** %7, align 8
  store i8* %126, i8** %127, align 8
  br label %128

128:                                              ; preds = %109, %46
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i8* %130, i8** %134, align 8
  %135 = load i32, i32* @WS_SUCCESS, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %128, %56, %40
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i8* @strnstr(i8*, i8*, i64) #1

declare dso_local i8* @strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
