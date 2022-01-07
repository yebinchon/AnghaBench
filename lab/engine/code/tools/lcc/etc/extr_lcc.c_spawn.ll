; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_spawn.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: no more processes\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: fatal error in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @spawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spawn(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @fork()
  store i32 %9, i32* %6, align 4
  switch i32 %9, label %26 [
    i32 -1, label %10
    i32 0, label %14
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** @progname, align 8
  %13 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 100, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @execvp(i8* %15, i8** %16)
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** @progname, align 8
  %20 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @perror(i8* %21)
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @fflush(i32 %23)
  %25 = call i32 @exit(i32 100) #3
  unreachable

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %36, %26
  %28 = call i32 @wait(i32* %8)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, -1
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ false, %27 ], [ %33, %31 ]
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  br label %27

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 255
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** @progname, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, 256
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %10
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
