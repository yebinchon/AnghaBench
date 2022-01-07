; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dm_local.c_dmlab_get_screen_message.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dm_local.c_dmlab_get_screen_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEEPMIND_GET_SCREEN_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmlab_get_screen_message(i32 %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5, float* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store float* %6, float** %14, align 8
  %15 = load i32, i32* @DEEPMIND_GET_SCREEN_MESSAGE, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = load i8*, i8** %9, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load i32*, i32** %10, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = load i32*, i32** %11, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = load i32*, i32** %12, align 8
  %25 = ptrtoint i32* %24 to i64
  %26 = load i32*, i32** %13, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = load float*, float** %14, align 8
  %29 = ptrtoint float* %28 to i64
  %30 = call i32 @trap_DeepmindCallback(i32 %15, i64 %17, i64 %19, i64 %21, i64 %23, i64 %25, i64 %27, i64 %29, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @trap_DeepmindCallback(i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
