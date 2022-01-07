; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_util.c_git__bsearch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_util.c_git__bsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git__bsearch(i8** %0, i64 %1, i8* %2, i32 (i8*, i8*)* %3, i64* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  store i8** %0, i8*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 -1, i32* %12, align 4
  %15 = load i8**, i8*** %6, align 8
  store i8** %15, i8*** %14, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %11, align 8
  br label %17

17:                                               ; preds = %43, %5
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load i8**, i8*** %14, align 8
  %22 = load i64, i64* %11, align 8
  %23 = lshr i64 %22, 1
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8** %24, i8*** %13, align 8
  %25 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8**, i8*** %13, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 %25(i8* %26, i8* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i8**, i8*** %13, align 8
  store i8** %33, i8*** %14, align 8
  br label %46

34:                                               ; preds = %20
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8**, i8*** %13, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8** %39, i8*** %14, align 8
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %11, align 8
  %45 = lshr i64 %44, 1
  store i64 %45, i64* %11, align 8
  br label %17

46:                                               ; preds = %32, %17
  %47 = load i64*, i64** %10, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i8**, i8*** %14, align 8
  %51 = load i8**, i8*** %6, align 8
  %52 = ptrtoint i8** %50 to i64
  %53 = ptrtoint i8** %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 8
  %56 = load i64*, i64** %10, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @GIT_ENOTFOUND, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ 0, %60 ], [ %62, %61 ]
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
