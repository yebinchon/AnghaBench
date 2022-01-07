; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_BuildPlayerList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_BuildPlayerList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32*, i32*, i8*, i32* }
%struct.TYPE_4__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@CS_PLAYERS = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"tl\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@CS_SERVERINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"cg_selectedPlayer\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"cg_selectedPlayerName\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_BuildPlayerList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_BuildPlayerList() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* @MAX_INFO_STRING, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = call i32 @trap_GetClientState(%struct.TYPE_4__* %1)
  %14 = load i32, i32* @CS_PLAYERS, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %14, %16
  %18 = load i32, i32* @MAX_INFO_STRING, align 4
  %19 = call i32 @trap_GetConfigString(i32 %17, i8* %12, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 0), align 8
  %22 = call i32 @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = call i8* @atoi(i32 %22)
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 5), align 8
  %24 = call i32 @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i8* @atoi(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @CS_SERVERINFO, align 4
  %28 = trunc i64 %10 to i32
  %29 = call i32 @trap_GetConfigString(i32 %27, i8* %12, i32 %28)
  %30 = call i32 @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i8* @atoi(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %3, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 2), align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %95, %0
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %33
  %38 = load i32, i32* @CS_PLAYERS, align 4
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* @MAX_INFO_STRING, align 4
  %42 = call i32 @trap_GetConfigString(i32 %40, i8* %12, i32 %41)
  %43 = getelementptr inbounds i8, i8* %12, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %37
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 6), align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 1), align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %53 = call i32 @Q_strncpyz(i32 %50, i32 %51, i32 %52)
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 6), align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 1), align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Q_CleanStr(i32 %57)
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 1), align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 1), align 8
  %61 = call i32 @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i8* @atoi(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %46
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 4), align 8
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 2), align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %74 = call i32 @Q_strncpyz(i32 %71, i32 %72, i32 %73)
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 4), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 2), align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @Q_CleanStr(i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 3), align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 2), align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 0), align 8
  %85 = load i32, i32* %2, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %67
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 2), align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %67
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 2), align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 2), align 8
  br label %93

93:                                               ; preds = %90, %46
  br label %94

94:                                               ; preds = %93, %37
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %2, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %2, align 4
  br label %33

98:                                               ; preds = %33
  %99 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 5), align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %98
  %106 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 %106, i32* %2, align 4
  %107 = load i32, i32* %2, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 2), align 8
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109, %105
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %109
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 2), align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 4), align 8
  %122 = load i32, i32* %2, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %120, %115
  %128 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %128)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_GetClientState(%struct.TYPE_4__*) #2

declare dso_local i32 @trap_GetConfigString(i32, i8*, i32) #2

declare dso_local i8* @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @Q_strncpyz(i32, i32, i32) #2

declare dso_local i32 @Q_CleanStr(i32) #2

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
