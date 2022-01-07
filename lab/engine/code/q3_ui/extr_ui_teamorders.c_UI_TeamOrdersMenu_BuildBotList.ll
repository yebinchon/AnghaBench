; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_teamorders.c_UI_TeamOrdersMenu_BuildBotList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_teamorders.c_UI_TeamOrdersMenu_BuildBotList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i8*, i32* }
%struct.TYPE_4__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@teamOrdersMenuInfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"Everyone\00", align 1
@CS_SERVERINFO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"skill\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_TeamOrdersMenu_BuildBotList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_TeamOrdersMenu_BuildBotList() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8 51, i8* %5, align 1
  %9 = load i32, i32* @MAX_INFO_STRING, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %26, %0
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 9
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 1), align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 3), align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %13

29:                                               ; preds = %13
  %30 = call i32 @trap_GetClientState(%struct.TYPE_4__* %1)
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 1), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @Q_strncpyz(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 16)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  %35 = load i64, i64* @CS_SERVERINFO, align 8
  %36 = trunc i64 %10 to i32
  %37 = call i32 @trap_GetConfigString(i64 %35, i8* %12, i32 %36)
  %38 = call i8* @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i8* @atoi(i8* %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %2, align 4
  %41 = call i8* @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i8* @atoi(i8* %41)
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 2), align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %98, %29
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  %49 = icmp slt i32 %48, 9
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i1 [ false, %43 ], [ %49, %47 ]
  br i1 %51, label %52, label %101

52:                                               ; preds = %50
  %53 = load i64, i64* @CS_PLAYERS, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i32, i32* @MAX_INFO_STRING, align 4
  %58 = call i32 @trap_GetConfigString(i64 %56, i8* %12, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = call i8* @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %5, align 1
  br label %98

66:                                               ; preds = %52
  %67 = call i8* @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i8* @atoi(i8* %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %98

73:                                               ; preds = %66
  %74 = call i8* @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %6, align 1
  %76 = load i8, i8* %6, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* %5, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %98

82:                                               ; preds = %73
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 1), align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %89 = call i32 @Q_strncpyz(i32 %87, i8* %88, i32 16)
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 1), align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @Q_CleanStr(i32 %94)
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teamOrdersMenuInfo, i32 0, i32 0), align 8
  br label %98

98:                                               ; preds = %82, %81, %72, %63
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %43

101:                                              ; preds = %50
  %102 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_GetClientState(%struct.TYPE_4__*) #2

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #2

declare dso_local i32 @trap_GetConfigString(i64, i8*, i32) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @Q_CleanStr(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
