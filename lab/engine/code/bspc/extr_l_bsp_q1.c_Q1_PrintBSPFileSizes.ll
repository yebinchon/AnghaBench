; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q1.c_Q1_PrintBSPFileSizes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q1.c_Q1_PrintBSPFileSizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%5i planes       %6i\0A\00", align 1
@q1_numplanes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%5i vertexes     %6i\0A\00", align 1
@q1_numvertexes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%5i nodes        %6i\0A\00", align 1
@q1_numnodes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%5i texinfo      %6i\0A\00", align 1
@q1_numtexinfo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"%5i faces        %6i\0A\00", align 1
@q1_numfaces = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"%5i clipnodes    %6i\0A\00", align 1
@q1_numclipnodes = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"%5i leafs        %6i\0A\00", align 1
@q1_numleafs = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"%5i marksurfaces %6i\0A\00", align 1
@q1_nummarksurfaces = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"%5i surfedges    %6i\0A\00", align 1
@q1_numsurfedges = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"%5i edges        %6i\0A\00", align 1
@q1_numedges = common dso_local global i32 0, align 4
@q1_texdatasize = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"    0 textures          0\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%5i textures     %6i\0A\00", align 1
@q1_dtexdata = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"      lightdata    %6i\0A\00", align 1
@q1_lightdatasize = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"      visdata      %6i\0A\00", align 1
@q1_visdatasize = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"      entdata      %6i\0A\00", align 1
@q1_entdatasize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q1_PrintBSPFileSizes() #0 {
  %1 = load i32, i32* @q1_numplanes, align 4
  %2 = load i32, i32* @q1_numplanes, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = trunc i64 %4 to i32
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %5)
  %7 = load i32, i32* @q1_numvertexes, align 4
  %8 = load i32, i32* @q1_numvertexes, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %11)
  %13 = load i32, i32* @q1_numnodes, align 4
  %14 = load i32, i32* @q1_numnodes, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load i32, i32* @q1_numtexinfo, align 4
  %20 = load i32, i32* @q1_numtexinfo, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load i32, i32* @q1_numfaces, align 4
  %26 = load i32, i32* @q1_numfaces, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load i32, i32* @q1_numclipnodes, align 4
  %32 = load i32, i32* @q1_numclipnodes, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %31, i32 %35)
  %37 = load i32, i32* @q1_numleafs, align 4
  %38 = load i32, i32* @q1_numleafs, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load i32, i32* @q1_nummarksurfaces, align 4
  %44 = load i32, i32* @q1_nummarksurfaces, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 0
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %43, i32 %47)
  %49 = load i32, i32* @q1_numsurfedges, align 4
  %50 = load i32, i32* @q1_numsurfedges, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 0
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load i32, i32* @q1_numedges, align 4
  %56 = load i32, i32* @q1_numedges, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %55, i32 %59)
  %61 = load i32, i32* @q1_texdatasize, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %0
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %72

65:                                               ; preds = %0
  %66 = load i64, i64* @q1_dtexdata, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @q1_texdatasize, align 4
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %63
  %73 = load i32, i32* @q1_lightdatasize, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @q1_visdatasize, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @q1_entdatasize, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %77)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
