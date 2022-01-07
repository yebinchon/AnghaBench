; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_GobbleMotionEvents.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_GobbleMotionEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDL_GETEVENT = common dso_local global i32 0, align 4
@SDL_MOUSEMOTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"IN_GobbleMotionEvents failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IN_GobbleMotionEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IN_GobbleMotionEvents() #0 {
  %1 = alloca [1 x i32], align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 (...) @SDL_PumpEvents()
  br label %4

4:                                                ; preds = %11, %0
  %5 = getelementptr inbounds [1 x i32], [1 x i32]* %1, i64 0, i64 0
  %6 = load i32, i32* @SDL_GETEVENT, align 4
  %7 = load i32, i32* @SDL_MOUSEMOTION, align 4
  %8 = load i32, i32* @SDL_MOUSEMOTION, align 4
  %9 = call i32 @SDL_PeepEvents(i32* %5, i32 1, i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %4

12:                                               ; preds = %4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call i32 (...) @SDL_GetError()
  %17 = call i32 @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @SDL_PumpEvents(...) #1

declare dso_local i32 @SDL_PeepEvents(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
