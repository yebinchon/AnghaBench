; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils.c_dl_runtime_handler.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils.c_dl_runtime_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s caught, terminating program\0A\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"SIGSEGV\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SIGABRT\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"----------------- LOG BEGINS -----------------\0A\00", align 1
@LOG_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"-----------------  HISTORY   -----------------\0A\00", align 1
@LOG_HISTORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"-----------------  WARNINGS  -----------------\0A\00", align 1
@LOG_WARNINGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"-----------------  CRITICAL  -----------------\0A\00", align 1
@LOG_CRITICAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"----------------- LOG   ENDS -----------------\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dl_runtime_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @stderr, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @SIGSEGV, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @LOG_DEF, align 4
  %13 = call i32 @dl_log_dump(i32 %12, i32 127)
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* @LOG_HISTORY, align 4
  %17 = call i32 @dl_log_dump(i32 %16, i32 127)
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %20 = load i32, i32* @LOG_WARNINGS, align 4
  %21 = call i32 @dl_log_dump(i32 %20, i32 127)
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %24 = load i32, i32* @LOG_CRITICAL, align 4
  %25 = call i32 @dl_log_dump(i32 %24, i32 127)
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %28 = call i32 (...) @dl_print_backtrace()
  %29 = call i32 (...) @dl_print_backtrace_gdb()
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @_exit(i32 %30) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dl_log_dump(i32, i32) #1

declare dso_local i32 @dl_print_backtrace(...) #1

declare dso_local i32 @dl_print_backtrace_gdb(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
