; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijklivehook.c_open_inner.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijklivehook.c_open_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"probesize\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"formatprobesize\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"analyzeduration\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fpsprobesize\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"max_ts_probe\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"skip-calc-frame-rate\00", align 1
@AV_DICT_MATCH_CASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @open_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_inner(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 9
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %3, align 8
  store i32* null, i32** %4, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = call %struct.TYPE_14__* (...) @avformat_alloc_context()
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %6, align 4
  br label %129

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @av_dict_copy(i32** %4, i64 %28, i32 0)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @av_dict_set_int(i32** %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33, i32 0)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @av_dict_set_int(i32** %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 0)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @av_dict_set_int(i32** %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 0)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @av_dict_set_int(i32** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 0)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @av_dict_set_int(i32** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %49, i32 0)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @AV_DICT_MATCH_CASE, align 4
  %53 = call %struct.TYPE_15__* @av_dict_get(i32* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %52)
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %8, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = icmp ne %struct.TYPE_15__* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %30
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @strtol(i32 %59, i32* null, i32 10)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @av_dict_set_int(i32** %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 0)
  br label %69

69:                                               ; preds = %64, %56
  br label %70

70:                                               ; preds = %69, %30
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @avformat_open_input(%struct.TYPE_14__** %5, i32 %79, i32* null, i32** %4)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %129

84:                                               ; preds = %70
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = call i32 @avformat_find_stream_info(%struct.TYPE_14__* %85, i32* null)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %129

90:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %119, %90
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %91
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = call i32* @avformat_new_stream(%struct.TYPE_14__* %98, i32* null)
  store i32* %99, i32** %10, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = call i32 @AVERROR(i32 %103)
  store i32 %104, i32* %6, align 4
  br label %129

105:                                              ; preds = %97
  %106 = load i32*, i32** %10, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @copy_stream_props(i32* %106, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  br label %129

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %91

122:                                              ; preds = %91
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = call i32 @avformat_close_input(%struct.TYPE_14__** %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  store %struct.TYPE_14__* %126, %struct.TYPE_14__** %128, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %122, %117, %102, %89, %83, %17
  %130 = call i32 @av_dict_free(i32** %4)
  %131 = call i32 @avformat_close_input(%struct.TYPE_14__** %5)
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_14__* @avformat_alloc_context(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_dict_copy(i32**, i64, i32) #1

declare dso_local i32 @av_dict_set_int(i32**, i8*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

declare dso_local i32 @avformat_open_input(%struct.TYPE_14__**, i32, i32*, i32**) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @avformat_new_stream(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @copy_stream_props(i32*, i32) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_14__**) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
