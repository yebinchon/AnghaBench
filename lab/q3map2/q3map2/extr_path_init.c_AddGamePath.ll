; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_path_init.c_AddGamePath.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_path_init.c_AddGamePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numGamePaths = common dso_local global i64 0, align 8
@MAX_GAME_PATHS = common dso_local global i64 0, align 8
@gamePaths = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddGamePath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load i64, i64* @numGamePaths, align 8
  %14 = load i64, i64* @MAX_GAME_PATHS, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %6, %1
  br label %74

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 %19, 1
  %21 = call i32* @safe_malloc(i64 %20)
  %22 = load i32**, i32*** @gamePaths, align 8
  %23 = load i64, i64* @numGamePaths, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  store i32* %21, i32** %24, align 8
  %25 = load i32**, i32*** @gamePaths, align 8
  %26 = load i64, i64* @numGamePaths, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @strcpy(i32* %28, i8* %29)
  %31 = load i32**, i32*** @gamePaths, align 8
  %32 = load i64, i64* @numGamePaths, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @CleanPath(i32* %34)
  %36 = load i64, i64* @numGamePaths, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* @numGamePaths, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %71, %17
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @numGamePaths, align 8
  %42 = sub i64 %41, 1
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %38
  %45 = load i32**, i32*** @gamePaths, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32**, i32*** @gamePaths, align 8
  %51 = load i64, i64* @numGamePaths, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @strcmp(i32* %49, i32* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %44
  %58 = load i32**, i32*** @gamePaths, align 8
  %59 = load i64, i64* @numGamePaths, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @free(i32* %62)
  %64 = load i32**, i32*** @gamePaths, align 8
  %65 = load i64, i64* @numGamePaths, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* null, i32** %67, align 8
  %68 = load i64, i64* @numGamePaths, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* @numGamePaths, align 8
  br label %74

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %38

74:                                               ; preds = %16, %57, %38
  ret void
}

declare dso_local i32* @safe_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @CleanPath(i32*) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
