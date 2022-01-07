; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_bot.c_G_LoadArenas.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_bot.c_G_LoadArenas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@g_numArenas = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"g_arenasFile\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@CVAR_ROM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"scripts/arenas.txt\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c".arena\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"scripts/\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%i arenas parsed\0A\00", align 1
@g_arenaInfos = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @G_LoadArenas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @G_LoadArenas() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* @g_numArenas, align 4
  %9 = load i32, i32* @CVAR_INIT, align 4
  %10 = load i32, i32* @CVAR_ROM, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @trap_Cvar_Register(%struct.TYPE_3__* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @G_LoadArenasFromFile(i8* %19)
  br label %23

21:                                               ; preds = %0
  %22 = call i32 @G_LoadArenasFromFile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %25 = call i32 @trap_FS_GetFileList(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %24, i32 1024)
  store i32 %25, i32* %1, align 4
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8* %26, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %41, %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %35 = call i32 @strcpy(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcat(i8* %36, i8* %37)
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %40 = call i32 @G_LoadArenasFromFile(i8* %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i8*, i8** %5, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %5, align 8
  br label %27

49:                                               ; preds = %27
  %50 = load i32, i32* @g_numArenas, align 4
  %51 = call i32 @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  %52 = call i32 @trap_Print(i32 %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %66, %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @g_numArenas, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i32*, i32** @g_arenaInfos, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %63)
  %65 = call i32 @Info_SetValueForKey(i32 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %53

69:                                               ; preds = %53
  ret void
}

declare dso_local i32 @trap_Cvar_Register(%struct.TYPE_3__*, i8*, i8*, i32) #1

declare dso_local i32 @G_LoadArenasFromFile(i8*) #1

declare dso_local i32 @trap_FS_GetFileList(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @trap_Print(i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @Info_SetValueForKey(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
