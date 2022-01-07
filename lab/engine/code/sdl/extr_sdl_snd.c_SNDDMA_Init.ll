; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_snd.c_SNDDMA_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_snd.c_SNDDMA_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i8*, i32 }

@snd_inited = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@s_sdlBits = common dso_local global %struct.TYPE_26__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"s_sdlBits\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"s_sdlSpeed\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@s_sdlSpeed = common dso_local global %struct.TYPE_21__* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"s_sdlChannels\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@s_sdlChannels = common dso_local global %struct.TYPE_24__* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"s_sdlDevSamps\00", align 1
@s_sdlDevSamps = common dso_local global %struct.TYPE_23__* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"s_sdlMixSamps\00", align 1
@s_sdlMixSamps = common dso_local global %struct.TYPE_22__* null, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"SDL_Init( SDL_INIT_AUDIO )... \00", align 1
@SDL_INIT_AUDIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"FAILED (%s)\0A\00", align 1
@qfalse = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"SDL audio driver is \22%s\22.\0A\00", align 1
@AUDIO_S16SYS = common dso_local global i8* null, align 8
@AUDIO_U8 = common dso_local global i8* null, align 8
@SNDDMA_AudioCallback = common dso_local global i32 0, align 4
@SDL_FALSE = common dso_local global i32 0, align 4
@SDL_AUDIO_ALLOW_ANY_CHANGE = common dso_local global i32 0, align 4
@sdlPlaybackDevice = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"SDL_OpenAudioDevice() failed: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"SDL_AudioSpec\00", align 1
@dmapos = common dso_local global i64 0, align 8
@dma = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@dmasize = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"Starting SDL audio callback...\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"SDL audio initialized.\0A\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@SDL_TRUE = common dso_local global i32 0, align 4
@VOIP_MAX_PACKET_SAMPLES = common dso_local global i32 0, align 4
@cl_useMumble = common dso_local global %struct.TYPE_18__* null, align 8
@s_sdlCapture = common dso_local global %struct.TYPE_25__* null, align 8
@sdlCaptureDevice = common dso_local global i64 0, align 8
@sdlMasterGain = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SNDDMA_Init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_20__, align 8
  %3 = alloca %struct.TYPE_20__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @snd_inited, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i64, i64* @qtrue, align 8
  store i64 %9, i64* %1, align 8
  br label %180

10:                                               ; preds = %0
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** @s_sdlBits, align 8
  %12 = icmp ne %struct.TYPE_26__* %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @CVAR_ARCHIVE, align 4
  %15 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** @s_sdlBits, align 8
  %17 = load i32, i32* @CVAR_ARCHIVE, align 4
  %18 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = bitcast i8* %18 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** @s_sdlSpeed, align 8
  %20 = load i32, i32* @CVAR_ARCHIVE, align 4
  %21 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %20)
  %22 = bitcast i8* %21 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** @s_sdlChannels, align 8
  %23 = load i32, i32* @CVAR_ARCHIVE, align 4
  %24 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** @s_sdlDevSamps, align 8
  %26 = load i32, i32* @CVAR_ARCHIVE, align 4
  %27 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** @s_sdlMixSamps, align 8
  br label %29

29:                                               ; preds = %13, %10
  %30 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %31 = load i32, i32* @SDL_INIT_AUDIO, align 4
  %32 = call i64 @SDL_Init(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 (...) @SDL_GetError()
  %36 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @qfalse, align 8
  store i64 %37, i64* %1, align 8
  br label %180

38:                                               ; preds = %29
  %39 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %40 = call i32 (...) @SDL_GetCurrentAudioDriver()
  %41 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %40)
  %42 = call i32 @memset(%struct.TYPE_20__* %2, i8 signext 0, i32 32)
  %43 = call i32 @memset(%struct.TYPE_20__* %3, i8 signext 0, i32 32)
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** @s_sdlBits, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 16
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 16, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %50, %38
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** @s_sdlSpeed, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  store i32 22050, i32* %64, align 8
  br label %65

65:                                               ; preds = %63, %54
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i8*, i8** @AUDIO_S16SYS, align 8
  br label %72

70:                                               ; preds = %65
  %71 = load i8*, i8** @AUDIO_U8, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i8* [ %69, %68 ], [ %71, %70 ]
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 3
  store i8* %73, i8** %74, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** @s_sdlDevSamps, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** @s_sdlDevSamps, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  br label %107

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sle i32 %86, 11025
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  store i32 256, i32* %89, align 4
  br label %106

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sle i32 %92, 22050
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  store i32 512, i32* %95, align 4
  br label %105

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sle i32 %98, 44100
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  store i32 1024, i32* %101, align 4
  br label %104

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  store i32 2048, i32* %103, align 4
  br label %104

104:                                              ; preds = %102, %100
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %105, %88
  br label %107

107:                                              ; preds = %106, %79
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** @s_sdlChannels, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* @SNDDMA_AudioCallback, align 4
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 4
  store i32 %113, i32* %114, align 8
  %115 = load i32, i32* @SDL_FALSE, align 4
  %116 = load i32, i32* @SDL_AUDIO_ALLOW_ANY_CHANGE, align 4
  %117 = call i64 @SDL_OpenAudioDevice(i32* null, i32 %115, %struct.TYPE_20__* %2, %struct.TYPE_20__* %3, i32 %116)
  store i64 %117, i64* @sdlPlaybackDevice, align 8
  %118 = load i64, i64* @sdlPlaybackDevice, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %107
  %121 = call i32 (...) @SDL_GetError()
  %122 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @SDL_INIT_AUDIO, align 4
  %124 = call i32 @SDL_QuitSubSystem(i32 %123)
  %125 = load i64, i64* @qfalse, align 8
  store i64 %125, i64* %1, align 8
  br label %180

126:                                              ; preds = %107
  %127 = call i32 @SNDDMA_PrintAudiospec(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_20__* %3)
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** @s_sdlMixSamps, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %135, %137
  %139 = mul nsw i32 %138, 10
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %133, %126
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = sub nsw i32 %142, 1
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  store i32 1, i32* %5, align 4
  br label %147

147:                                              ; preds = %151, %146
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = shl i32 %152, 1
  store i32 %153, i32* %5, align 4
  br label %147

154:                                              ; preds = %147
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %140
  store i64 0, i64* @dmapos, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @SDL_AUDIO_BITSIZE(i8* %158)
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dma, i32 0, i32 0), align 4
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @SDL_AUDIO_ISFLOAT(i8* %161)
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dma, i32 0, i32 6), align 4
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dma, i32 0, i32 1), align 4
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dma, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dma, i32 0, i32 3), align 4
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dma, i32 0, i32 4), align 4
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dma, i32 0, i32 2), align 4
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dma, i32 0, i32 0), align 4
  %170 = sdiv i32 %169, 8
  %171 = mul nsw i32 %168, %170
  store i32 %171, i32* @dmasize, align 4
  %172 = load i32, i32* @dmasize, align 4
  %173 = call i32 @calloc(i32 1, i32 %172)
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dma, i32 0, i32 5), align 4
  %174 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %175 = load i64, i64* @sdlPlaybackDevice, align 8
  %176 = call i32 @SDL_PauseAudioDevice(i64 %175, i32 0)
  %177 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %178 = load i64, i64* @qtrue, align 8
  store i64 %178, i64* @snd_inited, align 8
  %179 = load i64, i64* @qtrue, align 8
  store i64 %179, i64* %1, align 8
  br label %180

180:                                              ; preds = %156, %120, %34, %8
  %181 = load i64, i64* %1, align 8
  ret i64 %181
}

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i64 @SDL_Init(i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @SDL_GetCurrentAudioDriver(...) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i8 signext, i32) #1

declare dso_local i64 @SDL_OpenAudioDevice(i32*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @SDL_QuitSubSystem(i32) #1

declare dso_local i32 @SNDDMA_PrintAudiospec(i8*, %struct.TYPE_20__*) #1

declare dso_local i32 @SDL_AUDIO_BITSIZE(i8*) #1

declare dso_local i32 @SDL_AUDIO_ISFLOAT(i8*) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @SDL_PauseAudioDevice(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
