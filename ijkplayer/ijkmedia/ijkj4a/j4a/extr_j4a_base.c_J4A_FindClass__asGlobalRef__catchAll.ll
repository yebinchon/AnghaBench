; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/extr_j4a_base.c_J4A_FindClass__asGlobalRef__catchAll.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/extr_j4a_base.c_J4A_FindClass__asGlobalRef__catchAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @J4A_FindClass__asGlobalRef__catchAll(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* @J4A_FindClass__catchAll(i32* %7, i8* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @J4A_FUNC_FAIL_TRACE1(i8* %13)
  br label %25

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @J4A_NewGlobalRef__catchAll(i32* %16, i32* %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @J4A_FUNC_FAIL_TRACE1(i8* %22)
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %21, %12
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @J4A_DeleteLocalRef__p(i32* %26, i32** %6)
  %28 = load i32*, i32** %5, align 8
  ret i32* %28
}

declare dso_local i32* @J4A_FindClass__catchAll(i32*, i8*) #1

declare dso_local i32 @J4A_FUNC_FAIL_TRACE1(i8*) #1

declare dso_local i32* @J4A_NewGlobalRef__catchAll(i32*, i32*) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
