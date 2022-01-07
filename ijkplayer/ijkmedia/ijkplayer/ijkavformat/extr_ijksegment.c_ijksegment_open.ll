; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijksegment.c_ijksegment_open.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijksegment.c_ijksegment_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ijksegment:\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@AVAPP_CTRL_WILL_CONCAT_SEGMENT_OPEN = common dso_local global i32 0, align 4
@AVERROR_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ijkapplication\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ijkinject-segment-index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32**)* @ijksegment_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ijksegment_open(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %10, align 8
  %18 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %12, align 8
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @av_strstart(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7)
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28, %4
  %33 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %33, i32* %5, align 4
  br label %98

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strtol(i8* %35, i32* null, i32 0)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 24, i32* %38, align 8
  %39 = load i32, i32* %14, align 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlcpy(i32* %42, i8* %43, i32 8)
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %52, i32* %13, align 4
  br label %96

53:                                               ; preds = %47, %34
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @AVAPP_CTRL_WILL_CONCAT_SEGMENT_OPEN, align 4
  %56 = call i32 @av_application_on_io_control(i32* %54, i32 %55, %struct.TYPE_9__* %11)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %66, i32* %13, align 4
  br label %96

67:                                               ; preds = %59
  %68 = load i32**, i32*** %9, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @av_dict_set_int(i32** %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 0)
  %73 = load i32**, i32*** %9, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @av_dict_set_int(i32** %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 0)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32**, i32*** %9, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = call i32 @ffurl_open_whitelist(i32* %77, i32* %79, i32 %80, i32* %82, i32** %83, i32 %86, i32 %89, %struct.TYPE_7__* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %67
  br label %96

95:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %98

96:                                               ; preds = %94, %65, %51
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %95, %32
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_strstart(i8*, i8*, i8**) #2

declare dso_local i64 @strtol(i8*, i32*, i32) #2

declare dso_local i32 @strlcpy(i32*, i8*, i32) #2

declare dso_local i32 @av_application_on_io_control(i32*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @av_dict_set_int(i32**, i8*, i32, i32) #2

declare dso_local i32 @ffurl_open_whitelist(i32*, i32*, i32, i32*, i32**, i32, i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
