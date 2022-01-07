; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q3.c_Q3_PrintBSPFileSizes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q3.c_Q3_PrintBSPFileSizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_entities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%6i models       %7i\0A\00", align 1
@q3_nummodels = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%6i shaders      %7i\0A\00", align 1
@q3_numShaders = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%6i brushes      %7i\0A\00", align 1
@q3_numbrushes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%6i brushsides   %7i\0A\00", align 1
@q3_numbrushsides = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"%6i fogs         %7i\0A\00", align 1
@q3_numFogs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"%6i planes       %7i\0A\00", align 1
@q3_numplanes = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"%6i entdata      %7i\0A\00", align 1
@q3_entdatasize = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%6i nodes        %7i\0A\00", align 1
@q3_numnodes = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"%6i leafs        %7i\0A\00", align 1
@q3_numleafs = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"%6i leafsurfaces %7i\0A\00", align 1
@q3_numleafsurfaces = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"%6i leafbrushes  %7i\0A\00", align 1
@q3_numleafbrushes = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"%6i drawverts    %7i\0A\00", align 1
@q3_numDrawVerts = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"%6i drawindexes  %7i\0A\00", align 1
@q3_numDrawIndexes = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"%6i drawsurfaces %7i\0A\00", align 1
@q3_numDrawSurfaces = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"%6i lightmaps    %7i\0A\00", align 1
@q3_numLightBytes = common dso_local global i32 0, align 4
@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"       visibility   %7i\0A\00", align 1
@q3_numVisBytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q3_PrintBSPFileSizes() #0 {
  %1 = load i32, i32* @num_entities, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @Q3_ParseEntities()
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, i32* @q3_nummodels, align 4
  %7 = load i32, i32* @q3_nummodels, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %10)
  %12 = load i32, i32* @q3_numShaders, align 4
  %13 = load i32, i32* @q3_numShaders, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %16)
  %18 = load i32, i32* @q3_numbrushes, align 4
  %19 = load i32, i32* @q3_numbrushes, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %22)
  %24 = load i32, i32* @q3_numbrushsides, align 4
  %25 = load i32, i32* @q3_numbrushsides, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %28)
  %30 = load i32, i32* @q3_numFogs, align 4
  %31 = load i32, i32* @q3_numFogs, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load i32, i32* @q3_numplanes, align 4
  %37 = load i32, i32* @q3_numplanes, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %36, i32 %40)
  %42 = load i32, i32* @num_entities, align 4
  %43 = load i32, i32* @q3_entdatasize, align 4
  %44 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32 %43)
  %45 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %46 = load i32, i32* @q3_numnodes, align 4
  %47 = load i32, i32* @q3_numnodes, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %46, i32 %50)
  %52 = load i32, i32* @q3_numleafs, align 4
  %53 = load i32, i32* @q3_numleafs, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %52, i32 %56)
  %58 = load i32, i32* @q3_numleafsurfaces, align 4
  %59 = load i32, i32* @q3_numleafsurfaces, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 0
  %62 = trunc i64 %61 to i32
  %63 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %58, i32 %62)
  %64 = load i32, i32* @q3_numleafbrushes, align 4
  %65 = load i32, i32* @q3_numleafbrushes, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 0
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load i32, i32* @q3_numDrawVerts, align 4
  %71 = load i32, i32* @q3_numDrawVerts, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 0
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %70, i32 %74)
  %76 = load i32, i32* @q3_numDrawIndexes, align 4
  %77 = load i32, i32* @q3_numDrawIndexes, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 0
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %76, i32 %80)
  %82 = load i32, i32* @q3_numDrawSurfaces, align 4
  %83 = load i32, i32* @q3_numDrawSurfaces, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 0
  %86 = trunc i64 %85 to i32
  %87 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %82, i32 %86)
  %88 = load i32, i32* @q3_numLightBytes, align 4
  %89 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %90 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %91 = mul nsw i32 %89, %90
  %92 = mul nsw i32 %91, 3
  %93 = sdiv i32 %88, %92
  %94 = load i32, i32* @q3_numLightBytes, align 4
  %95 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* @q3_numVisBytes, align 4
  %97 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %96)
  ret void
}

declare dso_local i32 @Q3_ParseEntities(...) #1

declare dso_local i32 @Log_Print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
