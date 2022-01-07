; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_bot.c_G_SelectRandomBotInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_bot.c_G_SelectRandomBotInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_BOTS = common dso_local global i32 0, align 4
@g_numBots = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@g_botInfos = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"funname\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @G_SelectRandomBotInfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @MAX_BOTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = call i32 @G_CountBotPlayersByName(i8* null, i32 -1)
  %20 = load i32, i32* @g_numBots, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %18, %1
  store i32 0, i32* %7, align 4
  %24 = load i32, i32* @MAX_CLIENTS, align 4
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %72, %23
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @g_numBots, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %75

29:                                               ; preds = %25
  %30 = load i32*, i32** @g_botInfos, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @Info_ValueForKey(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %29
  %41 = load i32*, i32** @g_botInfos, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @Info_ValueForKey(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %46, i8** %10, align 8
  br label %47

47:                                               ; preds = %40, %29
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @G_CountBotPlayersByName(i8* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %15, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MAX_BOTS, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %75

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %56
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %25

75:                                               ; preds = %69, %25
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = call i32 (...) @random()
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 %79, %81
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %15, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %88

87:                                               ; preds = %75
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %78
  %89 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @G_CountBotPlayersByName(i8*, i32) #2

declare dso_local i8* @Info_ValueForKey(i32, i8*) #2

declare dso_local i32 @random(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
