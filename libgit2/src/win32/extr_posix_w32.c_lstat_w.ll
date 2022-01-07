; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_lstat_w.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_lstat_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@GetFileExInfoStandard = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.stat*, i32)* @lstat_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lstat_w(i32* %0, %struct.stat* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @GetFileExInfoStandard, align 4
  %13 = call i64 @GetFileAttributesExW(i32* %11, i32 %12, i32* %8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.stat*, %struct.stat** %6, align 8
  %17 = icmp ne %struct.stat* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %83

19:                                               ; preds = %15
  %20 = load %struct.stat*, %struct.stat** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @git_win32__file_attribute_to_stat(%struct.stat* %20, i32* %8, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = call i32 (...) @GetLastError()
  switch i32 %24, label %27 [
    i32 128, label %25
  ]

25:                                               ; preds = %23
  %26 = load i64, i64* @EACCES, align 8
  store i64 %26, i64* @errno, align 8
  br label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @ENOENT, align 8
  store i64 %28, i64* @errno, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @ENOENT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @wcslen(i32* %37)
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %36, %80
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %56, %39
  %43 = load i64, i64* %9, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @WIN32_IS_WSEP(i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %45, %42
  %54 = phi i1 [ false, %42 ], [ %52, %45 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %9, align 8
  br label %42

59:                                               ; preds = %53
  %60 = load i64, i64* %9, align 8
  %61 = icmp ule i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %81

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 0, i32* %66, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @GetFileAttributesW(i32* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i64, i64* @ENOTDIR, align 8
  store i64 %78, i64* @errno, align 8
  br label %79

79:                                               ; preds = %77, %72
  br label %81

80:                                               ; preds = %63
  br label %39

81:                                               ; preds = %79, %62
  br label %82

82:                                               ; preds = %81, %33, %29
  store i32 -1, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %19, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @GetFileAttributesExW(i32*, i32, i32*) #1

declare dso_local i32 @git_win32__file_attribute_to_stat(%struct.stat*, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @WIN32_IS_WSEP(i32) #1

declare dso_local i32 @GetFileAttributesW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
