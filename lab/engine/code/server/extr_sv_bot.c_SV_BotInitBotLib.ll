; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_bot.c_SV_BotInitBotLib.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_bot.c_SV_BotInitBotLib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@debugpolygons = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"bot_maxdebugpolys\00", align 1
@bot_maxdebugpolys = common dso_local global i32 0, align 4
@BotImport_Print = common dso_local global i32 0, align 4
@BotImport_Trace = common dso_local global i32 0, align 4
@BotImport_EntityTrace = common dso_local global i32 0, align 4
@BotImport_PointContents = common dso_local global i32 0, align 4
@BotImport_inPVS = common dso_local global i32 0, align 4
@BotImport_BSPEntityData = common dso_local global i32 0, align 4
@BotImport_BSPModelMinsMaxsOrigin = common dso_local global i32 0, align 4
@BotClientCommand = common dso_local global i32 0, align 4
@BotImport_GetMemory = common dso_local global i32 0, align 4
@BotImport_FreeMemory = common dso_local global i32 0, align 4
@Z_AvailableMemory = common dso_local global i32 0, align 4
@BotImport_HunkAlloc = common dso_local global i32 0, align 4
@FS_FOpenFileByMode = common dso_local global i32 0, align 4
@FS_Read = common dso_local global i32 0, align 4
@FS_Write = common dso_local global i32 0, align 4
@FS_FCloseFile = common dso_local global i32 0, align 4
@FS_Seek = common dso_local global i32 0, align 4
@BotImport_DebugLineCreate = common dso_local global i32 0, align 4
@BotImport_DebugLineDelete = common dso_local global i32 0, align 4
@BotImport_DebugLineShow = common dso_local global i32 0, align 4
@BotImport_DebugPolygonCreate = common dso_local global i32 0, align 4
@BotImport_DebugPolygonDelete = common dso_local global i32 0, align 4
@BOTLIB_API_VERSION = common dso_local global i32 0, align 4
@botlib_export = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_BotInitBotLib() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = load i64, i64* @debugpolygons, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @debugpolygons, align 8
  %6 = call i32 @Z_Free(i64 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = call i32 @Cvar_VariableIntegerValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* @bot_maxdebugpolys, align 4
  %9 = load i32, i32* @bot_maxdebugpolys, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @Z_Malloc(i32 %12)
  store i64 %13, i64* @debugpolygons, align 8
  %14 = load i32, i32* @BotImport_Print, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 21
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @BotImport_Trace, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 20
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @BotImport_EntityTrace, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 19
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @BotImport_PointContents, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 18
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @BotImport_inPVS, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 17
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @BotImport_BSPEntityData, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 16
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @BotImport_BSPModelMinsMaxsOrigin, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 15
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @BotClientCommand, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 14
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @BotImport_GetMemory, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 13
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @BotImport_FreeMemory, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 12
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @Z_AvailableMemory, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 11
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @BotImport_HunkAlloc, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 10
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @FS_FOpenFileByMode, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 9
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @FS_Read, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @FS_Write, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @FS_FCloseFile, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @FS_Seek, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @BotImport_DebugLineCreate, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @BotImport_DebugLineDelete, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @BotImport_DebugLineShow, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @BotImport_DebugPolygonCreate, align 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @BotImport_DebugPolygonDelete, align 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @BOTLIB_API_VERSION, align 4
  %59 = call i64 @GetBotLibAPI(i32 %58, %struct.TYPE_3__* %1)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** @botlib_export, align 8
  %61 = load i32*, i32** @botlib_export, align 8
  %62 = call i32 @assert(i32* %61)
  ret void
}

declare dso_local i32 @Z_Free(i64) #1

declare dso_local i32 @Cvar_VariableIntegerValue(i8*) #1

declare dso_local i64 @Z_Malloc(i32) #1

declare dso_local i64 @GetBotLibAPI(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @assert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
