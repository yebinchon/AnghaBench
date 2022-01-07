; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_android_jni.c_SDL_JNI_DeleteLocalRefP.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_android_jni.c_SDL_JNI_DeleteLocalRefP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__**, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SDL_JNI_DeleteLocalRefP(%struct.TYPE_4__** %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i32**, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = load i32**, i32*** %4, align 8
  %6 = icmp ne i32** %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32**, i32*** %4, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %2
  br label %22

12:                                               ; preds = %7
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_4__**, i32*)*, i32 (%struct.TYPE_4__**, i32*)** %15, align 8
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %18 = load i32**, i32*** %4, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 %16(%struct.TYPE_4__** %17, i32* %19)
  %21 = load i32**, i32*** %4, align 8
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
