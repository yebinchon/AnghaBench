; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_R_SortDrawSurfs.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_R_SortDrawSurfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }

@tr = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@VPF_SHADOWMAP = common dso_local global i32 0, align 4
@VPF_DEPTHSHADOW = common dso_local global i32 0, align 4
@SS_PORTAL = common dso_local global i64 0, align 8
@SS_BAD = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Shader '%s'with sort == SS_BAD\00", align 1
@r_portalOnly = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SortDrawSurfs(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @R_AddDrawSurfCmd(%struct.TYPE_14__* %14, i32 %15)
  br label %86

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @R_RadixSort(%struct.TYPE_14__* %18, i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 0, i32 0), align 4
  %22 = load i32, i32* @VPF_SHADOWMAP, align 4
  %23 = load i32, i32* @VPF_DEPTHSHADOW, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @R_AddDrawSurfCmd(%struct.TYPE_14__* %28, i32 %29)
  br label %86

31:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %79, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @R_DecomposeSort(i32 %42, i32* %7, %struct.TYPE_13__** %5, i32* %6, i32* %8, i32* %9)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SS_PORTAL, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %82

50:                                               ; preds = %36
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SS_BAD, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ri, i32 0, i32 0), align 8
  %58 = load i32, i32* @ERR_DROP, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %57(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56, %50
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i64 %66
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @R_MirrorViewBySurface(%struct.TYPE_14__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_portalOnly, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %86

77:                                               ; preds = %71
  br label %82

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %32

82:                                               ; preds = %77, %49, %32
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @R_AddDrawSurfCmd(%struct.TYPE_14__* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %76, %27, %13
  ret void
}

declare dso_local i32 @R_AddDrawSurfCmd(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @R_RadixSort(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @R_DecomposeSort(i32, i32*, %struct.TYPE_13__**, i32*, i32*, i32*) #1

declare dso_local i64 @R_MirrorViewBySurface(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
