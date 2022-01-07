; ModuleID = '/home/carl/AnghaBench/i3/src/extr_util.c_exec_i3_utility.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_util.c_exec_i3_utility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@start_argv = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@BUFSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not read /proc/self/exe\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Could not start %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_i3_utility(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8**, i8*** %4, align 8
  %16 = call i32 @execvp(i8* %14, i8** %15)
  %17 = load i32*, i32** @start_argv, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @sstrdup(i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @dirname(i8* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @sasprintf(i8** %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = call i32 @execvp(i8* %29, i8** %30)
  %32 = load i32, i32* @BUFSIZ, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %8, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %9, align 8
  %36 = load i32, i32* @BUFSIZ, align 4
  %37 = call i32 @readlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @_exit(i32 1) #4
  unreachable

42:                                               ; preds = %2
  %43 = call i8* @dirname(i8* %35)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @sasprintf(i8** %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  %47 = load i8*, i8** %5, align 8
  %48 = load i8**, i8*** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i8**, i8*** %4, align 8
  %52 = call i32 @execvp(i8* %50, i8** %51)
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = call i32 @_exit(i32 2) #4
  unreachable
}

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i8* @sstrdup(i32) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @sasprintf(i8**, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
