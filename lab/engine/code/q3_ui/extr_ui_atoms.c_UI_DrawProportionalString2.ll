; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_DrawProportionalString2.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_DrawProportionalString2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@uis = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PROP_SPACE_WIDTH = common dso_local global i64 0, align 8
@propMap = common dso_local global i32** null, align 8
@PROP_HEIGHT = common dso_local global i64 0, align 8
@PROP_GAP_WIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32*, float, i32)* @UI_DrawProportionalString2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawProportionalString2(i32 %0, i32 %1, i8* %2, i32* %3, float %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  store float 0.000000e+00, float* %17, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @trap_R_SetColor(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 1), align 4
  %29 = add nsw i32 %27, %28
  %30 = sitofp i32 %29 to float
  store float %30, float* %15, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 2), align 4
  %33 = mul nsw i32 %31, %32
  %34 = sitofp i32 %33 to float
  store float %34, float* %16, align 4
  %35 = load i8*, i8** %9, align 8
  store i8* %35, i8** %13, align 8
  br label %36

36:                                               ; preds = %132, %6
  %37 = load i8*, i8** %13, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %146

40:                                               ; preds = %36
  %41 = load i8*, i8** %13, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = and i32 %43, 127
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %14, align 1
  %46 = load i8, i8* %14, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load i64, i64* @PROP_SPACE_WIDTH, align 8
  %51 = sitofp i64 %50 to float
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %53 = sitofp i32 %52 to float
  %54 = fmul float %51, %53
  %55 = load float, float* %11, align 4
  %56 = fmul float %54, %55
  store float %56, float* %17, align 4
  br label %132

57:                                               ; preds = %40
  %58 = load i32**, i32*** @propMap, align 8
  %59 = load i8, i8* %14, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %131

66:                                               ; preds = %57
  %67 = load i32**, i32*** @propMap, align 8
  %68 = load i8, i8* %14, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = sitofp i32 %73 to float
  %75 = fdiv float %74, 2.560000e+02
  store float %75, float* %20, align 4
  %76 = load i32**, i32*** @propMap, align 8
  %77 = load i8, i8* %14, align 1
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = sitofp i32 %82 to float
  %84 = fdiv float %83, 2.560000e+02
  store float %84, float* %19, align 4
  %85 = load i32**, i32*** @propMap, align 8
  %86 = load i8, i8* %14, align 1
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = sitofp i32 %91 to float
  %93 = fdiv float %92, 2.560000e+02
  store float %93, float* %21, align 4
  %94 = load i64, i64* @PROP_HEIGHT, align 8
  %95 = sitofp i64 %94 to float
  %96 = fdiv float %95, 2.560000e+02
  store float %96, float* %22, align 4
  %97 = load i32**, i32*** @propMap, align 8
  %98 = load i8, i8* %14, align 1
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to float
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %106 = sitofp i32 %105 to float
  %107 = fmul float %104, %106
  %108 = load float, float* %11, align 4
  %109 = fmul float %107, %108
  store float %109, float* %17, align 4
  %110 = load i64, i64* @PROP_HEIGHT, align 8
  %111 = sitofp i64 %110 to float
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 2), align 4
  %113 = sitofp i32 %112 to float
  %114 = fmul float %111, %113
  %115 = load float, float* %11, align 4
  %116 = fmul float %114, %115
  store float %116, float* %18, align 4
  %117 = load float, float* %15, align 4
  %118 = load float, float* %16, align 4
  %119 = load float, float* %17, align 4
  %120 = load float, float* %18, align 4
  %121 = load float, float* %20, align 4
  %122 = load float, float* %19, align 4
  %123 = load float, float* %20, align 4
  %124 = load float, float* %21, align 4
  %125 = fadd float %123, %124
  %126 = load float, float* %19, align 4
  %127 = load float, float* %22, align 4
  %128 = fadd float %126, %127
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @trap_R_DrawStretchPic(float %117, float %118, float %119, float %120, float %121, float %122, float %125, float %128, i32 %129)
  br label %131

131:                                              ; preds = %66, %57
  br label %132

132:                                              ; preds = %131, %49
  %133 = load float, float* %17, align 4
  %134 = load i64, i64* @PROP_GAP_WIDTH, align 8
  %135 = sitofp i64 %134 to float
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %137 = sitofp i32 %136 to float
  %138 = fmul float %135, %137
  %139 = load float, float* %11, align 4
  %140 = fmul float %138, %139
  %141 = fadd float %133, %140
  %142 = load float, float* %15, align 4
  %143 = fadd float %142, %141
  store float %143, float* %15, align 4
  %144 = load i8*, i8** %13, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %13, align 8
  br label %36

146:                                              ; preds = %36
  %147 = call i32 @trap_R_SetColor(i32* null)
  ret void
}

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i32 @trap_R_DrawStretchPic(float, float, float, float, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
