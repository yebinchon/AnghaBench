; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_main.c_Sys_GetProcessorFeatures.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_main.c_Sys_GetProcessorFeatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CF_RDTSC = common dso_local global i32 0, align 4
@CF_3DNOW = common dso_local global i32 0, align 4
@CF_MMX = common dso_local global i32 0, align 4
@CF_SSE = common dso_local global i32 0, align 4
@CF_SSE2 = common dso_local global i32 0, align 4
@CF_ALTIVEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sys_GetProcessorFeatures() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 (...) @SDL_HasRDTSC()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @CF_RDTSC, align 4
  %6 = load i32, i32* %1, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %4, %0
  %9 = call i64 (...) @SDL_Has3DNow()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @CF_3DNOW, align 4
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = call i64 (...) @SDL_HasMMX()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @CF_MMX, align 4
  %20 = load i32, i32* %1, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = call i64 (...) @SDL_HasSSE()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @CF_SSE, align 4
  %27 = load i32, i32* %1, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = call i64 (...) @SDL_HasSSE2()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @CF_SSE2, align 4
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = call i64 (...) @SDL_HasAltiVec()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @CF_ALTIVEC, align 4
  %41 = load i32, i32* %1, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i64 @SDL_HasRDTSC(...) #1

declare dso_local i64 @SDL_Has3DNow(...) #1

declare dso_local i64 @SDL_HasMMX(...) #1

declare dso_local i64 @SDL_HasSSE(...) #1

declare dso_local i64 @SDL_HasSSE2(...) #1

declare dso_local i64 @SDL_HasAltiVec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
