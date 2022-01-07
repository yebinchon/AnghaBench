; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_aout_android_audiotrack.c_aout_thread_n.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_aout_android_audiotrack.c_aout_thread_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32*, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i8*, i32 (i8*, i32*, i32)* }

@SDL_THREAD_PRIORITY_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"AudioTrack: not all data copied %d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @aout_thread_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aout_thread_n(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i8*, i32*, i32)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 12
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %20, align 8
  store i32 (i8*, i32*, i32)* %21, i32 (i8*, i32*, i32)** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 10
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  store i32 256, i32* %10, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @assert(i32* %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @assert(i32* %31)
  %33 = load i32, i32* @SDL_THREAD_PRIORITY_HIGH, align 4
  %34 = call i32 @SDL_SetThreadPriority(i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @SDL_Android_AudioTrack_play(i32* %45, i32* %46)
  br label %48

48:                                               ; preds = %44, %39, %2
  br label %49

49:                                               ; preds = %206, %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %207

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SDL_LockMutex(i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %119, label %64

64:                                               ; preds = %55
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %119

69:                                               ; preds = %64
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @SDL_Android_AudioTrack_pause(i32* %70, i32* %71)
  br label %73

73:                                               ; preds = %85, %69
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i1 [ false, %73 ], [ %82, %78 ]
  br i1 %84, label %85, label %93

85:                                               ; preds = %83
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SDL_CondWaitTimeout(i32 %88, i32 %91, i32 1000)
  br label %73

93:                                               ; preds = %83
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @SDL_Android_AudioTrack_flush(i32* %111, i32* %112)
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i32*, i32** %3, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @SDL_Android_AudioTrack_play(i32* %115, i32* %116)
  br label %118

118:                                              ; preds = %114, %98, %93
  br label %119

119:                                              ; preds = %118, %64, %55
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  %127 = load i32*, i32** %3, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @SDL_Android_AudioTrack_flush(i32* %127, i32* %128)
  br label %130

130:                                              ; preds = %124, %119
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 6
  store i64 0, i64* %137, align 8
  %138 = load i32*, i32** %3, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @SDL_Android_AudioTrack_set_volume(i32* %138, i32* %139, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %135, %130
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load i32*, i32** %3, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @SDL_Android_AudioTrack_setSpeed(i32* %155, i32* %156, i32 %159)
  br label %161

161:                                              ; preds = %152, %147
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @SDL_UnlockMutex(i32 %164)
  %166 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %7, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 %166(i8* %167, i32* %168, i32 %169)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %161
  %176 = load i32*, i32** %3, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @SDL_Android_AudioTrack_flush(i32* %176, i32* %177)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  store i32 0, i32* %180, align 8
  br label %181

181:                                              ; preds = %175, %161
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i32 0, i32* %188, align 8
  %189 = load i32*, i32** %3, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @SDL_Android_AudioTrack_flush(i32* %189, i32* %190)
  br label %206

192:                                              ; preds = %181
  %193 = load i32*, i32** %3, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @SDL_Android_AudioTrack_write(i32* %193, i32* %194, i32* %195, i32 %196)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %192
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @ALOGW(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %201, %192
  br label %206

206:                                              ; preds = %205, %186
  br label %49

207:                                              ; preds = %49
  %208 = load i32*, i32** %3, align 8
  %209 = load i32*, i32** %6, align 8
  %210 = call i32 @SDL_Android_AudioTrack_free(i32* %208, i32* %209)
  ret i32 0
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @SDL_SetThreadPriority(i32) #1

declare dso_local i32 @SDL_Android_AudioTrack_play(i32*, i32*) #1

declare dso_local i32 @SDL_LockMutex(i32) #1

declare dso_local i32 @SDL_Android_AudioTrack_pause(i32*, i32*) #1

declare dso_local i32 @SDL_CondWaitTimeout(i32, i32, i32) #1

declare dso_local i32 @SDL_Android_AudioTrack_flush(i32*, i32*) #1

declare dso_local i32 @SDL_Android_AudioTrack_set_volume(i32*, i32*, i32, i32) #1

declare dso_local i32 @SDL_Android_AudioTrack_setSpeed(i32*, i32*, i32) #1

declare dso_local i32 @SDL_UnlockMutex(i32) #1

declare dso_local i32 @SDL_Android_AudioTrack_write(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ALOGW(i8*, i32, i32) #1

declare dso_local i32 @SDL_Android_AudioTrack_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
