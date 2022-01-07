; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_sane_execvp.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_sane_execvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sane_execvp(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @trace2_exec(i8* %8, i8** %9)
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @execvp(i8* %11, i8** %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @trace2_exec_result(i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* @errno, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = load i32, i32* @EACCES, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %16
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strchr(i8* %26, i8 signext 47)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @exists_in_PATH(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @EACCES, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOENT, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* @errno, align 4
  br label %50

39:                                               ; preds = %25, %16
  %40 = load i32, i32* @errno, align 4
  %41 = load i32, i32* @ENOTDIR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strchr(i8* %44, i8 signext 47)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @ENOENT, align 4
  store i32 %48, i32* @errno, align 4
  br label %49

49:                                               ; preds = %47, %43, %39
  br label %50

50:                                               ; preds = %49, %37
  store i32 -1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @trace2_exec(i8*, i8**) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @trace2_exec_result(i32, i32) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i64 @exists_in_PATH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
