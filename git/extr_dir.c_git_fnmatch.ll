; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_git_fnmatch.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_git_fnmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec_item = type { i32, i32 }

@WM_NOMATCH = common dso_local global i32 0, align 4
@PATHSPEC_ONESTAR = common dso_local global i32 0, align 4
@PATHSPEC_GLOB = common dso_local global i32 0, align 4
@WM_PATHNAME = common dso_local global i32 0, align 4
@PATHSPEC_ICASE = common dso_local global i32 0, align 4
@WM_CASEFOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_fnmatch(%struct.pathspec_item* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pathspec_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pathspec_item* %0, %struct.pathspec_item** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @ps_strncmp(%struct.pathspec_item* %15, i8* %16, i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @WM_NOMATCH, align 4
  store i32 %22, i32* %5, align 4
  br label %103

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %23, %4
  %33 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %34 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PATHSPEC_ONESTAR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %32
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  %42 = call i32 @strlen(i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strlen(i8* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %61, label %48

48:                                               ; preds = %39
  %49 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = call i64 @ps_strcmp(%struct.pathspec_item* %49, i8* %50, i8* %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %48, %39
  %62 = phi i1 [ true, %39 ], [ %60, %48 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %103

64:                                               ; preds = %32
  %65 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %66 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PATHSPEC_GLOB, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %64
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* @WM_PATHNAME, align 4
  %75 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %76 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PATHSPEC_ICASE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* @WM_CASEFOLD, align 4
  br label %84

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  %86 = or i32 %74, %85
  %87 = call i32 @wildmatch(i8* %72, i8* %73, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %103

88:                                               ; preds = %64
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %92 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PATHSPEC_ICASE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @WM_CASEFOLD, align 4
  br label %100

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = call i32 @wildmatch(i8* %89, i8* %90, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %84, %61, %21
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @ps_strncmp(%struct.pathspec_item*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ps_strcmp(%struct.pathspec_item*, i8*, i8*) #1

declare dso_local i32 @wildmatch(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
