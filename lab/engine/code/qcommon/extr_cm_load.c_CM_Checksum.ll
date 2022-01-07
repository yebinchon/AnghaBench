; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_load.c_CM_Checksum.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_load.c_CM_Checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@LUMP_SHADERS = common dso_local global i64 0, align 8
@LUMP_LEAFS = common dso_local global i64 0, align 8
@LUMP_LEAFBRUSHES = common dso_local global i64 0, align 8
@LUMP_LEAFSURFACES = common dso_local global i64 0, align 8
@LUMP_PLANES = common dso_local global i64 0, align 8
@LUMP_BRUSHSIDES = common dso_local global i64 0, align 8
@LUMP_BRUSHES = common dso_local global i64 0, align 8
@LUMP_MODELS = common dso_local global i64 0, align 8
@LUMP_NODES = common dso_local global i64 0, align 8
@LUMP_SURFACES = common dso_local global i64 0, align 8
@LUMP_DRAWVERTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CM_Checksum(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [16 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @LUMP_SHADERS, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = call i32 @CM_LumpChecksum(i32* %8)
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @LUMP_LEAFS, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @CM_LumpChecksum(i32* %15)
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @LUMP_LEAFBRUSHES, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @CM_LumpChecksum(i32* %22)
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 2
  store i32 %23, i32* %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @LUMP_LEAFSURFACES, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i32 @CM_LumpChecksum(i32* %29)
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @LUMP_PLANES, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @CM_LumpChecksum(i32* %36)
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 4
  store i32 %37, i32* %38, align 16
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @LUMP_BRUSHSIDES, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i32 @CM_LumpChecksum(i32* %43)
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 5
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @LUMP_BRUSHES, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i32 @CM_LumpChecksum(i32* %50)
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 6
  store i32 %51, i32* %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @LUMP_MODELS, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = call i32 @CM_LumpChecksum(i32* %57)
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 7
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @LUMP_NODES, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = call i32 @CM_LumpChecksum(i32* %64)
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 8
  store i32 %65, i32* %66, align 16
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @LUMP_SURFACES, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = call i32 @CM_LumpChecksum(i32* %71)
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 9
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @LUMP_DRAWVERTS, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = call i32 @CM_LumpChecksum(i32* %78)
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 10
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %82 = call i32 @Com_BlockChecksum(i32* %81, i32 44)
  %83 = call i32 @LittleLong(i32 %82)
  ret i32 %83
}

declare dso_local i32 @CM_LumpChecksum(i32*) #1

declare dso_local i32 @LittleLong(i32) #1

declare dso_local i32 @Com_BlockChecksum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
