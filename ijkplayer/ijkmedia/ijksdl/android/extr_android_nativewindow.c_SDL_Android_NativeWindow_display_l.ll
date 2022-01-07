; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_android_nativewindow.c_SDL_Android_NativeWindow_display_l.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_android_nativewindow.c_SDL_Android_NativeWindow_display_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i32 (%struct.TYPE_11__*, %struct.TYPE_9__*)* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"SDL_Android_NativeWindow_display_l: NULL overlay\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"SDL_Android_NativeWindow_display_l: invalid overlay dimensions(%d, %d)\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"SDL_Android_NativeWindow_display_l: unknown overlay format: %d\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"ANativeWindow_setBuffersGeometry: w=%d, h=%d, f=%.4s(0x%x) => w=%d, h=%d, f=%.4s(0x%x)\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"SDL_Android_NativeWindow_display_l: ANativeWindow_setBuffersGeometry: failed %d\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"SDL_Android_NativeWindow_display_l: unknown hal format %d\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"SDL_Android_NativeWindow_display_l: ANativeWindow_lock: failed %d\00", align 1
@.str.7 = private unnamed_addr constant [105 x i8] c"unexpected native window buffer (%p)(w:%d, h:%d, fmt:'%.4s'0x%x), expecting (w:%d, h:%d, fmt:'%.4s'0x%x)\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"SDL_Android_NativeWindow_display_l: ANativeWindow_unlockAndPost: failed %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDL_Android_NativeWindow_display_l(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %182

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %182

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %24
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %40)
  store i32 -1, i32* %3, align 4
  br label %182

42:                                               ; preds = %29
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @ANativeWindow_getWidth(i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @ANativeWindow_getHeight(i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @ANativeWindow_getFormat(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @IJKALIGN(i64 %51, i32 2)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @IJKALIGN(i64 %55, i32 2)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_10__* @native_window_get_desc(i32 %59)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %12, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %42
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 -1, i32* %3, align 4
  br label %182

68:                                               ; preds = %42
  %69 = load i32, i32* %9, align 4
  %70 = call %struct.TYPE_10__* @native_window_get_desc(i32 %69)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %13, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %115

81:                                               ; preds = %73, %68
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = bitcast i32* %9 to i8*
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = bitcast i32* %89 to i8*
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ALOGD(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %83, i8* %84, i32 %85, i32 %86, i32 %87, i8* %90, i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @ANativeWindow_setBuffersGeometry(i32* %95, i32 %96, i32 %97, i64 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %81
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %182

108:                                              ; preds = %81
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %110 = icmp ne %struct.TYPE_10__* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  store i32 -1, i32* %3, align 4
  br label %182

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %73
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @ANativeWindow_lock(i32* %116, %struct.TYPE_11__* %14, i32* null)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %182

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %162

134:                                              ; preds = %129, %124
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %141 = bitcast i32* %140 to i8*
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = bitcast i32* %147 to i8*
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.7, i64 0, i64 0), i32* %135, i32 %137, i32 %139, i8* %141, i32 %143, i32 %144, i32 %145, i8* %148, i32 %151)
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @ANativeWindow_unlockAndPost(i32* %153)
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @ANativeWindow_setBuffersGeometry(i32* %155, i32 %156, i32 %157, i64 %160)
  store i32 -1, i32* %3, align 4
  br label %182

162:                                              ; preds = %129
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i32 (%struct.TYPE_11__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_9__*)** %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %167 = call i32 %165(%struct.TYPE_11__* %14, %struct.TYPE_9__* %166)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %162
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 @ANativeWindow_unlockAndPost(i32* %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* %6, align 4
  %178 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %3, align 4
  br label %182

180:                                              ; preds = %171
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %176, %134, %120, %111, %104, %63, %34, %22, %18
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @ALOGE(i8*, ...) #1

declare dso_local i32 @ANativeWindow_getWidth(i32*) #1

declare dso_local i32 @ANativeWindow_getHeight(i32*) #1

declare dso_local i32 @ANativeWindow_getFormat(i32*) #1

declare dso_local i32 @IJKALIGN(i64, i32) #1

declare dso_local %struct.TYPE_10__* @native_window_get_desc(i32) #1

declare dso_local i32 @ALOGD(i8*, i32, i32, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ANativeWindow_setBuffersGeometry(i32*, i32, i32, i64) #1

declare dso_local i32 @ANativeWindow_lock(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ANativeWindow_unlockAndPost(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
