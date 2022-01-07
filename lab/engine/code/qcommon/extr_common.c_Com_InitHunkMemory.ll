; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_InitHunkMemory.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_InitHunkMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Hunk initialization failed. File system load stack not zero\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"com_hunkMegs\00", align 1
@DEF_COMHUNKMEGS_S = common dso_local global i32 0, align 4
@CVAR_LATCH = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"The size of the hunk memory segment\00", align 1
@com_dedicated = common dso_local global %struct.TYPE_6__* null, align 8
@MIN_DEDICATED_COMHUNKMEGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"Minimum com_hunkMegs for a dedicated server is %i, allocating %i megs.\0A\00", align 1
@MIN_COMHUNKMEGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Minimum com_hunkMegs is %i, allocating %i megs.\0A\00", align 1
@s_hunkTotal = common dso_local global i32 0, align 4
@s_hunkDataRaw = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Hunk data failed to allocate %i megs\00", align 1
@s_hunkData = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1
@Com_Meminfo_f = common dso_local global i32 0, align 4
@Hunk_Log = common dso_local global i32 0, align 4
@Hunk_SmallLog = common dso_local global i32 0, align 4
@Z_LogHeap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_InitHunkMemory() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* null, i8** %3, align 8
  %4 = call i64 (...) @FS_LoadStack()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @ERR_FATAL, align 4
  %8 = call i32 (i32, i8*, ...) @Com_Error(i32 %7, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @DEF_COMHUNKMEGS_S, align 4
  %11 = load i32, i32* @CVAR_LATCH, align 4
  %12 = load i32, i32* @CVAR_ARCHIVE, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.TYPE_5__* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %1, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = call i32 @Cvar_SetDescription(%struct.TYPE_5__* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @com_dedicated, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %9
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @com_dedicated, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @MIN_DEDICATED_COMHUNKMEGS, align 4
  store i32 %25, i32* %2, align 4
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %28

26:                                               ; preds = %19, %9
  %27 = load i32, i32* @MIN_COMHUNKMEGS, align 4
  store i32 %27, i32* %2, align 4
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* %2, align 4
  %36 = mul nsw i32 1048576, %35
  store i32 %36, i32* @s_hunkTotal, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @s_hunkTotal, align 4
  %40 = sdiv i32 %39, 1048576
  %41 = call i32 @Com_Printf(i8* %37, i32 %38, i32 %40)
  br label %48

42:                                               ; preds = %28
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 1024
  %47 = mul nsw i32 %46, 1024
  store i32 %47, i32* @s_hunkTotal, align 4
  br label %48

48:                                               ; preds = %42, %34
  %49 = load i32, i32* @s_hunkTotal, align 4
  %50 = add nsw i32 %49, 31
  %51 = call i64 @calloc(i32 %50, i32 1)
  store i64 %51, i64* @s_hunkDataRaw, align 8
  %52 = load i64, i64* @s_hunkDataRaw, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ERR_FATAL, align 4
  %56 = load i32, i32* @s_hunkTotal, align 4
  %57 = sdiv i32 %56, 1048576
  %58 = call i32 (i32, i8*, ...) @Com_Error(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i64, i64* @s_hunkDataRaw, align 8
  %61 = add nsw i64 %60, 31
  %62 = and i64 %61, -32
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** @s_hunkData, align 8
  %64 = call i32 (...) @Hunk_Clear()
  %65 = load i32, i32* @Com_Meminfo_f, align 4
  %66 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  ret void
}

declare dso_local i64 @FS_LoadStack(...) #1

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @Cvar_Get(i8*, i32, i32) #1

declare dso_local i32 @Cvar_SetDescription(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @Com_Printf(i8*, i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @Hunk_Clear(...) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
