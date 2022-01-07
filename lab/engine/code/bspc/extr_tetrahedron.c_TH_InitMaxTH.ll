; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_InitMaxTH.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_InitMaxTH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }

@MAX_TH_VERTEXES = common dso_local global i32 0, align 4
@thworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_TH_PLANES = common dso_local global i32 0, align 4
@MAX_TH_EDGES = common dso_local global i32 0, align 4
@MAX_TH_TRIANGLES = common dso_local global i32 0, align 4
@MAX_TH_TETRAHEDRONS = common dso_local global i32 0, align 4
@VERTEXHASH_SIZE = common dso_local global i32 0, align 4
@PLANEHASH_SIZE = common dso_local global i32 0, align 4
@EDGEHASH_SIZE = common dso_local global i32 0, align 4
@TRIANGLEHASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TH_InitMaxTH() #0 {
  %1 = load i32, i32* @MAX_TH_VERTEXES, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 %2, 4
  %4 = trunc i64 %3 to i32
  %5 = call i64 @GetClearedMemory(i32 %4)
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 8), align 8
  %7 = load i32, i32* @MAX_TH_PLANES, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i64 @GetClearedMemory(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 7), align 8
  %13 = load i32, i32* @MAX_TH_EDGES, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i64 @GetClearedMemory(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 6), align 8
  %19 = load i32, i32* @MAX_TH_TRIANGLES, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i64 @GetClearedMemory(i32 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 5), align 8
  %25 = load i32, i32* @MAX_TH_TETRAHEDRONS, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i64 @GetClearedMemory(i32 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 4), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 3), align 4
  %32 = load i32, i32* @VERTEXHASH_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32 %31, i32 0, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 2), align 8
  %38 = load i32, i32* @PLANEHASH_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i32 %37, i32 0, i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 1), align 4
  %44 = load i32, i32* @EDGEHASH_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32 %43, i32 0, i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 0), align 8
  %50 = load i32, i32* @TRIANGLEHASH_SIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(i32 %49, i32 0, i32 %53)
  ret void
}

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
