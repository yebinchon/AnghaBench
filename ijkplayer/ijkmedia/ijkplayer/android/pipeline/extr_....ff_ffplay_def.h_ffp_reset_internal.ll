; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/pipeline/extr_....ff_ffplay_def.h_ffp_reset_internal.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/pipeline/extr_....ff_ffplay_def.h_ffp_reset_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, float, float, i32, i32, i32*, i32*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i32*, i32*, i64, i64, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32*, i32*, i32*, i32*, i64, i32, i32*, i32*, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i8*, i8*, i32, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@AV_SYNC_AUDIO_MASTER = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@SHOW_MODE_NONE = common dso_local global i32 0, align 4
@SWS_FAST_BILINEAR = common dso_local global i32 0, align 4
@SDL_FCC_RV32 = common dso_local global i32 0, align 4
@MAX_ACCURATE_SEEK_TIMEOUT = common dso_local global i32 0, align 4
@VIDEO_PICTURE_QUEUE_SIZE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @ffp_reset_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffp_reset_internal(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = call i32 @av_opt_free(%struct.TYPE_4__* %3)
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 96
  %7 = call i32 @av_dict_free(i32* %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 95
  %10 = call i32 @av_dict_free(i32* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 94
  %13 = call i32 @av_dict_free(i32* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 93
  %16 = call i32 @av_dict_free(i32* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 92
  %19 = call i32 @av_dict_free(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 91
  %22 = call i32 @av_dict_free(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 90
  %25 = call i32 @av_freep(i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 89
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 88
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 87
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 86
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 85
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @AV_SYNC_AUDIO_MASTER, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 84
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 83
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 82
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 81
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 80
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 -1, i32* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 79
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 78
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 77
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  store i32 -1, i32* %66, align 8
  %67 = load i32, i32* @SHOW_MODE_NONE, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 76
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 75
  %72 = call i32 @av_freep(i32* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 74
  %75 = call i32 @av_freep(i32* %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  store double 2.000000e-02, double* %77, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  store i32 1, i32* %79, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 7
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* @SWS_FAST_BILINEAR, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 69
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 68
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 67
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 66
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 65
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 64
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 63
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 62
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 61
  %101 = call i32 @av_freep(i32* %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 60
  %104 = call i32 @av_freep(i32* %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 59
  %107 = call i32 @av_freep(i32* %106)
  %108 = load i32, i32* @SDL_FCC_RV32, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 58
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 57
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 56
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 55
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 54
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 53
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 8
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 52
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 9
  store i32 1, i32* %126, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 51
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* @MAX_ACCURATE_SEEK_TIMEOUT, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 50
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 49
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 10
  store i32 1, i32* %135, align 8
  %136 = load i32, i32* @VIDEO_PICTURE_QUEUE_SIZE_DEFAULT, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 48
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 11
  store i32 31, i32* %140, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 47
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 46
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 45
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 44
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 43
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 42
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 41
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 40
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 39
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 38
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 37
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 36
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 35
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 34
  store i32* null, i32** %168, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 33
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 32
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 31
  store i32* null, i32** %174, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 30
  store i32* null, i32** %176, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 29
  store i64 0, i64* %178, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 28
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 27
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @ijkmeta_reset(i32 %183)
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 26
  %187 = call i32 @SDL_SpeedSamplerReset(i32* %186)
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 25
  %190 = call i32 @SDL_SpeedSamplerReset(i32* %189)
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 24
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 23
  store i64 0, i64* %194, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 12
  store float 1.000000e+00, float* %196, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 22
  store i64 0, i64* %198, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 13
  store float 1.000000e+00, float* %200, align 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 21
  store i64 0, i64* %202, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 20
  %205 = call i32 @av_application_closep(i32* %204)
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 19
  %208 = call i32 @ijkio_manager_destroyp(i32* %207)
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 18
  %211 = call i32 @msg_queue_flush(i32* %210)
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 17
  store i32* null, i32** %213, align 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 16
  store i32* null, i32** %215, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 15
  %218 = call i32 @ffp_reset_statistic(i32* %217)
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 14
  %221 = call i32 @ffp_reset_demux_cache_control(i32* %220)
  ret void
}

declare dso_local i32 @av_opt_free(%struct.TYPE_4__*) #1

declare dso_local i32 @av_dict_free(i32*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ijkmeta_reset(i32) #1

declare dso_local i32 @SDL_SpeedSamplerReset(i32*) #1

declare dso_local i32 @av_application_closep(i32*) #1

declare dso_local i32 @ijkio_manager_destroyp(i32*) #1

declare dso_local i32 @msg_queue_flush(i32*) #1

declare dso_local i32 @ffp_reset_statistic(i32*) #1

declare dso_local i32 @ffp_reset_demux_cache_control(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
