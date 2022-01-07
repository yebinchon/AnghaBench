; ModuleID = '/home/carl/AnghaBench/i3/src/extr_sighandler.c_sighandler_backtrace.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_sighandler.c_sighandler_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s/i3-backtrace.%d.%d.txt\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to fork for GDB\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to init stdin_pipe\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to init stdout_pipe\0A\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"set logging file %s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"gdb\00", align 1
@start_argv = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"-batch\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"-nx\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"-ex\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"set logging on\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"bt full\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Failed to exec GDB\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"GDB did not run properly\0A\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"GDB executed successfully, but no backtrace was generated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sighandler_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sighandler_backtrace() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [15 x i8*], align 16
  %12 = alloca i32, align 4
  %13 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %17

17:                                               ; preds = %16, %0
  %18 = call i64 (...) @getpid()
  store i64 %18, i64* %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %28, %17
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @FREE(i8* %20)
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8**, i8*, i8*, ...) @sasprintf(i8** %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %22, i64 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %19
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @path_exists(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %19, label %32

32:                                               ; preds = %28
  %33 = call i64 (...) @fork()
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %120

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %99

41:                                               ; preds = %38
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %43 = call i32 @pipe(i32* %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @ELOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %120

47:                                               ; preds = %41
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %49 = call i32 @pipe(i32* %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @ELOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %120

53:                                               ; preds = %47
  %54 = load i32, i32* @STDIN_FILENO, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i32, i32* @STDOUT_FILENO, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* @STDERR_FILENO, align 4
  %59 = call i32 @close(i32 %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @STDIN_FILENO, align 4
  %63 = call i32 @dup2(i32 %61, i32 %62)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @STDOUT_FILENO, align 4
  %67 = call i32 @dup2(i32 %65, i32 %66)
  %68 = load i64, i64* %3, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (i8**, i8*, i8*, ...) @sasprintf(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 (i8**, i8*, i8*, ...) @sasprintf(i8** %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %71)
  %73 = getelementptr inbounds [15 x i8*], [15 x i8*]* %11, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %73, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8**, i8*** @start_argv, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %74, align 8
  %78 = getelementptr inbounds i8*, i8** %74, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %78, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %9, align 8
  store i8* %80, i8** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %81, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %82, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %83, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  %85 = load i8*, i8** %10, align 8
  store i8* %85, i8** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %86, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8** %87, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %88, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %89, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %90, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %91, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  store i8* null, i8** %92, align 8
  %93 = getelementptr inbounds [15 x i8*], [15 x i8*]* %11, i64 0, i64 0
  %94 = load i8*, i8** %93, align 16
  %95 = getelementptr inbounds [15 x i8*], [15 x i8*]* %11, i64 0, i64 0
  %96 = call i32 @execvp(i8* %94, i8** %95)
  %97 = call i32 @DLOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %38
  br label %100

100:                                              ; preds = %99
  store i32 0, i32* %12, align 4
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @waitpid(i64 %101, i32* %12, i32 0)
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @WIFEXITED(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @WEXITSTATUS(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106, %100
  %111 = call i32 @DLOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %120

112:                                              ; preds = %106
  %113 = load i8*, i8** %4, align 8
  %114 = call i64 @path_exists(i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = call i32 @DLOG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %120

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118
  store i32 1, i32* %1, align 4
  br label %120

120:                                              ; preds = %119, %116, %110, %51, %45, %36
  %121 = load i32, i32* %1, align 4
  ret i32 %121
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i32 @sasprintf(i8**, i8*, i8*, ...) #1

declare dso_local i64 @path_exists(i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @ELOG(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
