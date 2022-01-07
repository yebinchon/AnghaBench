; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_verify_ordered.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_verify_ordered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TREE_UNORDERED = common dso_local global i32 0, align 4
@TREE_HAS_DUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*)* @verify_ordered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_ordered(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %12, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @memcmp(i8* %29, i8* %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %86

36:                                               ; preds = %27
  %37 = load i32, i32* %15, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @TREE_UNORDERED, align 4
  store i32 %40, i32* %5, align 4
  br label %86

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %13, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %14, align 1
  %52 = load i8, i8* %13, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %41
  %55 = load i8, i8* %14, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @TREE_HAS_DUPS, align 4
  store i32 %58, i32* %5, align 4
  br label %86

59:                                               ; preds = %54, %41
  %60 = load i8, i8* %13, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @S_ISDIR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i8 47, i8* %13, align 1
  br label %67

67:                                               ; preds = %66, %62, %59
  %68 = load i8, i8* %14, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @S_ISDIR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i8 47, i8* %14, align 1
  br label %75

75:                                               ; preds = %74, %70, %67
  %76 = load i8, i8* %13, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* %14, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @TREE_UNORDERED, align 4
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i32 [ 0, %81 ], [ %83, %82 ]
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %57, %39, %35
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
