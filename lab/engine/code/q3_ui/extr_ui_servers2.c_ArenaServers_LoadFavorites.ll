; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_LoadFavorites.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_LoadFavorites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@MAX_ADDRESSLENGTH = common dso_local global i32 0, align 4
@MAX_FAVORITESERVERS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@g_favoriteserverlist = common dso_local global %struct.TYPE_7__* null, align 8
@g_numfavoriteservers = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"server%d\00", align 1
@g_arenaservers = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ArenaServers_LoadFavorites() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca %struct.TYPE_7__, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_favoriteserverlist, align 8
  %17 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memcpy(%struct.TYPE_7__* %14, %struct.TYPE_7__* %16, i32 %20)
  %22 = load i64, i64* @g_numfavoriteservers, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_favoriteserverlist, align 8
  %25 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(%struct.TYPE_7__* %24, i32 0, i32 %28)
  store i64 0, i64* @g_numfavoriteservers, align 8
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %96, %0
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %30
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %39 = call i32 @trap_Cvar_VariableStringBuffer(i32 %37, i8* %11, i32 %38)
  %40 = getelementptr inbounds i8, i8* %11, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %96

44:                                               ; preds = %34
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %46 = load i64, i64* @g_numfavoriteservers, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcpy(i32 %48, i8* %11)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %64, %44
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @Q_stricmp(i32 %59, i8* %11)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %67

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %50

67:                                               ; preds = %62, %50
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_favoriteserverlist, align 8
  %73 = load i64, i64* @g_numfavoriteservers, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %76
  %78 = call i32 @memcpy(%struct.TYPE_7__* %74, %struct.TYPE_7__* %77, i32 8)
  %79 = load i32, i32* @qtrue, align 4
  store i32 %79, i32* %7, align 4
  br label %93

80:                                               ; preds = %67
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_favoriteserverlist, align 8
  %82 = load i64, i64* @g_numfavoriteservers, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %87 = call i32 @Q_strncpyz(i32 %85, i8* %11, i32 %86)
  %88 = call i32 (...) @ArenaServers_MaxPing()
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_favoriteserverlist, align 8
  %90 = load i64, i64* @g_numfavoriteservers, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %80, %71
  %94 = load i64, i64* @g_numfavoriteservers, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* @g_numfavoriteservers, align 8
  br label %96

96:                                               ; preds = %93, %43
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %30

99:                                               ; preds = %30
  %100 = load i64, i64* @g_numfavoriteservers, align 8
  store i64 %100, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 0), align 8
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  store i64 0, i64* @g_numfavoriteservers, align 8
  br label %104

104:                                              ; preds = %103, %99
  %105 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %105)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i32, i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @Q_stricmp(i32, i8*) #2

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #2

declare dso_local i32 @ArenaServers_MaxPing(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
