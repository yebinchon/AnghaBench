; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonstring.c_h2o_str_at_position.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonstring.c_h2o_str_at_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_str_at_position(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %5
  store i32 -1, i32* %6, align 4
  br label %108

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %43, %23
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %36, %29
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %108

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %30, label %42

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  br label %26

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %57, %46
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 40
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %11, align 4
  br label %47

60:                                               ; preds = %47
  store i32 1, i32* %13, align 4
  br label %61

61:                                               ; preds = %80, %60
  %62 = load i32, i32* %13, align 4
  %63 = icmp sle i32 %62, 76
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %64
  br label %83

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %8, align 8
  %77 = load i8, i8* %75, align 1
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  store i8 %77, i8* %78, align 1
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %61

83:                                               ; preds = %73, %61
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %7, align 8
  store i8 10, i8* %90, align 1
  store i32 1, i32* %13, align 4
  br label %92

92:                                               ; preds = %99, %89
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %7, align 8
  store i8 32, i8* %97, align 1
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %92

102:                                              ; preds = %92
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %7, align 8
  store i8 94, i8* %103, align 1
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  store i8 10, i8* %105, align 1
  %107 = load i8*, i8** %7, align 8
  store i8 0, i8* %107, align 1
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %102, %34, %22
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
