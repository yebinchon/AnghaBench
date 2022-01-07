; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_match_pathname.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_match_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WM_PATHNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_pathname(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i8*, i8** %14, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 47
  br i1 %23, label %24, label %31

24:                                               ; preds = %8
  %25 = load i8*, i8** %14, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %14, align 8
  %27 = load i32, i32* %16, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %24, %8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %53, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 47
  br i1 %46, label %53, label %47

47:                                               ; preds = %39, %36
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @fspathncmp(i8* %48, i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %39, %31
  store i32 0, i32* %9, align 4
  br label %119

54:                                               ; preds = %47
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi i32 [ %61, %57 ], [ %63, %62 ]
  store i32 %65, i32* %19, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8* %73, i8** %18, align 8
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %110

76:                                               ; preds = %64
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %119

81:                                               ; preds = %76
  %82 = load i8*, i8** %14, align 8
  %83 = load i8*, i8** %18, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i64 @fspathncmp(i8* %82, i8* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %119

88:                                               ; preds = %81
  %89 = load i32, i32* %15, align 4
  %90 = load i8*, i8** %14, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %14, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i8*, i8** %18, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %18, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %19, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32 1, i32* %9, align 4
  br label %119

109:                                              ; preds = %105, %88
  br label %110

110:                                              ; preds = %109, %64
  %111 = load i8*, i8** %14, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i8*, i8** %18, align 8
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* @WM_PATHNAME, align 4
  %116 = call i64 @fnmatch_icase_mem(i8* %111, i32 %112, i8* %113, i32 %114, i32 %115)
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %110, %108, %87, %80, %53
  %120 = load i32, i32* %9, align 4
  ret i32 %120
}

declare dso_local i64 @fspathncmp(i8*, i8*, i32) #1

declare dso_local i64 @fnmatch_icase_mem(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
