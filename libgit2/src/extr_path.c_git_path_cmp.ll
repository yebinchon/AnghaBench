; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_cmp.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_path_cmp(i8* %0, i64 %1, i32 %2, i8* %3, i64 %4, i32 %5, i32 (i8*, i8*, i64)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32 (i8*, i8*, i64)*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 (i8*, i8*, i64)* %6, i32 (i8*, i8*, i64)** %15, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i64, i64* %10, align 8
  br label %27

25:                                               ; preds = %7
  %26 = load i64, i64* %13, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %18, align 8
  %29 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %15, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i64, i64* %18, align 8
  %33 = call i32 %29(i8* %30, i8* %31, i64 %32)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %19, align 4
  store i32 %37, i32* %8, align 4
  br label %79

38:                                               ; preds = %27
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %18, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %16, align 1
  %43 = load i8*, i8** %12, align 8
  %44 = load i64, i64* %18, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %17, align 1
  %47 = load i8, i8* %16, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8 47, i8* %16, align 1
  br label %54

54:                                               ; preds = %53, %50, %38
  %55 = load i8, i8* %17, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i8 47, i8* %17, align 1
  br label %62

62:                                               ; preds = %61, %58, %54
  %63 = load i8, i8* %16, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* %17, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %77

69:                                               ; preds = %62
  %70 = load i8, i8* %16, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %17, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sgt i32 %71, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  br label %77

77:                                               ; preds = %69, %68
  %78 = phi i32 [ -1, %68 ], [ %76, %69 ]
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %36
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
