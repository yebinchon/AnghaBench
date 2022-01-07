; ModuleID = '/home/carl/AnghaBench/git/extr_sh-i18n--envsubst.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_sh-i18n--envsubst.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"sh-i18n--envsubst\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"we won't substitute all variables on stdin for you\00", align 1
@all_variables = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"--variables\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"first argument must be --variables when two are given\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@errno = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = call i32 @trace2_cmd_name(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %28 [
    i32 1, label %7
    i32 2, label %9
    i32 3, label %15
  ]

7:                                                ; preds = %2
  %8 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %30

9:                                                ; preds = %2
  store i32 0, i32* @all_variables, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @note_variables(i8* %12)
  %14 = call i32 (...) @subst_from_stdin()
  br label %30

15:                                               ; preds = %2
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @print_variables(i8* %26)
  br label %30

28:                                               ; preds = %2
  %29 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23, %9, %7
  store i64 0, i64* @errno, align 8
  %31 = load i32, i32* @stderr, align 4
  %32 = call i64 @ferror(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i64 @fflush(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @stderr, align 4
  %40 = call i64 @fclose(i32 %39)
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = call i32 @exit(i32 %41) #3
  unreachable

43:                                               ; preds = %34
  %44 = load i32, i32* @stderr, align 4
  %45 = call i64 @fclose(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EBADF, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = call i32 @exit(i32 %52) #3
  unreachable

54:                                               ; preds = %47, %43
  %55 = load i32, i32* @EXIT_SUCCESS, align 4
  %56 = call i32 @exit(i32 %55) #3
  unreachable
}

declare dso_local i32 @trace2_cmd_name(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @note_variables(i8*) #1

declare dso_local i32 @subst_from_stdin(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_variables(i8*) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fflush(i32) #1

declare dso_local i64 @fclose(i32) #1

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
