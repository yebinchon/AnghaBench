; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawCenterString.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawCenterString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@cg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cg_centertime = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@BIGCHAR_HEIGHT = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@ITEM_TEXTSTYLE_SHADOWEDMORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawCenterString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawCenterString() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 4), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %117

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 4), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cg_centertime, i32 0, i32 0), align 4
  %14 = mul nsw i32 1000, %13
  %15 = call float* @CG_FadeColor(i32 %12, i32 %14)
  store float* %15, float** %6, align 8
  %16 = load float*, float** %6, align 8
  %17 = icmp ne float* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %117

19:                                               ; preds = %11
  %20 = load float*, float** %6, align 8
  %21 = call i32 @trap_R_SetColor(float* %20)
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0), align 8
  store i8* %22, i8** %1, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 1), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 2), align 4
  %25 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sdiv i32 %26, 2
  %28 = sub nsw i32 %23, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %19, %112
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 50
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load i8*, i8** %1, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i8*, i8** %1, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %33
  br label %61

49:                                               ; preds = %40
  %50 = load i8*, i8** %1, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %56
  store i8 %54, i8* %57, align 1
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %30

61:                                               ; preds = %48, %30
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 3), align 8
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %67 = call i32 @CG_DrawStrlen(i8* %66)
  %68 = mul nsw i32 %65, %67
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @SCREEN_WIDTH, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %4, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %76 = load float*, float** %6, align 8
  %77 = load i32, i32* @qfalse, align 4
  %78 = load i32, i32* @qtrue, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 3), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 3), align 8
  %81 = sitofp i32 %80 to double
  %82 = fmul double %81, 1.500000e+00
  %83 = fptosi double %82 to i32
  %84 = call i32 @CG_DrawStringExt(i32 %73, i32 %74, i8* %75, float* %76, i32 %77, i32 %78, i32 %79, i32 %83, i32 0)
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 3), align 8
  %86 = sitofp i32 %85 to double
  %87 = fmul double %86, 1.500000e+00
  %88 = load i32, i32* %4, align 4
  %89 = sitofp i32 %88 to double
  %90 = fadd double %89, %87
  %91 = fptosi double %90 to i32
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %104, %61
  %93 = load i8*, i8** %1, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i8*, i8** %1, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 10
  br label %102

102:                                              ; preds = %97, %92
  %103 = phi i1 [ false, %92 ], [ %101, %97 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i8*, i8** %1, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %1, align 8
  br label %92

107:                                              ; preds = %102
  %108 = load i8*, i8** %1, align 8
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  br label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %1, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %1, align 8
  br label %29

115:                                              ; preds = %111
  %116 = call i32 @trap_R_SetColor(float* null)
  br label %117

117:                                              ; preds = %115, %18, %10
  ret void
}

declare dso_local float* @CG_FadeColor(i32, i32) #1

declare dso_local i32 @trap_R_SetColor(float*) #1

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawStringExt(i32, i32, i8*, float*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
