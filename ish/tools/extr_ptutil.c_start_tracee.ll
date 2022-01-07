; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_ptutil.c_start_tracee.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_ptutil.c_start_tracee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_NO_RANDOMIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@PR_SET_TSC = common dso_local global i32 0, align 4
@PR_TSC_SIGSEGV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"rdtsc faulting\00", align 1
@PTRACE_TRACEME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ptrace traceme\00", align 1
@SIGRTMIN = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"execve\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"child failed to start\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_tracee(i32 %0, i8* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %13 = call i32 @personality(i32 -1)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @ADDR_NO_RANDOMIZE, align 4
  %15 = load i32, i32* %9, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @personality(i32 %17)
  %19 = call i32 (...) @fork()
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  %29 = load i32, i32* @PR_SET_TSC, align 4
  %30 = load i32, i32* @PR_TSC_SIGSEGV, align 4
  %31 = call i32 @prctl(i32 %29, i32 %30)
  %32 = call i32 @trycall(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @PTRACE_TRACEME, align 4
  %34 = call i32 @ptrace(i32 %33, i32 0, i32* null, i32* null)
  %35 = call i32 @trycall(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %45, %28
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @SIGRTMIN, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @SIG_DFL, align 4
  %44 = call i32 @signal(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %36

48:                                               ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @O_RDONLY, align 4
  %52 = call i32 @openat(i32 %49, i8* %50, i32 %51)
  %53 = load i8**, i8*** %7, align 8
  %54 = load i8**, i8*** %8, align 8
  %55 = call i32 @fexecve(i32 %52, i8** %53, i8** %54)
  %56 = call i32 @trycall(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %68

57:                                               ; preds = %25
  %58 = call i32 @wait(i32* %12)
  %59 = call i32 @trycall(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @WIFSTOPPED(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 @fprintf(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

declare dso_local i32 @personality(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @trycall(i32, i8*) #1

declare dso_local i32 @prctl(i32, i32) #1

declare dso_local i32 @ptrace(i32, i32, i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @fexecve(i32, i8**, i8**) #1

declare dso_local i32 @openat(i32, i8*, i32) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
