; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_Text_PaintCenter_AutoWrapped.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_Text_PaintCenter_AutoWrapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Text_PaintCenter_AutoWrapped(float %0, float %1, float %2, float %3, float %4, i32 %5, i8* %6, float %7) #0 {
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8, align 1
  %22 = alloca [1024 x i8], align 16
  store float %0, float* %9, align 4
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store float %7, float* %16, align 4
  %23 = load i8*, i8** %15, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %8
  %26 = load i8*, i8** %15, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %8
  br label %123

32:                                               ; preds = %25
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %34 = load i8*, i8** %15, align 8
  %35 = call i32 @Q_strncpyz(i8* %33, i8* %34, i32 1024)
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  store i8* %36, i8** %20, align 8
  store i8* %36, i8** %19, align 8
  store i8* %36, i8** %18, align 8
  br label %37

37:                                               ; preds = %32, %122
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i8*, i8** %20, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %20, align 8
  br label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %20, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 32
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i8*, i8** %20, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br i1 %52, label %38, label %53

53:                                               ; preds = %51
  %54 = load i8*, i8** %20, align 8
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %21, align 1
  %56 = load i8*, i8** %20, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %18, align 8
  %58 = load float, float* %13, align 4
  %59 = call i32 @Text_Width(i8* %57, float %58, i32 0)
  store i32 %59, i32* %17, align 4
  %60 = load i8, i8* %21, align 1
  %61 = load i8*, i8** %20, align 8
  store i8 %60, i8* %61, align 1
  %62 = load i32, i32* %17, align 4
  %63 = sitofp i32 %62 to float
  %64 = load float, float* %11, align 4
  %65 = fcmp ogt float %63, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %53
  %67 = load i8*, i8** %18, align 8
  %68 = load i8*, i8** %19, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i8*, i8** %20, align 8
  store i8* %71, i8** %19, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i8*, i8** %19, align 8
  store i8 0, i8* %73, align 1
  %74 = load float, float* %9, align 4
  %75 = load float, float* %10, align 4
  %76 = load float, float* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i8*, i8** %18, align 8
  %79 = load float, float* %16, align 4
  %80 = call i32 @Text_PaintCenter(float %74, float %75, float %76, i32 %77, i8* %78, float %79)
  %81 = load float, float* %12, align 4
  %82 = load float, float* %10, align 4
  %83 = fadd float %82, %81
  store float %83, float* %10, align 4
  %84 = load i8, i8* %21, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %72
  %88 = load i8*, i8** %19, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %19, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load float, float* %9, align 4
  %96 = load float, float* %10, align 4
  %97 = load float, float* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i8*, i8** %19, align 8
  %100 = load float, float* %16, align 4
  %101 = call i32 @Text_PaintCenter(float %95, float %96, float %97, i32 %98, i8* %99, float %100)
  br label %102

102:                                              ; preds = %94, %87
  br label %123

103:                                              ; preds = %72
  %104 = load i8*, i8** %19, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %19, align 8
  %106 = load i8*, i8** %19, align 8
  store i8* %106, i8** %18, align 8
  %107 = load i8*, i8** %19, align 8
  store i8* %107, i8** %20, align 8
  br label %122

108:                                              ; preds = %53
  %109 = load i8*, i8** %20, align 8
  store i8* %109, i8** %19, align 8
  %110 = load i8, i8* %21, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load float, float* %9, align 4
  %115 = load float, float* %10, align 4
  %116 = load float, float* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i8*, i8** %18, align 8
  %119 = load float, float* %16, align 4
  %120 = call i32 @Text_PaintCenter(float %114, float %115, float %116, i32 %117, i8* %118, float %119)
  br label %123

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121, %103
  br label %37

123:                                              ; preds = %31, %113, %102
  ret void
}

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @Text_Width(i8*, float, i32) #1

declare dso_local i32 @Text_PaintCenter(float, float, float, i32, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
