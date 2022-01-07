; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotMatch_StartTeamLeaderShip.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotMatch_StartTeamLeaderShip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i32 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@ST_I = common dso_local global i32 0, align 4
@NETNAME = common dso_local global i32 0, align 4
@TEAMMATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotMatch_StartTeamLeaderShip(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = call i32 (...) @TeamPlayIsOn()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ST_I, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load i32, i32* @NETNAME, align 4
  %26 = trunc i64 %10 to i32
  %27 = call i32 @trap_BotMatchVariable(%struct.TYPE_7__* %24, i32 %25, i8* %12, i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strncpy(i8* %30, i8* %12, i32 8)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 7
  store i8 0, i8* %35, align 1
  br label %51

36:                                               ; preds = %16
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = load i32, i32* @TEAMMATE, align 4
  %39 = trunc i64 %10 to i32
  %40 = call i32 @trap_BotMatchVariable(%struct.TYPE_7__* %37, i32 %38, i8* %12, i32 %39)
  %41 = call i32 @FindClientByName(i8* %12)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @ClientName(i32 %45, i8* %48, i32 8)
  br label %50

50:                                               ; preds = %44, %36
  br label %51

51:                                               ; preds = %50, %23
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %15
  %53 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %56 [
    i32 0, label %55
    i32 1, label %55
  ]

55:                                               ; preds = %52, %52
  ret void

56:                                               ; preds = %52
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TeamPlayIsOn(...) #2

declare dso_local i32 @trap_BotMatchVariable(%struct.TYPE_7__*, i32, i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @FindClientByName(i8*) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
