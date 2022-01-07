; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_cp.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"open for writing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_futils_cp(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @git_futils_open_ro(i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %35

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @O_WRONLY, align 4
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_EXCL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @p_open(i8* %16, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @p_close(i32 %26)
  %28 = load i32, i32* @errno, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @git_path_set_error(i32 %28, i8* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %15
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @cp_by_fd(i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %25, %13
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @git_futils_open_ro(i8*) #1

declare dso_local i32 @p_open(i8*, i32, i32) #1

declare dso_local i32 @p_close(i32) #1

declare dso_local i32 @git_path_set_error(i32, i8*, i8*) #1

declare dso_local i32 @cp_by_fd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
