; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_playermodel.c_PlayerModel_BuildList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_playermodel.c_PlayerModel_BuildList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i64 }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"com_buildscript\00", align 1
@s_playermodel = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"models/players\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MAX_PLAYERMODELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"models/players/%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"icon_\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"models/players/%s/%s\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"sound/player/announce/%s_wins.wav\00", align 1
@qfalse = common dso_local global i32 0, align 4
@MAX_MODELSPERPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PlayerModel_BuildList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlayerModel_BuildList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = load i32, i32* @MAX_QPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %18, i64* %13, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %19 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %20 = call i32 @trap_FS_GetFileList(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %19, i32 2048)
  store i32 %20, i32* %1, align 4
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  store i8* %21, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %111, %0
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %28 = load i32, i32* @MAX_PLAYERMODELS, align 4
  %29 = icmp slt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %119

32:                                               ; preds = %30
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %46, %37, %32
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %52
  br label %111

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  %64 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %65 = call i32 @trap_FS_GetFileList(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %64, i32 2048)
  store i32 %65, i32* %2, align 4
  %66 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  store i8* %66, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %102, %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %73 = load i32, i32* @MAX_PLAYERMODELS, align 4
  %74 = icmp slt i32 %72, %73
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i1 [ false, %67 ], [ %74, %71 ]
  br i1 %76, label %77, label %110

77:                                               ; preds = %75
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @strlen(i8* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = trunc i64 %15 to i32
  %82 = call i32 @COM_StripExtension(i8* %80, i8* %17, i32 %81)
  %83 = call i32 @Q_stricmpn(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %77
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 2), align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @Com_sprintf(i32 %91, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %92, i8* %17)
  br label %94

94:                                               ; preds = %85, %77
  %95 = load i64, i64* %13, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = call i8* @va(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %17)
  %99 = load i32, i32* @qfalse, align 4
  %100 = call i32 @trap_S_RegisterSound(i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i8*, i8** %8, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %8, align 8
  br label %67

110:                                              ; preds = %75
  br label %111

111:                                              ; preds = %110, %60
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  %116 = load i8*, i8** %7, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %7, align 8
  br label %22

119:                                              ; preds = %30
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %121 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %122 = sdiv i32 %120, %121
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 1), align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %124 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %125 = srem i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 1), align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 1), align 4
  br label %130

130:                                              ; preds = %127, %119
  %131 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %131)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #2

declare dso_local i32 @trap_FS_GetFileList(i8*, i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @va(i8*, i8*) #2

declare dso_local i32 @COM_StripExtension(i8*, i8*, i32) #2

declare dso_local i32 @Q_stricmpn(i8*, i8*, i32) #2

declare dso_local i32 @Com_sprintf(i32, i32, i8*, i8*, i8*) #2

declare dso_local i32 @trap_S_RegisterSound(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
