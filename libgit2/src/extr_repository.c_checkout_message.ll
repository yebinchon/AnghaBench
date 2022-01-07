; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_checkout_message.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_checkout_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"checkout: moving from \00", align 1
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @checkout_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_message(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @git_buf_puts(i32* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %6, align 8
  %11 = call i64 @git_reference_type(i32* %10)
  %12 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @git_reference_symbolic_target(i32* %16)
  %18 = call i8* @git_reference__shorthand(i8* %17)
  %19 = call i32 @git_buf_puts(i32* %15, i8* %18)
  br label %26

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @git_reference_target(i32* %22)
  %24 = call i8* @git_oid_tostr_s(i32 %23)
  %25 = call i32 @git_buf_puts(i32* %21, i8* %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @git_buf_puts(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @git_reference__is_branch(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @git_reference__is_tag(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @git_reference__is_remote(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %32, %26
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @git_reference__shorthand(i8* %42)
  %44 = call i32 @git_buf_puts(i32* %41, i8* %43)
  br label %49

45:                                               ; preds = %36
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @git_buf_puts(i32* %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @git_buf_oom(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %55

54:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i64 @git_reference_type(i32*) #1

declare dso_local i8* @git_reference__shorthand(i8*) #1

declare dso_local i8* @git_reference_symbolic_target(i32*) #1

declare dso_local i8* @git_oid_tostr_s(i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i64 @git_reference__is_branch(i8*) #1

declare dso_local i64 @git_reference__is_tag(i8*) #1

declare dso_local i64 @git_reference__is_remote(i8*) #1

declare dso_local i64 @git_buf_oom(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
