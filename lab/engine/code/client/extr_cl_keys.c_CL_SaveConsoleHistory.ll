; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_SaveConsoleHistory.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_SaveConsoleHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@consoleSaveBuffer = common dso_local global i8* null, align 8
@nextHistoryLine = common dso_local global i32 0, align 4
@COMMAND_HISTORY = common dso_local global i32 0, align 4
@historyEditLines = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"999 999 999  \00", align 1
@MAX_CONSOLE_SAVE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%d %d %d %s \00", align 1
@consoleSaveBufferSize = common dso_local global i32 0, align 4
@CONSOLE_HISTORY_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Couldn't write %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_SaveConsoleHistory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i8*, i8** @consoleSaveBuffer, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %7, align 1
  %8 = load i32, i32* @nextHistoryLine, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* @COMMAND_HISTORY, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %73, %0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @historyEditLines, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %12
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @historyEditLines, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %2, align 4
  %30 = load i8*, i8** @consoleSaveBuffer, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* @MAX_CONSOLE_SAVE_BUFFER, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %22
  %41 = load i8*, i8** @consoleSaveBuffer, align 8
  %42 = load i32, i32* @MAX_CONSOLE_SAVE_BUFFER, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @historyEditLines, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @historyEditLines, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %2, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @historyEditLines, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @va(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %54, i32 %55, i8* %61)
  %63 = call i32 @Q_strcat(i8* %41, i32 %42, i32 %62)
  br label %65

64:                                               ; preds = %22
  br label %80

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %65, %12
  %67 = load i32, i32* %1, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @COMMAND_HISTORY, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @COMMAND_HISTORY, align 4
  %72 = srem i32 %70, %71
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* @nextHistoryLine, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @COMMAND_HISTORY, align 4
  %78 = srem i32 %76, %77
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %12, label %80

80:                                               ; preds = %73, %64
  %81 = load i8*, i8** @consoleSaveBuffer, align 8
  %82 = call i32 @strlen(i8* %81)
  store i32 %82, i32* @consoleSaveBufferSize, align 4
  %83 = load i32, i32* @CONSOLE_HISTORY_FILE, align 4
  %84 = call i32 @FS_FOpenFileWrite(i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @CONSOLE_HISTORY_FILE, align 4
  %89 = call i32 @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %103

90:                                               ; preds = %80
  %91 = load i8*, i8** @consoleSaveBuffer, align 8
  %92 = load i32, i32* @consoleSaveBufferSize, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @FS_Write(i8* %91, i32 %92, i32 %93)
  %95 = load i32, i32* @consoleSaveBufferSize, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @CONSOLE_HISTORY_FILE, align 4
  %99 = call i32 @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @FS_FCloseFile(i32 %101)
  br label %103

103:                                              ; preds = %100, %87
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Q_strcat(i8*, i32, i32) #1

declare dso_local i32 @va(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @FS_FOpenFileWrite(i32) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @FS_Write(i8*, i32, i32) #1

declare dso_local i32 @FS_FCloseFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
