; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_sppostgame.c_UI_SPPostgameMenu_MenuKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_sppostgame.c_UI_SPPostgameMenu_MenuKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32, i64, i32 }

@uis = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@postgameMenuInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"abort_podium\0A\00", align 1
@K_ESCAPE = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @UI_SPPostgameMenu_MenuKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_SPPostgameMenu_MenuKey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @postgameMenuInfo, i32 0, i32 0), align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @postgameMenuInfo, i32 0, i32 1), align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* @EXEC_APPEND, align 4
  %13 = call i32 @trap_Cmd_ExecuteText(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @postgameMenuInfo, i32 0, i32 1), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 0), align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @postgameMenuInfo, i32 0, i32 2), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 0), align 8
  %16 = add nsw i64 %15, 250
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @postgameMenuInfo, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %36

17:                                               ; preds = %8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @postgameMenuInfo, i32 0, i32 1), align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @postgameMenuInfo, i32 0, i32 1), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 0), align 8
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @postgameMenuInfo, i32 0, i32 2), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 0), align 8
  %23 = add nsw i64 %22, 250
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @postgameMenuInfo, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %36

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @K_ESCAPE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @K_MOUSE2, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  store i32 0, i32* %2, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @Menu_DefaultKey(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @postgameMenuInfo, i32 0, i32 3), i32 %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %32, %20, %11, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

declare dso_local i32 @Menu_DefaultKey(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
