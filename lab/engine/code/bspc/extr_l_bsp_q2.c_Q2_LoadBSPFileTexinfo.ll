; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q2.c_Q2_LoadBSPFileTexinfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q2.c_Q2_LoadBSPFileTexinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@header = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@IDBSPHEADER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s is not a IBSP file\00", align 1
@BSPVERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s is version %i, not %i\00", align 1
@LUMP_TEXINFO = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@texinfo = common dso_local global %struct.TYPE_8__* null, align 8
@numtexinfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q2_LoadBSPFileTexinfo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call %struct.TYPE_8__* @GetMemory(i32 4)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** @header, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @fread(%struct.TYPE_8__* %10, i32 4, i32 1, i32* %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 1
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %19 = bitcast %struct.TYPE_8__* %18 to i32*
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @LittleLong(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %26 = bitcast %struct.TYPE_8__* %25 to i32*
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %24, i32* %29, align 4
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IDBSPHEADER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 (i8*, i8*, ...) @Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BSPVERSION, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i8*, i8** %2, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BSPVERSION, align 8
  %54 = call i32 (i8*, i8*, ...) @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %49, i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i64, i64* @LUMP_TEXINFO, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i64, i64* @LUMP_TEXINFO, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SEEK_SET, align 4
  %73 = call i32 @fseek(i32* %70, i32 %71, i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @texinfo, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @fread(%struct.TYPE_8__* %74, i32 %75, i32 1, i32* %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @fclose(i32* %78)
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = udiv i64 %81, 4
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* @numtexinfo, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %85 = call i32 @FreeMemory(%struct.TYPE_8__* %84)
  %86 = call i32 @Q2_SwapBSPFile(i32 0)
  ret void
}

declare dso_local %struct.TYPE_8__* @GetMemory(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @LittleLong(i32) #1

declare dso_local i32 @Error(i8*, i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @FreeMemory(%struct.TYPE_8__*) #1

declare dso_local i32 @Q2_SwapBSPFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
