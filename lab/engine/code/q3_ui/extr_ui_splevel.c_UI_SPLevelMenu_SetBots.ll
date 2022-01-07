; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_SetBots.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_SetBots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8**, i64* }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@levelMenuInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@selectedArenaSet = common dso_local global i64 0, align 8
@currentSet = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_SPLevelMenu_SetBots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SPLevelMenu_SetBots() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_INFO_STRING, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %11 = load i64, i64* @selectedArenaSet, align 8
  %12 = load i64, i64* @currentSet, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 1, i32* %6, align 4
  br label %125

15:                                               ; preds = %0
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 1), align 8
  %17 = call i8* @Info_ValueForKey(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = trunc i64 %8 to i32
  %19 = call i32 @Q_strncpyz(i8* %10, i8* %17, i32 %18)
  %20 = getelementptr inbounds i8, i8* %10, i64 0
  store i8* %20, i8** %1, align 8
  br label %21

21:                                               ; preds = %115, %15
  %22 = load i8*, i8** %1, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %28 = icmp slt i32 %27, 7
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i1 [ false, %21 ], [ %28, %26 ]
  br i1 %30, label %31, label %124

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i8*, i8** %1, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %1, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %1, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %1, align 8
  br label %32

47:                                               ; preds = %42
  %48 = load i8*, i8** %1, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %124

52:                                               ; preds = %47
  %53 = load i8*, i8** %1, align 8
  store i8* %53, i8** %2, align 8
  br label %54

54:                                               ; preds = %66, %52
  %55 = load i8*, i8** %1, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %1, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 32
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i8*, i8** %1, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %1, align 8
  br label %54

69:                                               ; preds = %64
  %70 = load i8*, i8** %1, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %1, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %1, align 8
  store i8 0, i8* %74, align 1
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %2, align 8
  %78 = call i8* @UI_GetBotInfoByName(i8* %77)
  store i8* %78, i8** %3, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %83 = call i8* @UI_GetBotInfoByNumber(i32 %82)
  store i8* %83, i8** %3, align 8
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i8*, i8** %3, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load i8*, i8** %3, align 8
  %89 = call i8* @Info_ValueForKey(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %90 = call i64 @PlayerIconHandle(i8* %89)
  %91 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 3), align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 %90, i64* %94, align 8
  %95 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 2), align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = call i8* @Info_ValueForKey(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %102 = call i32 @Q_strncpyz(i8* %99, i8* %101, i32 10)
  br label %115

103:                                              ; preds = %84
  %104 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 3), align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 0, i64* %107, align 8
  %108 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 2), align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** %2, align 8
  %114 = call i32 @Q_strncpyz(i8* %112, i8* %113, i32 10)
  br label %115

115:                                              ; preds = %103, %87
  %116 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 2), align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @Q_CleanStr(i8* %120)
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  br label %21

124:                                              ; preds = %51, %29
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %124, %14
  %126 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %6, align 4
  switch i32 %127, label %129 [
    i32 0, label %128
    i32 1, label %128
  ]

128:                                              ; preds = %125, %125
  ret void

129:                                              ; preds = %125
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i8* @UI_GetBotInfoByName(i8*) #2

declare dso_local i8* @UI_GetBotInfoByNumber(i32) #2

declare dso_local i64 @PlayerIconHandle(i8*) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
