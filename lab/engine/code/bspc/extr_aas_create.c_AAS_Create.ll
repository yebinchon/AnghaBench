; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_create.c_AAS_Create.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_create.c_AAS_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }

@source = common dso_local global i32 0, align 4
@entity_num = common dso_local global i64 0, align 8
@entities = common dso_local global %struct.TYPE_10__* null, align 8
@cancelconversion = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"BSP tree created in %5.0f seconds\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"**** leaked ****\0A\00", align 1
@freetree = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"\0AAAS created in %5.0f seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_Create(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @source, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strcpy(i32 %6, i8* %7)
  %9 = load i32, i32* @source, align 4
  %10 = call i32 @StripExtension(i32 %9)
  %11 = call double (...) @I_FloatTime()
  store double %11, double* %5, align 8
  %12 = call i32 (...) @ThreadSetDefault()
  store i64 0, i64* @entity_num, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @entities, align 8
  %14 = load i64, i64* @entity_num, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i64 %14
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call %struct.TYPE_9__* @ProcessWorldBrushes(i64 %18, i64 %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %4, align 8
  %27 = load i64, i64* @cancelconversion, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = call i32 @Tree_Free(%struct.TYPE_9__* %30)
  br label %107

32:                                               ; preds = %1
  %33 = call double (...) @I_FloatTime()
  %34 = load double, double* %5, align 8
  %35 = fsub double %33, %34
  %36 = call i32 @Log_Print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), double %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Tree_PruneNodes(i32 %39)
  %41 = load i64, i64* @cancelconversion, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i32 @Tree_Free(%struct.TYPE_9__* %44)
  br label %107

46:                                               ; preds = %32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = call i32 @MakeTreePortals(%struct.TYPE_9__* %47)
  %49 = load i64, i64* @cancelconversion, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = call i32 @Tree_Free(%struct.TYPE_9__* %52)
  br label %107

54:                                               ; preds = %46
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = call i64 @FloodEntities(%struct.TYPE_9__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FillOutside(i32 %61)
  br label %67

63:                                               ; preds = %54
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = call i32 @LeakFile(%struct.TYPE_9__* %64)
  %66 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %107

67:                                               ; preds = %58
  %68 = call i32 (...) @AAS_InitTmpAAS()
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @AAS_CreateAreas(i32 %71)
  %73 = load i64, i64* @freetree, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = call i32 @Tree_Free(%struct.TYPE_9__* %76)
  br label %78

78:                                               ; preds = %75, %67
  %79 = call i32 (...) @AAS_MergeAreaFaces()
  %80 = call i32 (...) @AAS_GravitationalSubdivision()
  %81 = call i32 (...) @AAS_MergeAreaFaces()
  %82 = call i32 (...) @AAS_RemoveAreaFaceColinearPoints()
  %83 = call i32 (...) @AAS_MergeAreas()
  %84 = call i32 (...) @AAS_PruneNodes()
  %85 = call i32 (...) @AAS_FlipSharedFaces()
  %86 = call i32 (...) @AAS_RemoveAreaFaceColinearPoints()
  %87 = call i32 (...) @AAS_MergeAreaFaces()
  %88 = call i32 (...) @AAS_MergeAreaPlaneFaces()
  %89 = call i32 (...) @AAS_LadderSubdivision()
  %90 = call i32 (...) @AAS_MeltAreaFaceWindings()
  %91 = call i32 (...) @AAS_RemoveTinyFaces()
  %92 = call i32 (...) @AAS_CreateAreaSettings()
  %93 = load i64, i64* @cancelconversion, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %78
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = call i32 @Tree_Free(%struct.TYPE_9__* %96)
  %98 = call i32 (...) @AAS_FreeTmpAAS()
  br label %107

99:                                               ; preds = %78
  %100 = load i8*, i8** %2, align 8
  %101 = call i32 @AAS_StoreFile(i8* %100)
  %102 = call i32 (...) @AAS_FreeTmpAAS()
  %103 = call double (...) @I_FloatTime()
  %104 = load double, double* %5, align 8
  %105 = fsub double %103, %104
  %106 = call i32 @Log_Print(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), double %105)
  br label %107

107:                                              ; preds = %99, %95, %63, %51, %43, %29
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @StripExtension(i32) #1

declare dso_local double @I_FloatTime(...) #1

declare dso_local i32 @ThreadSetDefault(...) #1

declare dso_local %struct.TYPE_9__* @ProcessWorldBrushes(i64, i64) #1

declare dso_local i32 @Tree_Free(%struct.TYPE_9__*) #1

declare dso_local i32 @Log_Print(i8*, double) #1

declare dso_local i32 @Tree_PruneNodes(i32) #1

declare dso_local i32 @MakeTreePortals(%struct.TYPE_9__*) #1

declare dso_local i64 @FloodEntities(%struct.TYPE_9__*) #1

declare dso_local i32 @FillOutside(i32) #1

declare dso_local i32 @LeakFile(%struct.TYPE_9__*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @AAS_InitTmpAAS(...) #1

declare dso_local i32 @AAS_CreateAreas(i32) #1

declare dso_local i32 @AAS_MergeAreaFaces(...) #1

declare dso_local i32 @AAS_GravitationalSubdivision(...) #1

declare dso_local i32 @AAS_RemoveAreaFaceColinearPoints(...) #1

declare dso_local i32 @AAS_MergeAreas(...) #1

declare dso_local i32 @AAS_PruneNodes(...) #1

declare dso_local i32 @AAS_FlipSharedFaces(...) #1

declare dso_local i32 @AAS_MergeAreaPlaneFaces(...) #1

declare dso_local i32 @AAS_LadderSubdivision(...) #1

declare dso_local i32 @AAS_MeltAreaFaceWindings(...) #1

declare dso_local i32 @AAS_RemoveTinyFaces(...) #1

declare dso_local i32 @AAS_CreateAreaSettings(...) #1

declare dso_local i32 @AAS_FreeTmpAAS(...) #1

declare dso_local i32 @AAS_StoreFile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
