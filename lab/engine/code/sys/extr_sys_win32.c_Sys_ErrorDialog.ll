; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_ErrorDialog.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_ErrorDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DT_YES_NO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s. Copy console log to clipboard?\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@DR_YES = common dso_local global i64 0, align 8
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@GMEM_DDESHARE = common dso_local global i32 0, align 4
@CF_TEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sys_ErrorDialog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @DT_YES_NO, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @va(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = call i64 @Sys_Dialog(i32 %8, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i64, i64* @DR_YES, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %1
  %15 = load i32, i32* @GMEM_MOVEABLE, align 4
  %16 = load i32, i32* @GMEM_DDESHARE, align 4
  %17 = or i32 %15, %16
  %18 = call i64 (...) @CON_LogSize()
  %19 = add nsw i64 %18, 1
  %20 = call i32 @GlobalAlloc(i32 %17, i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @GlobalLock(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %14
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %32, %26
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %30 = call i32 @CON_LogRead(i8* %29, i32 1024)
  store i32 %30, i32* %7, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @Com_Memcpy(i8* %33, i8* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %5, align 8
  br label %28

41:                                               ; preds = %28
  %42 = load i8*, i8** %5, align 8
  store i8 0, i8* %42, align 1
  %43 = call i64 @OpenClipboard(i32* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = call i64 (...) @EmptyClipboard()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @CF_TEXT, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @SetClipboardData(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %45, %41
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @GlobalUnlock(i8* %53)
  %55 = call i32 (...) @CloseClipboard()
  br label %56

56:                                               ; preds = %52, %14
  br label %57

57:                                               ; preds = %56, %1
  ret void
}

declare dso_local i64 @Sys_Dialog(i32, i32, i8*) #1

declare dso_local i32 @va(i8*, i8*) #1

declare dso_local i32 @GlobalAlloc(i32, i64) #1

declare dso_local i64 @CON_LogSize(...) #1

declare dso_local i64 @GlobalLock(i32) #1

declare dso_local i32 @CON_LogRead(i8*, i32) #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #1

declare dso_local i64 @OpenClipboard(i32*) #1

declare dso_local i64 @EmptyClipboard(...) #1

declare dso_local i32 @SetClipboardData(i32, i32) #1

declare dso_local i32 @GlobalUnlock(i8*) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
