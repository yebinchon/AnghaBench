; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_path_w32.c_git_win32_path_8dot3_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_path_w32.c_git_win32_path_8dot3_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_WIN_PATH_UTF16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_win32_path_8dot3_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @git_win32_path_from_utf8(i32* %10, i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %94

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @GIT_WIN_PATH_UTF16, align 4
  %19 = call i32 @GetShortPathNameW(i32* %16, i32* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %33, %15
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 92
  br label %31

31:                                               ; preds = %23, %20
  %32 = phi i1 [ false, %20 ], [ %30, %23 ]
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 0, i32* %38, align 4
  br label %20

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @GIT_WIN_PATH_UTF16, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %39
  store i8* null, i8** %2, align 8
  br label %94

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32* %52, i32** %6, align 8
  br label %53

53:                                               ; preds = %72, %47
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = icmp ugt i32* %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 -1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 47
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 -1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 92
  br label %67

67:                                               ; preds = %62, %57, %53
  %68 = phi i1 [ false, %57 ], [ false, %53 ], [ %66, %62 ]
  br i1 %68, label %69, label %75

69:                                               ; preds = %67
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 -1
  store i32* %74, i32** %6, align 8
  br label %53

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %76, 12
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i8* @git__malloc(i32 %80)
  store i8* %81, i8** %7, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %75
  store i8* null, i8** %2, align 8
  br label %94

84:                                               ; preds = %78
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @git__utf16_to_8(i8* %85, i32 %87, i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i8* null, i8** %2, align 8
  br label %94

92:                                               ; preds = %84
  %93 = load i8*, i8** %7, align 8
  store i8* %93, i8** %2, align 8
  br label %94

94:                                               ; preds = %92, %91, %83, %46, %14
  %95 = load i8*, i8** %2, align 8
  ret i8* %95
}

declare dso_local i64 @git_win32_path_from_utf8(i32*, i8*) #1

declare dso_local i32 @GetShortPathNameW(i32*, i32*, i32) #1

declare dso_local i8* @git__malloc(i32) #1

declare dso_local i32 @git__utf16_to_8(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
