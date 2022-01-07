; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_error.c_sigsegv_handler.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_error.c_sigsegv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"==%d== GoAccess %s crashed by Sig %d\0A\00", align 1
@GO_VERSION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"==%d==\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"==%d== %s:\0A\00", align 1
@ERR_PLEASE_REPORT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"==%d== https://github.com/allinurl/goaccess/issues\0A\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@TRACE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigsegv_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @stderr, align 8
  store i32* %5, i32** %3, align 8
  %6 = call i32 (...) @getpid()
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @endwin()
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8*, i8** @GO_VERSION, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %11, i8* %12, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @dump_struct(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i8*, i8** @ERR_PLEASE_REPORT, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %24, i8* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @exit(i32 %30) #3
  unreachable
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @dump_struct(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
