; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_ibsp.c_AddLightGridLumps.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_ibsp.c_AddLightGridLumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32*, i32, i32 }

@bspGridPoints = common dso_local global %struct.TYPE_8__* null, align 8
@numBSPGridPoints = common dso_local global i32 0, align 4
@LUMP_LIGHTGRID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @AddLightGridLumps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddLightGridLumps(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bspGridPoints, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %80

12:                                               ; preds = %2
  %13 = load i32, i32* @numBSPGridPoints, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 16
  %16 = trunc i64 %15 to i32
  %17 = call %struct.TYPE_7__* @safe_malloc(i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bspGridPoints, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %65, %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @numBSPGridPoints, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %20
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @VectorCopy(i32 %29, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @VectorCopy(i32 %38, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 1
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %6, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 1
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %8, align 8
  br label %65

65:                                               ; preds = %24
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %20

68:                                               ; preds = %20
  %69 = load i32*, i32** %3, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @LUMP_LIGHTGRID, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = load i32, i32* @numBSPGridPoints, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 16
  %76 = trunc i64 %75 to i32
  %77 = call i32 @AddLump(i32* %69, i32* %70, i32 %71, %struct.TYPE_7__* %72, i32 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = call i32 @free(%struct.TYPE_7__* %78)
  br label %80

80:                                               ; preds = %68, %11
  ret void
}

declare dso_local %struct.TYPE_7__* @safe_malloc(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @AddLump(i32*, i32*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
