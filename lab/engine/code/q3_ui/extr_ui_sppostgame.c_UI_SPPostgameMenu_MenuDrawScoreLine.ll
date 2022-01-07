; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_sppostgame.c_UI_SPPostgameMenu_MenuDrawScoreLine.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_sppostgame.c_UI_SPPostgameMenu_MenuDrawScoreLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32*, i64* }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@postgameMenuInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RANK_TIED_FLAG = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"(tie)\00", align 1
@UI_LEFT = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_white = common dso_local global i32 0, align 4
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"#%i: %-16s %2i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @UI_SPPostgameMenu_MenuDrawScoreLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SPPostgameMenu_MenuDrawScoreLine(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MAX_INFO_STRING, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 0), align 8
  %16 = add nsw i32 %15, 1
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 0), align 8
  %20 = add nsw i32 %19, 2
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 0), align 8
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  br label %85

28:                                               ; preds = %23
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 1), align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @RANK_TIED_FLAG, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %40 = mul nsw i32 31, %39
  %41 = sub nsw i32 640, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @UI_LEFT, align 4
  %44 = load i32, i32* @UI_SMALLFONT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @color_white, align 4
  %47 = call i32 @UI_DrawString(i32 %41, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @RANK_TIED_FLAG, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %38, %28
  %53 = load i64, i64* @CS_PLAYERS, align 8
  %54 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 3), align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %53, %58
  %60 = load i32, i32* @MAX_INFO_STRING, align 4
  %61 = call i32 @trap_GetConfigString(i64 %59, i8* %13, i32 %60)
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %63 = call i32 @Info_ValueForKey(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @Q_strncpyz(i8* %62, i32 %63, i32 64)
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %66 = call i32 @Q_CleanStr(i8* %65)
  %67 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %68 = mul nsw i32 25, %67
  %69 = sub nsw i32 640, %68
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 2), align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @va(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %72, i8* %73, i32 %78)
  %80 = load i32, i32* @UI_LEFT, align 4
  %81 = load i32, i32* @UI_SMALLFONT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @color_white, align 4
  %84 = call i32 @UI_DrawString(i32 %69, i32 %70, i8* %79, i32 %82, i32 %83)
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %52, %27
  %86 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %9, align 4
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %88
  ]

88:                                               ; preds = %85, %85
  ret void

89:                                               ; preds = %85
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UI_DrawString(i32, i32, i8*, i32, i32) #2

declare dso_local i32 @trap_GetConfigString(i64, i8*, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

declare dso_local i8* @va(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
