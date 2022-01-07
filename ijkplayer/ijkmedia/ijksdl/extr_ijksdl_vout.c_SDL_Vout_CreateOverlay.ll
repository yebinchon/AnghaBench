; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_vout.c_SDL_Vout_CreateOverlay.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_vout.c_SDL_Vout_CreateOverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SDL_Vout_CreateOverlay(i32 %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32* (i32, i32, i32, %struct.TYPE_4__*)**
  %16 = load i32* (i32, i32, i32, %struct.TYPE_4__*)*, i32* (i32, i32, i32, %struct.TYPE_4__*)** %15, align 8
  %17 = icmp ne i32* (i32, i32, i32, %struct.TYPE_4__*)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32* (i32, i32, i32, %struct.TYPE_4__*)**
  %22 = load i32* (i32, i32, i32, %struct.TYPE_4__*)*, i32* (i32, i32, i32, %struct.TYPE_4__*)** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = call i32* %22(i32 %23, i32 %24, i32 %25, %struct.TYPE_4__* %26)
  store i32* %27, i32** %5, align 8
  br label %29

28:                                               ; preds = %12, %4
  store i32* null, i32** %5, align 8
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32*, i32** %5, align 8
  ret i32* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
