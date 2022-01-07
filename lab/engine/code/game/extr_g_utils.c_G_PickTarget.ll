; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_G_PickTarget.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_G_PickTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXCHOICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"G_PickTarget called with NULL targetname\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"G_PickTarget: target %s not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @G_PickTarget(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @MAXCHOICES, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32*, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %52

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %38, %17
  br label %19

19:                                               ; preds = %18
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @FOFS(i8* %21)
  %23 = load i8*, i8** %3, align 8
  %24 = call i32* @G_Find(i32* %20, i32 %22, i8* %23)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %39

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32*, i32** %12, i64 %32
  store i32* %29, i32** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MAXCHOICES, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %39

38:                                               ; preds = %28
  br label %18

39:                                               ; preds = %37, %27
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %52

45:                                               ; preds = %39
  %46 = call i32 (...) @rand()
  %47 = load i32, i32* %5, align 4
  %48 = srem i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %12, i64 %49
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %52

52:                                               ; preds = %45, %42, %15
  %53 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32*, i32** %2, align 8
  ret i32* %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @G_Printf(i8*, ...) #2

declare dso_local i32* @G_Find(i32*, i32, i8*) #2

declare dso_local i32 @FOFS(i8*) #2

declare dso_local i32 @rand(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
