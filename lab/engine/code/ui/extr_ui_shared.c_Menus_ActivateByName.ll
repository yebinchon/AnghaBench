; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Menus_ActivateByName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Menus_ActivateByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@menuCount = common dso_local global i32 0, align 4
@Menus = common dso_local global %struct.TYPE_9__* null, align 8
@openMenuCount = common dso_local global i64 0, align 8
@MAX_OPEN_MENUS = common dso_local global i64 0, align 8
@menuStack = common dso_local global %struct.TYPE_9__** null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @Menus_ActivateByName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  %6 = call %struct.TYPE_9__* (...) @Menu_GetFocused()
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %54, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @menuCount, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %7
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Menus, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @Q_stricmp(i32 %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %11
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Menus, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %4, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = call i32 @Menus_Activate(%struct.TYPE_9__* %27)
  %29 = load i64, i64* @openMenuCount, align 8
  %30 = load i64, i64* @MAX_OPEN_MENUS, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @menuStack, align 8
  %38 = load i64, i64* @openMenuCount, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @openMenuCount, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %37, i64 %38
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %40, align 8
  br label %41

41:                                               ; preds = %35, %32, %22
  br label %53

42:                                               ; preds = %11
  %43 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Menus, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %44
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %42, %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %7

57:                                               ; preds = %7
  %58 = call i32 (...) @Display_CloseCinematics()
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %59
}

declare dso_local %struct.TYPE_9__* @Menu_GetFocused(...) #1

declare dso_local i64 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @Menus_Activate(%struct.TYPE_9__*) #1

declare dso_local i32 @Display_CloseCinematics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
