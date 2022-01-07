; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_cmdutils.c_filter_codec_opts.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_cmdutils.c_filter_codec_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i8*, i32 }

@AV_OPT_FLAG_ENCODING_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_DECODING_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_VIDEO_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_AUDIO_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_SUBTITLE_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@AV_OPT_SEARCH_FAKE_OBJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @filter_codec_opts(i32* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_16__* %3, %struct.TYPE_19__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %13, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @AV_OPT_FLAG_ENCODING_PARAM, align 4
  br label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @AV_OPT_FLAG_DECODING_PARAM, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %14, align 4
  store i8 0, i8* %15, align 1
  %28 = call i32* (...) @avcodec_get_class()
  store i32* %28, i32** %16, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %30 = icmp ne %struct.TYPE_19__* %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.TYPE_19__* @avcodec_find_encoder(i32 %37)
  br label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.TYPE_19__* @avcodec_find_decoder(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi %struct.TYPE_19__* [ %38, %36 ], [ %41, %39 ]
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %11, align 8
  br label %44

44:                                               ; preds = %42, %26
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %62 [
    i32 128, label %50
    i32 130, label %54
    i32 129, label %58
  ]

50:                                               ; preds = %44
  store i8 118, i8* %15, align 1
  %51 = load i32, i32* @AV_OPT_FLAG_VIDEO_PARAM, align 4
  %52 = load i32, i32* %14, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %14, align 4
  br label %63

54:                                               ; preds = %44
  store i8 97, i8* %15, align 1
  %55 = load i32, i32* @AV_OPT_FLAG_AUDIO_PARAM, align 4
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  br label %63

58:                                               ; preds = %44
  store i8 115, i8* %15, align 1
  %59 = load i32, i32* @AV_OPT_FLAG_SUBTITLE_PARAM, align 4
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %63

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %58, %54, %50
  br label %64

64:                                               ; preds = %156, %85, %63
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %67 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %68 = call %struct.TYPE_18__* @av_dict_get(i32* %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %66, i32 %67)
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %13, align 8
  %69 = icmp ne %struct.TYPE_18__* %68, null
  br i1 %69, label %70, label %157

70:                                               ; preds = %64
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 58)
  store i8* %74, i8** %17, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = call i32 @check_stream_specifier(%struct.TYPE_17__* %78, %struct.TYPE_16__* %79, i8* %81)
  switch i32 %82, label %86 [
    i32 1, label %83
    i32 0, label %85
  ]

83:                                               ; preds = %77
  %84 = load i8*, i8** %17, align 8
  store i8 0, i8* %84, align 1
  br label %87

85:                                               ; preds = %77
  br label %64

86:                                               ; preds = %77
  store i32* null, i32** %6, align 8
  br label %159

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %70
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %94 = call i64 @av_opt_find(i32** %16, i8* %91, i32* null, i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %88
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %98 = icmp ne %struct.TYPE_19__* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %112 = call i64 @av_opt_find(i32** %106, i8* %109, i32* null, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %104, %88
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @av_dict_set(i32** %12, i8* %117, i32 %120, i32 0)
  br label %151

122:                                              ; preds = %104, %99, %96
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* %15, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %122
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %139 = call i64 @av_opt_find(i32** %16, i8* %136, i32* null, i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %132
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @av_dict_set(i32** %12, i8* %145, i32 %148, i32 0)
  br label %150

150:                                              ; preds = %141, %132, %122
  br label %151

151:                                              ; preds = %150, %114
  %152 = load i8*, i8** %17, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i8*, i8** %17, align 8
  store i8 58, i8* %155, align 1
  br label %156

156:                                              ; preds = %154, %151
  br label %64

157:                                              ; preds = %64
  %158 = load i32*, i32** %12, align 8
  store i32* %158, i32** %6, align 8
  br label %159

159:                                              ; preds = %157, %86
  %160 = load i32*, i32** %6, align 8
  ret i32* %160
}

declare dso_local i32* @avcodec_get_class(...) #1

declare dso_local %struct.TYPE_19__* @avcodec_find_encoder(i32) #1

declare dso_local %struct.TYPE_19__* @avcodec_find_decoder(i32) #1

declare dso_local %struct.TYPE_18__* @av_dict_get(i32*, i8*, %struct.TYPE_18__*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @check_stream_specifier(%struct.TYPE_17__*, %struct.TYPE_16__*, i8*) #1

declare dso_local i64 @av_opt_find(i32**, i8*, i32*, i32, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
