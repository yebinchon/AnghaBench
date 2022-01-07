; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_util.c_git__bsearch_r.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_util.c_git__bsearch_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git__bsearch_r(i8** %0, i64 %1, i8* %2, i32 (i8*, i8*, i8*)* %3, i8* %4, i64* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  store i8** %0, i8*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (i8*, i8*, i8*)* %3, i32 (i8*, i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64* %5, i64** %12, align 8
  store i32 -1, i32* %14, align 4
  %17 = load i8**, i8*** %7, align 8
  store i8** %17, i8*** %16, align 8
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %13, align 8
  br label %19

19:                                               ; preds = %46, %6
  %20 = load i64, i64* %13, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load i8**, i8*** %16, align 8
  %24 = load i64, i64* %13, align 8
  %25 = lshr i64 %24, 1
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  store i8** %26, i8*** %15, align 8
  %27 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %10, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i8**, i8*** %15, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 %27(i8* %28, i8* %30, i8* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i8**, i8*** %15, align 8
  store i8** %36, i8*** %16, align 8
  br label %49

37:                                               ; preds = %22
  %38 = load i32, i32* %14, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8**, i8*** %15, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  store i8** %42, i8*** %16, align 8
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %13, align 8
  br label %45

45:                                               ; preds = %40, %37
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %13, align 8
  %48 = lshr i64 %47, 1
  store i64 %48, i64* %13, align 8
  br label %19

49:                                               ; preds = %35, %19
  %50 = load i64*, i64** %12, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i8**, i8*** %16, align 8
  %54 = load i8**, i8*** %7, align 8
  %55 = ptrtoint i8** %53 to i64
  %56 = ptrtoint i8** %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 8
  %59 = load i64*, i64** %12, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %49
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @GIT_ENOTFOUND, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ 0, %63 ], [ %65, %64 ]
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
