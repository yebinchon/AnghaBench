; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_kstring_bench2.c_BoyerMoore.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_kstring_bench2.c_BoyerMoore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BoyerMoore(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [256 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %138

18:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i32, i32* %11, align 4
  %21 = icmp ult i32 %20, 256
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %19

30:                                               ; preds = %19
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %9, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %41, %30
  %35 = load i32, i32* %11, align 4
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %12, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %39
  store i32 %35, i32* %40, align 4
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %11, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %34, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %13, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %12, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub i32 %54, 1
  %56 = add i32 %53, %55
  %57 = load i32, i32* %7, align 4
  %58 = sub i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %127, %98, %45
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %137

62:                                               ; preds = %59
  %63 = load i8*, i8** %12, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %12, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %12, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i8*, i8** %12, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %14, align 4
  %92 = load i8*, i8** %12, align 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* %13, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %62
  %99 = load i32, i32* %14, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %12, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %59

106:                                              ; preds = %62
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %115, %106
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, -1
  store i32 %110, i32* %11, align 4
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i8*, i8** %12, align 8
  store i8* %113, i8** %5, align 8
  br label %138

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8* %117, i8** %12, align 8
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %119, %125
  br i1 %126, label %108, label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %11, align 4
  %130 = sub i32 %128, %129
  %131 = add i32 %130, 1
  %132 = load i8*, i8** %12, align 8
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %12, align 8
  %135 = load i32, i32* %7, align 4
  %136 = add i32 %135, -1
  store i32 %136, i32* %7, align 4
  br label %59

137:                                              ; preds = %59
  store i8* null, i8** %5, align 8
  br label %138

138:                                              ; preds = %137, %112, %17
  %139 = load i8*, i8** %5, align 8
  ret i8* %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
