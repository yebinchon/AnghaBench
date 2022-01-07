; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotMatch_CTF.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotMatch_CTF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_NETNAME = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@FLAG = common dso_local global i32 0, align 4
@ST_GOTFLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"red\00", align 1
@TEAM_BLUE = common dso_local global i64 0, align 8
@NETNAME = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i64 0, align 8
@ST_CAPTUREDFLAG = common dso_local global i32 0, align 4
@ST_RETURNEDFLAG = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@ST_1FCTFGOTFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotMatch_CTF(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load i32, i32* @MAX_NETNAME, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load i64, i64* @gametype, align 8
  %13 = load i64, i64* @GT_CTF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %107

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = load i32, i32* @FLAG, align 4
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %19 = call i32 @trap_BotMatchVariable(%struct.TYPE_8__* %16, i32 %17, i8* %18, i32 128)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ST_GOTFLAG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %15
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %28 = call i32 @Q_stricmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = call i64 @BotTeam(%struct.TYPE_7__* %33)
  %35 = load i64, i64* @TEAM_BLUE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = load i32, i32* @NETNAME, align 4
  %40 = trunc i64 %9 to i32
  %41 = call i32 @trap_BotMatchVariable(%struct.TYPE_8__* %38, i32 %39, i8* %11, i32 %40)
  %42 = call i8* @ClientFromName(i8* %11)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %37, %30
  br label %62

46:                                               ; preds = %26
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = call i64 @BotTeam(%struct.TYPE_7__* %49)
  %51 = load i64, i64* @TEAM_RED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = load i32, i32* @NETNAME, align 4
  %56 = trunc i64 %9 to i32
  %57 = call i32 @trap_BotMatchVariable(%struct.TYPE_8__* %54, i32 %55, i8* %11, i32 %56)
  %58 = call i8* @ClientFromName(i8* %11)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %53, %46
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = call i32 (...) @FloatTime()
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  br label %106

68:                                               ; preds = %15
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ST_CAPTUREDFLAG, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  store i8* null, i8** %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  br label %105

84:                                               ; preds = %68
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ST_RETURNEDFLAG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %84
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %93 = call i32 @Q_stricmp(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %101

98:                                               ; preds = %91
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %84
  br label %105

105:                                              ; preds = %104, %75
  br label %106

106:                                              ; preds = %105, %62
  br label %107

107:                                              ; preds = %106, %2
  %108 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_BotMatchVariable(%struct.TYPE_8__*, i32, i8*, i32) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i64 @BotTeam(%struct.TYPE_7__*) #2

declare dso_local i8* @ClientFromName(i8*) #2

declare dso_local i32 @FloatTime(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
