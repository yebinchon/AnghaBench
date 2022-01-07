; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_ParseMenu.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_ParseMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c"Parsing menu file: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"assetGlobalDef\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"menudef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_ParseMenu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @Com_Printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @trap_PC_LoadSource(i8* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %50

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %36, %46
  %14 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 8)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @trap_PC_ReadToken(i32 %15, %struct.TYPE_4__* %4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %47

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 125
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %47

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @Q_stricmp(i8* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @Asset_Parse(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %13

37:                                               ; preds = %32
  br label %47

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @Q_stricmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @Menu_New(i32 %44)
  br label %46

46:                                               ; preds = %43, %38
  br label %13

47:                                               ; preds = %37, %26, %18
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @trap_PC_FreeSource(i32 %48)
  br label %50

50:                                               ; preds = %47, %11
  ret void
}

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i32 @trap_PC_LoadSource(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @trap_PC_ReadToken(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i64 @Asset_Parse(i32) #1

declare dso_local i32 @Menu_New(i32) #1

declare dso_local i32 @trap_PC_FreeSource(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
