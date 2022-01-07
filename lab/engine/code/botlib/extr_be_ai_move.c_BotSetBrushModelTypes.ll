; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotSetBrushModelTypes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotSetBrushModelTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i8*)* }

@MAX_EPAIRKEY = common dso_local global i32 0, align 4
@modeltypes = common dso_local global i32* null, align 8
@MAX_MODELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"entity %s model number out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"func_bobbing\00", align 1
@MODELTYPE_FUNC_BOB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"func_plat\00", align 1
@MODELTYPE_FUNC_PLAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"func_door\00", align 1
@MODELTYPE_FUNC_DOOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"func_static\00", align 1
@MODELTYPE_FUNC_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotSetBrushModelTypes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @MAX_EPAIRKEY, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @MAX_EPAIRKEY, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %13 = load i32*, i32** @modeltypes, align 8
  %14 = load i32, i32* @MAX_MODELS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @Com_Memset(i32* %13, i32 0, i32 %17)
  %19 = call i32 @AAS_NextBSPEntity(i32 0)
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %94, %0
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %97

23:                                               ; preds = %20
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @MAX_EPAIRKEY, align 4
  %26 = call i32 @AAS_ValueForBSPEpairKey(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %94

29:                                               ; preds = %23
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @MAX_EPAIRKEY, align 4
  %32 = call i32 @AAS_ValueForBSPEpairKey(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %94

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, i8* %12, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, i8* %12, i64 1
  %41 = call i32 @atoi(i8* %40)
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @MAX_MODELS, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %43
  %51 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %52 = load i32, i32* @PRT_MESSAGE, align 4
  %53 = call i32 %51(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %9)
  br label %94

54:                                               ; preds = %46
  %55 = call i32 @Q_stricmp(i8* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @MODELTYPE_FUNC_BOB, align 4
  %59 = load i32*, i32** @modeltypes, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %93

63:                                               ; preds = %54
  %64 = call i32 @Q_stricmp(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @MODELTYPE_FUNC_PLAT, align 4
  %68 = load i32*, i32** @modeltypes, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %92

72:                                               ; preds = %63
  %73 = call i32 @Q_stricmp(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @MODELTYPE_FUNC_DOOR, align 4
  %77 = load i32*, i32** @modeltypes, align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %91

81:                                               ; preds = %72
  %82 = call i32 @Q_stricmp(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @MODELTYPE_FUNC_STATIC, align 4
  %86 = load i32*, i32** @modeltypes, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %81
  br label %91

91:                                               ; preds = %90, %75
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %57
  br label %94

94:                                               ; preds = %93, %50, %34, %28
  %95 = load i32, i32* %1, align 4
  %96 = call i32 @AAS_NextBSPEntity(i32 %95)
  store i32 %96, i32* %1, align 4
  br label %20

97:                                               ; preds = %20
  %98 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %98)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #2

declare dso_local i32 @AAS_NextBSPEntity(i32) #2

declare dso_local i32 @AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
