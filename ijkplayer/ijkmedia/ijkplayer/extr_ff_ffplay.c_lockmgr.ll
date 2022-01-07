; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_lockmgr.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_lockmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SDL_CreateMutex(): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @lockmgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lockmgr(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %38 [
    i32 131, label %7
    i32 129, label %18
    i32 128, label %26
    i32 130, label %34
  ]

7:                                                ; preds = %2
  %8 = call i8* (...) @SDL_CreateMutex()
  %9 = load i8**, i8*** %4, align 8
  store i8* %8, i8** %9, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* @AV_LOG_FATAL, align 4
  %15 = call i32 (...) @SDL_GetError()
  %16 = call i32 @av_log(i32* null, i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 1, i32* %3, align 4
  br label %39

17:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load i8**, i8*** %4, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @SDL_LockMutex(i8* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %2
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @SDL_UnlockMutex(i8* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @SDL_DestroyMutex(i8* %36)
  store i32 0, i32* %3, align 4
  br label %39

38:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %34, %26, %18, %17, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i8* @SDL_CreateMutex(...) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @SDL_LockMutex(i8*) #1

declare dso_local i32 @SDL_UnlockMutex(i8*) #1

declare dso_local i32 @SDL_DestroyMutex(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
