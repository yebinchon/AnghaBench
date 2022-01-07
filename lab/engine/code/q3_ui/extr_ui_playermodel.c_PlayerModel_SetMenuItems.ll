; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_playermodel.c_PlayerModel_SetMenuItems.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_playermodel.c_PlayerModel_SetMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8**, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@s_playermodel = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/default\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"models/players/\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"icon_\00", align 1
@MAX_MODELSPERPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PlayerModel_SetMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlayerModel_SetMenuItems() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 7, i32 0), align 4
  %7 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %6, i32 16)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 7, i32 0), align 4
  %9 = call i32 @Q_CleanStr(i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 6), align 8
  %11 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 64)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 6), align 8
  %13 = call i32 @strchr(i32 %12, i8 signext 47)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 6), align 8
  %17 = call i32 @Q_strcat(i32 %16, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %0
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %94, %18
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 0), align 8
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %19
  %24 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1), align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @strstr(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %23
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = add nsw i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 @Q_strncpyz(i8* %37, i8* %38, i32 %45)
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 5
  %50 = call i32 @strcat(i8* %47, i8* %49)
  br label %52

51:                                               ; preds = %23
  br label %94

52:                                               ; preds = %36
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 6), align 8
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %55 = call i32 @Q_stricmp(i32 %53, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %93, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %1, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 2), align 8
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 3), align 4
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp sgt i32 %68, 16
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  store i32 16, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 5, i32 0), align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @Q_strncpyz(i8* %72, i8* %73, i32 %74)
  %76 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 5, i32 0), align 8
  %77 = call i32 @Q_strupr(i8* %76)
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 5
  %80 = call i32 @strlen(i8* %79)
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  %83 = icmp sgt i32 %82, 16
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 16, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %71
  %86 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 4, i32 0), align 8
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 5
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @Q_strncpyz(i8* %86, i8* %88, i32 %89)
  %91 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 4, i32 0), align 8
  %92 = call i32 @Q_strupr(i8* %91)
  br label %97

93:                                               ; preds = %52
  br label %94

94:                                               ; preds = %93, %51
  %95 = load i32, i32* %1, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  br label %19

97:                                               ; preds = %85, %19
  ret void
}

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i32, i32) #1

declare dso_local i32 @Q_CleanStr(i32) #1

declare dso_local i32 @strchr(i32, i8 signext) #1

declare dso_local i32 @Q_strcat(i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @Q_strupr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
