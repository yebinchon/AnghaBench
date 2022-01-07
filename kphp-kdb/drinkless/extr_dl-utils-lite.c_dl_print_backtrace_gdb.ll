; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils-lite.c_dl_print_backtrace_gdb.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils-lite.c_dl_print_backtrace_gdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't fork() to run gdb\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"stack trace for %s pid = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gdb\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"--batch\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-ex\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"can't get name of executable file to pass to gdb\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dl_print_backtrace_gdb() #0 {
  %1 = alloca [30 x i8], align 16
  %2 = alloca [512 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [30 x i8], [30 x i8]* %1, i64 0, i64 0
  %6 = call i32 (...) @getpid()
  %7 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %9 = call i64 @readlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %8, i32 511)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp uge i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %0
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 %13
  store i8 0, i8* %14, align 1
  %15 = call i32 (...) @fork()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @_exit(i32 0) #3
  unreachable

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = call i32 @dup2(i32 2, i32 1)
  %27 = load i32, i32* @stdout, align 4
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %29 = getelementptr inbounds [30 x i8], [30 x i8]* %1, i64 0, i64 0
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %29)
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %32 = getelementptr inbounds [30 x i8], [30 x i8]* %1, i64 0, i64 0
  %33 = call i32 @execlp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %31, i8* %32, i32* null)
  %34 = call i32 @_exit(i32 0) #3
  unreachable

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @waitpid(i32 %36, i32* null, i32 0)
  br label %38

38:                                               ; preds = %35
  br label %42

39:                                               ; preds = %0
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
