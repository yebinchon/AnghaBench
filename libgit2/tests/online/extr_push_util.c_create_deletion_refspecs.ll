; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_push_util.c_create_deletion_refspecs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_push_util.c_create_deletion_refspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_deletion_refspecs(i32* %0, %struct.TYPE_3__** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %46, %3
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %10, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @git_reference_is_valid_name(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %50

27:                                               ; preds = %16
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = call i32 @git_buf_putc(i32* %8, i8 signext 58)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @git_buf_puts(i32* %8, i32 %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @git_buf_detach(i32* %8)
  %43 = call i32 @git_vector_insert(i32* %41, i32 %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  br label %45

45:                                               ; preds = %33, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %12

49:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @git_reference_is_valid_name(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i32 @git_buf_puts(i32*, i32) #1

declare dso_local i32 @git_vector_insert(i32*, i32) #1

declare dso_local i32 @git_buf_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
