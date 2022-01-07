; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonstring.c_h2o_strtosizefwd.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonstring.c_h2o_strtosizefwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h2o_strtosizefwd(i8** %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %9, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %74

20:                                               ; preds = %2
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 48, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %28, 57
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %20
  br label %74

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 48
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %63
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sle i32 48, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %34
  br label %64

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 10
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 48
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %64

59:                                               ; preds = %44
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 20
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %74

63:                                               ; preds = %59
  br label %34

64:                                               ; preds = %58, %43
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @SIZE_MAX, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = load i8**, i8*** %4, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %3, align 8
  br label %77

74:                                               ; preds = %68, %62, %30, %19
  %75 = load i32, i32* @SIZE_MAX, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %3, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i64, i64* %3, align 8
  ret i64 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
