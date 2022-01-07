; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_base64.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_base64.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symbols64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base64_encode(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %88, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %97

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @next_input_uchar(i8* %23, i32 %24, i32* %10)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = shl i32 %26, 8
  store i32 %27, i32* %14, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @next_input_uchar(i8* %28, i32 %29, i32* %10)
  %31 = load i32, i32* %14, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = shl i32 %33, 8
  store i32 %34, i32* %14, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @next_input_uchar(i8* %35, i32 %36, i32* %10)
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %21
  %46 = load i32, i32* %15, align 4
  %47 = icmp sle i32 %46, 3
  br label %48

48:                                               ; preds = %45, %21
  %49 = phi i1 [ false, %21 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  store i32 3, i32* %16, align 4
  br label %52

52:                                               ; preds = %67, %48
  %53 = load i32, i32* %16, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i8*, i8** @symbols64, align 8
  %57 = load i32, i32* %14, align 4
  %58 = and i32 %57, 63
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 %63
  store i8 %61, i8* %64, align 1
  %65 = load i32, i32* %14, align 4
  %66 = ashr i32 %65, 6
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %16, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 3
  store i8 61, i8* %74, align 1
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 2
  store i8 61, i8* %75, align 1
  br label %82

76:                                               ; preds = %70
  %77 = load i32, i32* %15, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 3
  store i8 61, i8* %80, align 1
  br label %81

81:                                               ; preds = %79, %76
  br label %82

82:                                               ; preds = %81, %73
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 3
  %85 = load i32, i32* %9, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 -1, i32* %5, align 4
  br label %108

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %94 = call i32 @memcpy(i8* %92, i8* %93, i32 4)
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 4
  store i32 %96, i32* %11, align 4
  br label %17

97:                                               ; preds = %17
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 -1, i32* %5, align 4
  br label %108

102:                                              ; preds = %97
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 0, i8* %107, align 1
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %101, %87
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @next_input_uchar(i8*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
