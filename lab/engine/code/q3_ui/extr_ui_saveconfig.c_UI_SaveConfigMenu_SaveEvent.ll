; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_saveconfig.c_UI_SaveConfigMenu_SaveEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_saveconfig.c_UI_SaveConfigMenu_SaveEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@MAX_QPATH = common dso_local global i32 0, align 4
@QM_ACTIVATED = common dso_local global i32 0, align 4
@saveConfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"writeconfig %s.cfg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @UI_SaveConfigMenu_SaveEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SaveConfigMenu_SaveEvent(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @MAX_QPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @QM_ACTIVATED, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @saveConfig, i32 0, i32 0, i32 0, i32 0), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %30

22:                                               ; preds = %16
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @saveConfig, i32 0, i32 0, i32 0, i32 0), align 8
  %24 = trunc i64 %9 to i32
  %25 = call i32 @COM_StripExtension(i32* %23, i8* %11, i32 %24)
  %26 = load i32, i32* @EXEC_APPEND, align 4
  %27 = call i32 @va(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %11)
  %28 = call i32 @trap_Cmd_ExecuteText(i32 %26, i32 %27)
  %29 = call i32 (...) @UI_PopMenu()
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %22, %21, %15
  %31 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %34 [
    i32 0, label %33
    i32 1, label %33
  ]

33:                                               ; preds = %30, %30
  ret void

34:                                               ; preds = %30
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @COM_StripExtension(i32*, i8*, i32) #2

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i32) #2

declare dso_local i32 @va(i8*, i8*) #2

declare dso_local i32 @UI_PopMenu(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
