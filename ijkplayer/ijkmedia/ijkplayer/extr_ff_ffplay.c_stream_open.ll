; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_stream_open.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_stream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_16__, i32, i8*, i32, i32, i8*, i8*, i32, i64, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_17__, %struct.TYPE_17__, i8*, i8*, %struct.TYPE_16__, i32, i32, i32, i32, i64, i64, i32*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, %struct.TYPE_14__*, i32, i32, i64, i32, i64 }

@SUBPICTURE_QUEUE_SIZE = common dso_local global i32 0, align 4
@SAMPLE_QUEUE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SDL_CreateCond(): %s\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"-volume=%d < 0, setting to 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"-volume=%d > 100, setting to 100\0A\00", align 1
@SDL_MIX_MAXVOLUME = common dso_local global i32 0, align 4
@video_refresh_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"ff_vout\00", align 1
@read_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"ff_read\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"SDL_CreateThread(): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_15__*, i8*, i32*)* @stream_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @stream_open(%struct.TYPE_15__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 11
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = call %struct.TYPE_14__* @av_mallocz(i32 184)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %326

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @av_strdup(i8* %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 30
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 30
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %309

30:                                               ; preds = %20
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 29
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 28
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 27
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 25
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 15
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @frame_queue_init(i32* %39, %struct.TYPE_16__* %41, i32 %44, i32 1)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %309

48:                                               ; preds = %30
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 24
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 22
  %53 = load i32, i32* @SUBPICTURE_QUEUE_SIZE, align 4
  %54 = call i64 @frame_queue_init(i32* %50, %struct.TYPE_16__* %52, i32 %53, i32 0)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %309

57:                                               ; preds = %48
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 23
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 17
  %62 = load i32, i32* @SAMPLE_QUEUE_SIZE, align 4
  %63 = call i64 @frame_queue_init(i32* %59, %struct.TYPE_16__* %61, i32 %62, i32 1)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %309

66:                                               ; preds = %57
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 7
  %69 = call i64 @packet_queue_init(%struct.TYPE_16__* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 17
  %74 = call i64 @packet_queue_init(%struct.TYPE_16__* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 22
  %79 = call i64 @packet_queue_init(%struct.TYPE_16__* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71, %66
  br label %309

82:                                               ; preds = %76
  %83 = call i8* (...) @SDL_CreateCond()
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = icmp ne i8* %83, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @AV_LOG_FATAL, align 4
  %89 = call i32 (...) @SDL_GetError()
  %90 = call i32 @av_log(i32* null, i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %309

91:                                               ; preds = %82
  %92 = call i8* (...) @SDL_CreateCond()
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 21
  store i8* %92, i8** %94, align 8
  %95 = icmp ne i8* %92, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @AV_LOG_FATAL, align 4
  %98 = call i32 (...) @SDL_GetError()
  %99 = call i32 @av_log(i32* null, i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 14
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %96, %91
  %103 = call i8* (...) @SDL_CreateCond()
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 20
  store i8* %103, i8** %105, align 8
  %106 = icmp ne i8* %103, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @AV_LOG_FATAL, align 4
  %109 = call i32 (...) @SDL_GetError()
  %110 = call i32 @av_log(i32* null, i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 14
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %102
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 19
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = call i32 @init_clock(%struct.TYPE_17__* %115, i32* %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 18
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 17
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = call i32 @init_clock(%struct.TYPE_17__* %121, i32* %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 16
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 16
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = call i32 @init_clock(%struct.TYPE_17__* %127, i32* %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  store i32 -1, i32* %133, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %113
  %139 = load i32, i32* @AV_LOG_WARNING, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @av_log(i32* null, i32 %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %138, %113
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 100
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* @AV_LOG_WARNING, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @av_log(i32* null, i32 %150, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %149, %144
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @av_clip(i32 %158, i32 0, i32 100)
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @SDL_MIX_MAXVOLUME, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %163, %166
  %168 = sdiv i32 %167, 100
  %169 = load i32, i32* @SDL_MIX_MAXVOLUME, align 4
  %170 = call i8* @av_clip(i32 %168, i32 0, i32 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 15
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 13
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 14
  store i32 %183, i32* %185, align 8
  %186 = call i8* (...) @SDL_CreateMutex()
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 13
  store i8* %186, i8** %188, align 8
  %189 = call i8* (...) @SDL_CreateMutex()
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 12
  store i8* %189, i8** %191, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 11
  store %struct.TYPE_14__* %192, %struct.TYPE_14__** %194, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 12
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 11
  %205 = load i32, i32* @video_refresh_thread, align 4
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %207 = call i8* @SDL_CreateThreadEx(i32* %204, i32 %205, %struct.TYPE_15__* %206, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 5
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 5
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %218, label %214

214:                                              ; preds = %155
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 11
  %217 = call i32 @av_freep(%struct.TYPE_14__** %216)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %326

218:                                              ; preds = %155
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 3
  store i32 0, i32* %220, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 10
  %223 = load i32, i32* @read_thread, align 4
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %225 = call i8* @SDL_CreateThreadEx(i32* %222, i32 %223, %struct.TYPE_15__* %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 9
  store i8* %225, i8** %227, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 9
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %236, label %232

232:                                              ; preds = %218
  %233 = load i32, i32* @AV_LOG_FATAL, align 4
  %234 = call i32 (...) @SDL_GetError()
  %235 = call i32 @av_log(i32* null, i32 %233, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %234)
  br label %309

236:                                              ; preds = %218
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 10
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %305

241:                                              ; preds = %236
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %305, label %246

246:                                              ; preds = %241
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 8
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %305

251:                                              ; preds = %246
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 8
  %254 = load i64, i64* %253, align 8
  %255 = call i64 @strlen(i64 %254)
  %256 = icmp sgt i64 %255, 0
  br i1 %256, label %257, label %305

257:                                              ; preds = %251
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 7
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %305

262:                                              ; preds = %257
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 7
  %265 = load i64, i64* %264, align 8
  %266 = call i64 @strlen(i64 %265)
  %267 = icmp sgt i64 %266, 0
  br i1 %267, label %268, label %305

268:                                              ; preds = %262
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 6
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %288, label %273

273:                                              ; preds = %268
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %288, label %278

278:                                              ; preds = %273
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 4
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %278
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %304

288:                                              ; preds = %283, %278, %273, %268
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 8
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 7
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 6
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @decoder_init(i32* %290, i32* null, %struct.TYPE_16__* %292, i8* %295)
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %301 = call i32 @ffpipeline_init_video_decoder(i32 %299, %struct.TYPE_15__* %300)
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 2
  store i32 %301, i32* %303, align 8
  br label %304

304:                                              ; preds = %288, %283
  br label %305

305:                                              ; preds = %304, %262, %257, %251, %246, %241, %236
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 3
  store i32 1, i32* %307, align 4
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %308, %struct.TYPE_14__** %4, align 8
  br label %326

309:                                              ; preds = %232, %87, %81, %65, %56, %47, %29
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 3
  store i32 1, i32* %311, align 4
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 4
  store i32 1, i32* %313, align 8
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 5
  %316 = load i8*, i8** %315, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %318, label %323

318:                                              ; preds = %309
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 5
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 @SDL_WaitThread(i8* %321, i32* null)
  br label %323

323:                                              ; preds = %318, %309
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %325 = call i32 @stream_close(%struct.TYPE_15__* %324)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %326

326:                                              ; preds = %323, %305, %214, %19
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %327
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_14__* @av_mallocz(i32) #1

declare dso_local i32 @av_strdup(i8*) #1

declare dso_local i64 @frame_queue_init(i32*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @packet_queue_init(%struct.TYPE_16__*) #1

declare dso_local i8* @SDL_CreateCond(...) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @init_clock(%struct.TYPE_17__*, i32*) #1

declare dso_local i8* @av_clip(i32, i32, i32) #1

declare dso_local i8* @SDL_CreateMutex(...) #1

declare dso_local i8* @SDL_CreateThreadEx(i32*, i32, %struct.TYPE_15__*, i8*) #1

declare dso_local i32 @av_freep(%struct.TYPE_14__**) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @decoder_init(i32*, i32*, %struct.TYPE_16__*, i8*) #1

declare dso_local i32 @ffpipeline_init_video_decoder(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @SDL_WaitThread(i8*, i32*) #1

declare dso_local i32 @stream_close(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
