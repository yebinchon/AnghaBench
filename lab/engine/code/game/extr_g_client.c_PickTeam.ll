; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_PickTeam.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_PickTeam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@TEAM_NUM_TEAMS = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PickTeam(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @TEAM_NUM_TEAMS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i64, i64* @TEAM_BLUE, align 8
  %13 = call i32 @TeamCount(i32 %11, i64 %12)
  %14 = load i64, i64* @TEAM_BLUE, align 8
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* @TEAM_RED, align 8
  %18 = call i32 @TeamCount(i32 %16, i64 %17)
  %19 = load i64, i64* @TEAM_RED, align 8
  %20 = getelementptr inbounds i32, i32* %10, i64 %19
  store i32 %18, i32* %20, align 4
  %21 = load i64, i64* @TEAM_BLUE, align 8
  %22 = getelementptr inbounds i32, i32* %10, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @TEAM_RED, align 8
  %25 = getelementptr inbounds i32, i32* %10, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i64, i64* @TEAM_RED, align 8
  store i64 %29, i64* %2, align 8
  store i32 1, i32* %6, align 4
  br label %54

30:                                               ; preds = %1
  %31 = load i64, i64* @TEAM_RED, align 8
  %32 = getelementptr inbounds i32, i32* %10, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @TEAM_BLUE, align 8
  %35 = getelementptr inbounds i32, i32* %10, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i64, i64* @TEAM_BLUE, align 8
  store i64 %39, i64* %2, align 8
  store i32 1, i32* %6, align 4
  br label %54

40:                                               ; preds = %30
  %41 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %42 = load i64, i64* @TEAM_BLUE, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %46 = load i64, i64* @TEAM_RED, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %44, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i64, i64* @TEAM_RED, align 8
  store i64 %51, i64* %2, align 8
  store i32 1, i32* %6, align 4
  br label %54

52:                                               ; preds = %40
  %53 = load i64, i64* @TEAM_BLUE, align 8
  store i64 %53, i64* %2, align 8
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %50, %38, %28
  %55 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TeamCount(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
