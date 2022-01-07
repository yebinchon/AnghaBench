; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_InitJournaling.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_InitJournaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"journal\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@com_journal = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Journaling events\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"journal.dat\00", align 1
@com_journalFile = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"journaldata.dat\00", align 1
@com_journalDataFile = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Replaying journaled events\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"com_journal\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Couldn't open journal files\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_InitJournaling() #0 {
  %1 = call i32 @Com_StartupVariable(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @CVAR_INIT, align 4
  %3 = call %struct.TYPE_3__* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** @com_journal, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_journal, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %39

9:                                                ; preds = %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_journal, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = call i32 @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i64 @FS_FOpenFileWrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i64 %16, i64* @com_journalFile, align 8
  %17 = call i64 @FS_FOpenFileWrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i64 %17, i64* @com_journalDataFile, align 8
  br label %30

18:                                               ; preds = %9
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_journal, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = call i32 @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %25 = load i32, i32* @qtrue, align 4
  %26 = call i32 @FS_FOpenFileRead(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64* @com_journalFile, i32 %25)
  %27 = load i32, i32* @qtrue, align 4
  %28 = call i32 @FS_FOpenFileRead(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64* @com_journalDataFile, i32 %27)
  br label %29

29:                                               ; preds = %23, %18
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i64, i64* @com_journalFile, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* @com_journalDataFile, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %30
  %37 = call i32 @Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @com_journalFile, align 8
  store i64 0, i64* @com_journalDataFile, align 8
  %38 = call i32 @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %39

39:                                               ; preds = %8, %36, %33
  ret void
}

declare dso_local i32 @Com_StartupVariable(i8*) #1

declare dso_local %struct.TYPE_3__* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i64 @FS_FOpenFileWrite(i8*) #1

declare dso_local i32 @FS_FOpenFileRead(i8*, i64*, i32) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
