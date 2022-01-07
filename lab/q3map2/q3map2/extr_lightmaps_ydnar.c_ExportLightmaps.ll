; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_ExportLightmaps.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_ExportLightmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"--- ExportLightmaps ---\0A\00", align 1
@source = common dso_local global i32 0, align 4
@bspLightBytes = common dso_local global i32* null, align 8
@SYS_WRN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WARNING: No BSP lightmap data\0A\00", align 1
@numBSPLightBytes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s/lightmap_%04d.tga\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Writing %s\0A\00", align 1
@game = common dso_local global %struct.TYPE_2__* null, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExportLightmaps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @SYS_VRB, align 4
  %6 = call i32 @Sys_FPrintf(i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %8 = load i32, i32* @source, align 4
  %9 = call i32 @strcpy(i8* %7, i32 %8)
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %11 = call i32 @StripExtension(i8* %10)
  %12 = load i32*, i32** @bspLightBytes, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @SYS_WRN, align 4
  %16 = call i32 @Sys_FPrintf(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %59

17:                                               ; preds = %0
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %19 = call i32 @Q_mkdir(i8* %18)
  store i32 0, i32* %1, align 4
  %20 = load i32*, i32** @bspLightBytes, align 8
  store i32* %20, i32** %4, align 8
  br label %21

21:                                               ; preds = %45, %17
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** @bspLightBytes, align 8
  %24 = load i32, i32* @numBSPLightBytes, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = icmp ult i32* %22, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %21
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %31)
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %34 = call i32 @Sys_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @qfalse, align 4
  %44 = call i32 @WriteTGA24(i8* %35, i32* %36, i32 %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = mul nsw i32 %54, 3
  %56 = load i32*, i32** %4, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %4, align 8
  br label %21

59:                                               ; preds = %14, %21
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @StripExtension(i8*) #1

declare dso_local i32 @Q_mkdir(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @Sys_Printf(i8*, i8*) #1

declare dso_local i32 @WriteTGA24(i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
