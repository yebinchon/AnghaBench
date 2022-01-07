; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_read_gitfile_error_die.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_read_gitfile_error_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"error opening '%s'\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"too large to be a .git file: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid gitfile format: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"no path in gitfile: %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"not a git repository: %s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"unknown error code\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_gitfile_error_die(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %33 [
    i32 129, label %8
    i32 134, label %8
    i32 131, label %9
    i32 128, label %13
    i32 130, label %17
    i32 135, label %21
    i32 132, label %25
    i32 133, label %29
  ]

8:                                                ; preds = %3, %3
  br label %35

9:                                                ; preds = %3
  %10 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @die_errno(i32 %10, i8* %11)
  br label %13

13:                                               ; preds = %3, %9
  %14 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @die(i32 %14, i8* %15)
  br label %17

17:                                               ; preds = %3, %13
  %18 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @die(i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %3, %17
  %22 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @die(i32 %22, i8* %23)
  br label %25

25:                                               ; preds = %3, %21
  %26 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @die(i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %3, %25
  %30 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @die(i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %3, %29
  %34 = call i32 @BUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %8
  ret void
}

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
