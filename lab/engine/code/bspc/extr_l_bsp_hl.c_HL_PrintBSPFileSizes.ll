; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_hl.c_HL_PrintBSPFileSizes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_hl.c_HL_PrintBSPFileSizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Object names  Objects/Maxobjs  Memory / Maxmem  Fullness\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"------------  ---------------  ---------------  --------\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"models\00", align 1
@hl_nummodels = common dso_local global i32 0, align 4
@hl_dmodels = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"planes\00", align 1
@hl_numplanes = common dso_local global i32 0, align 4
@hl_dplanes = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"vertexes\00", align 1
@hl_numvertexes = common dso_local global i32 0, align 4
@hl_dvertexes = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@hl_numnodes = common dso_local global i32 0, align 4
@hl_dnodes = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"texinfos\00", align 1
@hl_numtexinfo = common dso_local global i32 0, align 4
@hl_texinfo = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@hl_numfaces = common dso_local global i32 0, align 4
@hl_dfaces = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"clipnodes\00", align 1
@hl_numclipnodes = common dso_local global i32 0, align 4
@hl_dclipnodes = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"leaves\00", align 1
@hl_numleafs = common dso_local global i32 0, align 4
@hl_dleafs = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"marksurfaces\00", align 1
@hl_nummarksurfaces = common dso_local global i32 0, align 4
@hl_dmarksurfaces = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"surfedges\00", align 1
@hl_numsurfedges = common dso_local global i32 0, align 4
@hl_dsurfedges = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@hl_numedges = common dso_local global i32 0, align 4
@hl_dedges = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"texdata\00", align 1
@hl_texdatasize = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"lightdata\00", align 1
@hl_lightdatasize = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"visdata\00", align 1
@hl_visdatasize = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"entdata\00", align 1
@hl_entdatasize = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [51 x i8] c"=== Total BSP file data space used: %d bytes ===\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HL_PrintBSPFileSizes() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %5 = load i32, i32* @hl_nummodels, align 4
  %6 = load i32, i32* @hl_dmodels, align 4
  %7 = call i32 @ENTRIES(i32 %6)
  %8 = load i32, i32* @hl_dmodels, align 4
  %9 = call i32 @ENTRYSIZE(i32 %8)
  %10 = call i64 @ArrayUsage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %5, i32 %7, i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @hl_numplanes, align 4
  %16 = load i32, i32* @hl_dplanes, align 4
  %17 = call i32 @ENTRIES(i32 %16)
  %18 = load i32, i32* @hl_dplanes, align 4
  %19 = call i32 @ENTRYSIZE(i32 %18)
  %20 = call i64 @ArrayUsage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %15, i32 %17, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @hl_numvertexes, align 4
  %26 = load i32, i32* @hl_dvertexes, align 4
  %27 = call i32 @ENTRIES(i32 %26)
  %28 = load i32, i32* @hl_dvertexes, align 4
  %29 = call i32 @ENTRYSIZE(i32 %28)
  %30 = call i64 @ArrayUsage(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %25, i32 %27, i32 %29)
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @hl_numnodes, align 4
  %36 = load i32, i32* @hl_dnodes, align 4
  %37 = call i32 @ENTRIES(i32 %36)
  %38 = load i32, i32* @hl_dnodes, align 4
  %39 = call i32 @ENTRYSIZE(i32 %38)
  %40 = call i64 @ArrayUsage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %35, i32 %37, i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @hl_numtexinfo, align 4
  %46 = load i32, i32* @hl_texinfo, align 4
  %47 = call i32 @ENTRIES(i32 %46)
  %48 = load i32, i32* @hl_texinfo, align 4
  %49 = call i32 @ENTRYSIZE(i32 %48)
  %50 = call i64 @ArrayUsage(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %45, i32 %47, i32 %49)
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* @hl_numfaces, align 4
  %56 = load i32, i32* @hl_dfaces, align 4
  %57 = call i32 @ENTRIES(i32 %56)
  %58 = load i32, i32* @hl_dfaces, align 4
  %59 = call i32 @ENTRYSIZE(i32 %58)
  %60 = call i64 @ArrayUsage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %55, i32 %57, i32 %59)
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* @hl_numclipnodes, align 4
  %66 = load i32, i32* @hl_dclipnodes, align 4
  %67 = call i32 @ENTRIES(i32 %66)
  %68 = load i32, i32* @hl_dclipnodes, align 4
  %69 = call i32 @ENTRYSIZE(i32 %68)
  %70 = call i64 @ArrayUsage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %65, i32 %67, i32 %69)
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* @hl_numleafs, align 4
  %76 = load i32, i32* @hl_dleafs, align 4
  %77 = call i32 @ENTRIES(i32 %76)
  %78 = load i32, i32* @hl_dleafs, align 4
  %79 = call i32 @ENTRYSIZE(i32 %78)
  %80 = call i64 @ArrayUsage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %75, i32 %77, i32 %79)
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* @hl_nummarksurfaces, align 4
  %86 = load i32, i32* @hl_dmarksurfaces, align 4
  %87 = call i32 @ENTRIES(i32 %86)
  %88 = load i32, i32* @hl_dmarksurfaces, align 4
  %89 = call i32 @ENTRYSIZE(i32 %88)
  %90 = call i64 @ArrayUsage(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %85, i32 %87, i32 %89)
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %1, align 4
  %95 = load i32, i32* @hl_numsurfedges, align 4
  %96 = load i32, i32* @hl_dsurfedges, align 4
  %97 = call i32 @ENTRIES(i32 %96)
  %98 = load i32, i32* @hl_dsurfedges, align 4
  %99 = call i32 @ENTRYSIZE(i32 %98)
  %100 = call i64 @ArrayUsage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %95, i32 %97, i32 %99)
  %101 = load i32, i32* %1, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %1, align 4
  %105 = load i32, i32* @hl_numedges, align 4
  %106 = load i32, i32* @hl_dedges, align 4
  %107 = call i32 @ENTRIES(i32 %106)
  %108 = load i32, i32* @hl_dedges, align 4
  %109 = call i32 @ENTRYSIZE(i32 %108)
  %110 = call i64 @ArrayUsage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %105, i32 %107, i32 %109)
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %1, align 4
  %115 = load i32, i32* @hl_texdatasize, align 4
  %116 = call i64 @GlobUsage(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %115, i32 4)
  %117 = load i32, i32* %1, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %1, align 4
  %121 = load i32, i32* @hl_lightdatasize, align 4
  %122 = call i64 @GlobUsage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %121, i32 4)
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %1, align 4
  %127 = load i32, i32* @hl_visdatasize, align 4
  %128 = call i64 @GlobUsage(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %127, i32 4)
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* @hl_entdatasize, align 4
  %134 = call i64 @GlobUsage(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %133, i32 4)
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %1, align 4
  %139 = load i32, i32* %1, align 4
  %140 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0), i32 %139)
  ret void
}

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i64 @ArrayUsage(i8*, i32, i32, i32) #1

declare dso_local i32 @ENTRIES(i32) #1

declare dso_local i32 @ENTRYSIZE(i32) #1

declare dso_local i64 @GlobUsage(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
