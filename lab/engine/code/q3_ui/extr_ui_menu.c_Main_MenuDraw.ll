; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_menu.c_Main_MenuDraw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_menu.c_Main_MenuDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { float, float, float, float, i32, double, i32*, i32*, i32, i32*, i32, i32, i64, i32, i32 }

@__const.Main_MenuDraw.color = private unnamed_addr constant %struct.TYPE_12__ { double 5.000000e-01, i32 0, i32 0, i32 1 }, align 8
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@s_main = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@RF_LIGHTING_ORIGIN = common dso_local global i32 0, align 4
@RF_NOSHADOW = common dso_local global i32 0, align 4
@s_errorMessage = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@UI_CENTER = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@UI_DROPSHADOW = common dso_local global i32 0, align 4
@menu_text_color = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"DEMO      FOR MATURE AUDIENCES      DEMO\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Quake III Arena(c) 1999-2000, Id Software, Inc.  All Rights Reserved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Main_MenuDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Main_MenuDraw() #0 {
  %1 = alloca %struct.TYPE_13__, align 8
  %2 = alloca %struct.TYPE_13__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_12__* @__const.Main_MenuDraw.color to i8*), i64 24, i1 false)
  %12 = call i32 @memset(%struct.TYPE_13__* %1, i32 0, i32 88)
  %13 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 14
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 13
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @AxisClear(i32 %16)
  store float 0.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store float 6.400000e+02, float* %8, align 4
  store float 1.200000e+02, float* %9, align 4
  %18 = call i32 @UI_AdjustFrom640(float* %6, float* %7, float* %8, float* %9)
  %19 = load float, float* %6, align 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 0
  store float %19, float* %20, align 8
  %21 = load float, float* %7, align 4
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 1
  store float %21, float* %22, align 4
  %23 = load float, float* %8, align 4
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 2
  store float %23, float* %24, align 8
  %25 = load float, float* %9, align 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 3
  store float %25, float* %26, align 4
  store float 0.000000e+00, float* %5, align 4
  %27 = load float, float* %5, align 4
  %28 = fadd float 6.000000e+01, %27
  %29 = fptosi float %28 to i32
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 4
  store i32 %29, i32* %30, align 8
  %31 = load float, float* %5, align 4
  %32 = fpext float %31 to double
  %33 = fadd double 1.968750e+01, %32
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 5
  store double %33, double* %34, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uis, i32 0, i32 1), align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 12
  store i64 %35, i64* %36, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 300, i32* %38, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 -32, i32* %42, align 4
  %43 = call i32 (...) @trap_R_ClearScene()
  %44 = call i32 @memset(%struct.TYPE_13__* %2, i32 0, i32 88)
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uis, i32 0, i32 1), align 8
  %46 = sitofp i64 %45 to float
  %47 = fdiv float %46, 5.000000e+03
  %48 = call double @sin(float %47)
  %49 = fmul double 5.000000e+00, %48
  %50 = fptrunc double %49 to float
  store float %50, float* %5, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load float, float* %5, align 4
  %53 = fadd float 1.800000e+02, %52
  %54 = fptosi float %53 to i32
  %55 = call i32 @VectorSet(i32* %51, i32 0, i32 %54, i32 0)
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 11
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @AnglesToAxis(i32* %56, i32 %58)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_main, i32 0, i32 1), align 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 10
  store i32 %60, i32* %61, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @VectorCopy(i32* %62, i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @VectorCopy(i32* %66, i32* %68)
  %70 = load i32, i32* @RF_LIGHTING_ORIGIN, align 4
  %71 = load i32, i32* @RF_NOSHADOW, align 4
  %72 = or i32 %70, %71
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 8
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 9
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @VectorCopy(i32* %75, i32* %77)
  %79 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_13__* %2)
  %80 = call i32 @trap_R_RenderScene(%struct.TYPE_13__* %1)
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_errorMessage, i32 0, i32 0), align 4
  %82 = call i64 @strlen(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %0
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_errorMessage, i32 0, i32 0), align 4
  %86 = load i32, i32* @UI_CENTER, align 4
  %87 = load i32, i32* @UI_SMALLFONT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @UI_DROPSHADOW, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @menu_text_color, align 4
  %92 = call i32 @UI_DrawProportionalString_AutoWrapped(i32 320, i32 192, i32 600, i32 20, i32 %85, i32 %90, i32 %91)
  br label %95

93:                                               ; preds = %0
  %94 = call i32 @Menu_Draw(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_main, i32 0, i32 0))
  br label %95

95:                                               ; preds = %93, %84
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uis, i32 0, i32 0), align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* @UI_CENTER, align 4
  %100 = load i32, i32* @UI_SMALLFONT, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @UI_DrawProportionalString(i32 320, i32 372, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %101, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %10)
  %103 = load i32, i32* @UI_CENTER, align 4
  %104 = load i32, i32* @UI_SMALLFONT, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @UI_DrawString(i32 320, i32 400, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %105, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %10)
  br label %112

107:                                              ; preds = %95
  %108 = load i32, i32* @UI_CENTER, align 4
  %109 = load i32, i32* @UI_SMALLFONT, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @UI_DrawString(i32 320, i32 450, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %110, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %10)
  br label %112

112:                                              ; preds = %107, %98
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @AxisClear(i32) #2

declare dso_local i32 @UI_AdjustFrom640(float*, float*, float*, float*) #2

declare dso_local i32 @trap_R_ClearScene(...) #2

declare dso_local double @sin(float) #2

declare dso_local i32 @VectorSet(i32*, i32, i32, i32) #2

declare dso_local i32 @AnglesToAxis(i32*, i32) #2

declare dso_local i32 @VectorCopy(i32*, i32*) #2

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_13__*) #2

declare dso_local i32 @trap_R_RenderScene(%struct.TYPE_13__*) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @UI_DrawProportionalString_AutoWrapped(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @Menu_Draw(i32*) #2

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #2

declare dso_local i32 @UI_DrawString(i32, i32, i8*, i32, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
