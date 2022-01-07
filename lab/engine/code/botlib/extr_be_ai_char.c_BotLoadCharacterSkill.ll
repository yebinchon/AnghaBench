; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_char.c_BotLoadCharacterSkill.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_char.c_BotLoadCharacterSkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_CHARACTER = common dso_local global i8* null, align 8
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bot_reloadcharacters\00", align 1
@botcharacters = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotLoadCharacterSkill(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %7 = load i8*, i8** @DEFAULT_CHARACTER, align 8
  %8 = load float, float* %4, align 4
  %9 = load i32, i32* @qfalse, align 4
  %10 = call i32 @BotLoadCachedCharacter(i8* %7, float %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = load float, float* %4, align 4
  %13 = call i32 @LibVarGetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @BotLoadCachedCharacter(i8* %11, float %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i32*, i32** @botcharacters, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @botcharacters, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BotDefaultCharacteristics(i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %20, %17, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @BotLoadCachedCharacter(i8*, float, i32) #1

declare dso_local i32 @LibVarGetValue(i8*) #1

declare dso_local i32 @BotDefaultCharacteristics(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
