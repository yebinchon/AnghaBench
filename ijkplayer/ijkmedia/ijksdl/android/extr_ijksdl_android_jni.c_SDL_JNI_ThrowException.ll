; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_android_jni.c_SDL_JNI_ThrowException.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_android_jni.c_SDL_JNI_ThrowException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (%struct.TYPE_10__**, i32*, i8*)*, i32 (%struct.TYPE_10__**, i32*)*, i32* (%struct.TYPE_10__**, i8*)*, i32 (%struct.TYPE_10__**)*, i32* (%struct.TYPE_10__**)*, i64 (%struct.TYPE_10__**)* }

@.str = private unnamed_addr constant [43 x i8] c"Discarding pending exception (%s) to throw\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to find exception class %s\00", align 1
@JNI_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed throwing '%s' '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDL_JNI_ThrowException(%struct.TYPE_10__** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  %13 = load i64 (%struct.TYPE_10__**)*, i64 (%struct.TYPE_10__**)** %12, align 8
  %14 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %15 = call i64 %13(%struct.TYPE_10__** %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  %21 = load i32* (%struct.TYPE_10__**)*, i32* (%struct.TYPE_10__**)** %20, align 8
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %23 = call i32* %21(%struct.TYPE_10__** %22)
  store i32* %23, i32** %8, align 8
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = load i32 (%struct.TYPE_10__**)*, i32 (%struct.TYPE_10__**)** %26, align 8
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %29 = call i32 %27(%struct.TYPE_10__** %28)
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %17
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @ALOGW(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_10__**, i32*)*, i32 (%struct.TYPE_10__**, i32*)** %37, align 8
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 %38(%struct.TYPE_10__** %39, i32* %40)
  br label %42

42:                                               ; preds = %32, %17
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32* (%struct.TYPE_10__**, i8*)*, i32* (%struct.TYPE_10__**, i8*)** %46, align 8
  %48 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32* %47(%struct.TYPE_10__** %48, i8* %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 (i8*, i8*, ...) @ALOGE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %72

56:                                               ; preds = %43
  %57 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64 (%struct.TYPE_10__**, i32*, i8*)*, i64 (%struct.TYPE_10__**, i32*, i8*)** %59, align 8
  %61 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 %60(%struct.TYPE_10__** %61, i32* %62, i8* %63)
  %65 = load i64, i64* @JNI_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i8*, i8*, ...) @ALOGE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69)
  br label %72

71:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %84

72:                                               ; preds = %67, %53
  %73 = load i32*, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_10__**, i32*)*, i32 (%struct.TYPE_10__**, i32*)** %78, align 8
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 %79(%struct.TYPE_10__** %80, i32* %81)
  br label %83

83:                                               ; preds = %75, %72
  store i32 -1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ALOGW(i8*, i8*) #1

declare dso_local i32 @ALOGE(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
