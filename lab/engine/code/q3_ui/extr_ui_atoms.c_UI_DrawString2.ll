; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_DrawString2.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_DrawString2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@g_color_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32*, i32, i32)* @UI_DrawString2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawString2(i32 %0, i32 %1, i8* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
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
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %12, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %128

29:                                               ; preds = %6
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @trap_R_SetColor(i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 1), align 4
  %36 = add nsw i32 %34, %35
  %37 = sitofp i32 %36 to float
  store float %37, float* %17, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 2), align 4
  %40 = mul nsw i32 %38, %39
  %41 = sitofp i32 %40 to float
  store float %41, float* %18, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %44 = mul nsw i32 %42, %43
  %45 = sitofp i32 %44 to float
  store float %45, float* %19, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 2), align 4
  %48 = mul nsw i32 %46, %47
  %49 = sitofp i32 %48 to float
  store float %49, float* %20, align 4
  %50 = load i8*, i8** %9, align 8
  store i8* %50, i8** %13, align 8
  br label %51

51:                                               ; preds = %120, %79, %29
  %52 = load i8*, i8** %13, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %126

55:                                               ; preds = %51
  %56 = load i8*, i8** %13, align 8
  %57 = call i64 @Q_IsColorString(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %59
  %63 = load i32*, i32** %16, align 8
  %64 = load i32*, i32** @g_color_table, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @ColorIndex(i8 signext %67)
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32* %63, i32 %70, i32 8)
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %16, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %16, align 8
  %78 = call i32 @trap_R_SetColor(i32* %77)
  br label %79

79:                                               ; preds = %62, %59
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %13, align 8
  br label %51

82:                                               ; preds = %55
  %83 = load i8*, i8** %13, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %14, align 1
  %88 = load i8, i8* %14, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 32
  br i1 %90, label %91, label %120

91:                                               ; preds = %82
  %92 = load i8, i8* %14, align 1
  %93 = sext i8 %92 to i32
  %94 = ashr i32 %93, 4
  %95 = sitofp i32 %94 to double
  %96 = fmul double %95, 6.250000e-02
  %97 = fptrunc double %96 to float
  store float %97, float* %21, align 4
  %98 = load i8, i8* %14, align 1
  %99 = sext i8 %98 to i32
  %100 = and i32 %99, 15
  %101 = sitofp i32 %100 to double
  %102 = fmul double %101, 6.250000e-02
  %103 = fptrunc double %102 to float
  store float %103, float* %22, align 4
  %104 = load float, float* %17, align 4
  %105 = load float, float* %18, align 4
  %106 = load float, float* %19, align 4
  %107 = load float, float* %20, align 4
  %108 = load float, float* %22, align 4
  %109 = load float, float* %21, align 4
  %110 = load float, float* %22, align 4
  %111 = fpext float %110 to double
  %112 = fadd double %111, 6.250000e-02
  %113 = fptrunc double %112 to float
  %114 = load float, float* %21, align 4
  %115 = fpext float %114 to double
  %116 = fadd double %115, 6.250000e-02
  %117 = fptrunc double %116 to float
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 3), align 4
  %119 = call i32 @trap_R_DrawStretchPic(float %104, float %105, float %106, float %107, float %108, float %109, float %113, float %117, i32 %118)
  br label %120

120:                                              ; preds = %91, %82
  %121 = load float, float* %19, align 4
  %122 = load float, float* %17, align 4
  %123 = fadd float %122, %121
  store float %123, float* %17, align 4
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %13, align 8
  br label %51

126:                                              ; preds = %51
  %127 = call i32 @trap_R_SetColor(i32* null)
  br label %128

128:                                              ; preds = %126, %28
  ret void
}

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i64 @Q_IsColorString(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @ColorIndex(i8 signext) #1

declare dso_local i32 @trap_R_DrawStretchPic(float, float, float, float, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
