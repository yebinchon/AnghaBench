; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_ClientName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_ClientName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ClientName: client out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"[client out of range]\00", align 1
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ClientName(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MAX_INFO_STRING, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MAX_CLIENTS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %3
  %22 = load i32, i32* @PRT_ERROR, align 4
  %23 = call i32 @BotAI_Print(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i32 1, i32* %10, align 4
  br label %44

24:                                               ; preds = %17
  %25 = load i64, i64* @CS_PLAYERS, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = trunc i64 %12 to i32
  %30 = call i32 @trap_GetConfigstring(i64 %28, i8* %14, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @Info_ValueForKey(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @strncpy(i8* %31, i32 %32, i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @Q_CleanStr(i8* %41)
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %4, align 8
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %24, %21
  %45 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BotAI_Print(i32, i8*) #2

declare dso_local i32 @trap_GetConfigstring(i64, i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

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
