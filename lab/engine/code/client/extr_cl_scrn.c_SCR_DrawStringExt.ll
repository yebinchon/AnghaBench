; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawStringExt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawStringExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (float*)* }

@re = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@g_color_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_DrawStringExt(i32 %0, i32 %1, float %2, i8* %3, float* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store float %2, float* %10, align 4
  store i8* %3, i8** %11, align 8
  store float* %4, float** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load float*, float** %15, align 8
  %19 = getelementptr inbounds float, float* %18, i64 2
  store float 0.000000e+00, float* %19, align 4
  %20 = load float*, float** %15, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  store float 0.000000e+00, float* %21, align 4
  %22 = load float*, float** %15, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  store float 0.000000e+00, float* %23, align 4
  %24 = load float*, float** %12, align 8
  %25 = getelementptr inbounds float, float* %24, i64 3
  %26 = load float, float* %25, align 4
  %27 = load float*, float** %15, align 8
  %28 = getelementptr inbounds float, float* %27, i64 3
  store float %26, float* %28, align 4
  %29 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %30 = load float*, float** %15, align 8
  %31 = call i32 %29(float* %30)
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %16, align 8
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %17, align 4
  br label %34

34:                                               ; preds = %48, %45, %7
  %35 = load i8*, i8** %16, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %16, align 8
  %43 = call i64 @Q_IsColorString(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %16, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %47, i8** %16, align 8
  br label %34

48:                                               ; preds = %41, %38
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 2
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 2
  %53 = load float, float* %10, align 4
  %54 = load i8*, i8** %16, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @SCR_DrawChar(i32 %50, i32 %52, float %53, i8 signext %55)
  %57 = load float, float* %10, align 4
  %58 = load i32, i32* %17, align 4
  %59 = sitofp i32 %58 to float
  %60 = fadd float %59, %57
  %61 = fptosi float %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load i8*, i8** %16, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %16, align 8
  br label %34

64:                                               ; preds = %34
  %65 = load i8*, i8** %11, align 8
  store i8* %65, i8** %16, align 8
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %17, align 4
  %67 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %68 = load float*, float** %12, align 8
  %69 = call i32 %67(float* %68)
  br label %70

70:                                               ; preds = %106, %102, %64
  %71 = load i8*, i8** %16, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %120

74:                                               ; preds = %70
  %75 = load i8*, i8** %16, align 8
  %76 = call i64 @Q_IsColorString(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %78
  %82 = load float*, float** %15, align 8
  %83 = load i32*, i32** @g_color_table, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @ColorIndex(i8 signext %86)
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @Com_Memcpy(float* %82, i32 %89, i32 8)
  %91 = load float*, float** %12, align 8
  %92 = getelementptr inbounds float, float* %91, i64 3
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %15, align 8
  %95 = getelementptr inbounds float, float* %94, i64 3
  store float %93, float* %95, align 4
  %96 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %97 = load float*, float** %15, align 8
  %98 = call i32 %96(float* %97)
  br label %99

99:                                               ; preds = %81, %78
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %16, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  store i8* %104, i8** %16, align 8
  br label %70

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %74
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load float, float* %10, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = load i8, i8* %110, align 1
  %112 = call i32 @SCR_DrawChar(i32 %107, i32 %108, float %109, i8 signext %111)
  %113 = load float, float* %10, align 4
  %114 = load i32, i32* %17, align 4
  %115 = sitofp i32 %114 to float
  %116 = fadd float %115, %113
  %117 = fptosi float %116 to i32
  store i32 %117, i32* %17, align 4
  %118 = load i8*, i8** %16, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %16, align 8
  br label %70

120:                                              ; preds = %70
  %121 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %122 = call i32 %121(float* null)
  ret void
}

declare dso_local i64 @Q_IsColorString(i8*) #1

declare dso_local i32 @SCR_DrawChar(i32, i32, float, i8 signext) #1

declare dso_local i32 @Com_Memcpy(float*, i32, i32) #1

declare dso_local i64 @ColorIndex(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
