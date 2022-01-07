; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_path_suffixed.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_path_suffixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GIT_ERROR_CHECKOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"could not write '%s': working directory file exists\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @checkout_path_suffixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_path_suffixed(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i32 @git_buf_putc(%struct.TYPE_9__* %9, i8 signext 126)
  store i32 %10, i32* %8, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @git_buf_puts(%struct.TYPE_9__* %13, i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %64

18:                                               ; preds = %12
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i64 @git_buf_len(%struct.TYPE_9__* %19)
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %46, %18
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = call i32 @git_buf_cstr(%struct.TYPE_9__* %22)
  %24 = call i64 @git_path_exists(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @INT_MAX, align 4
  %29 = icmp slt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i1 [ false, %21 ], [ %29, %26 ]
  br i1 %31, label %32, label %49

32:                                               ; preds = %30
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @git_buf_truncate(%struct.TYPE_9__* %33, i64 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = call i32 @git_buf_putc(%struct.TYPE_9__* %36, i8 signext 95)
  store i32 %37, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @git_buf_printf(%struct.TYPE_9__* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %32
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %64

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %21

49:                                               ; preds = %30
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @INT_MAX, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @git_buf_truncate(%struct.TYPE_9__* %54, i64 %55)
  %57 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @git_error_set(i32 %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %53, %44, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @git_buf_putc(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @git_buf_puts(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @git_buf_len(%struct.TYPE_9__*) #1

declare dso_local i64 @git_path_exists(i32) #1

declare dso_local i32 @git_buf_cstr(%struct.TYPE_9__*) #1

declare dso_local i32 @git_buf_truncate(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @git_buf_printf(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
