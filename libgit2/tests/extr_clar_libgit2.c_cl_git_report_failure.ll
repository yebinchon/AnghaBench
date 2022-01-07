; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_git_report_failure.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_git_report_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [28 x i8] c"error %d (expected %d) - %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"<no message>\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"error %d - %s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"no error, expected non-zero return\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_git_report_failure(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = call %struct.TYPE_3__* (...) @git_error_last()
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %5
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = call i32 (i8*, i32, i8*, ...) @p_snprintf(i8* %17, i32 4096, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i8* %28)
  br label %53

30:                                               ; preds = %5
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %45 ]
  %48 = call i32 (i8*, i32, i8*, ...) @p_snprintf(i8* %37, i32 4096, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %38, i8* %47)
  br label %52

49:                                               ; preds = %33
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %51 = call i32 (i8*, i32, i8*, ...) @p_snprintf(i8* %50, i32 4096, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %58 = call i32 @clar__assert(i32 0, i8* %54, i32 %55, i8* %56, i8* %57, i32 1)
  ret void
}

declare dso_local %struct.TYPE_3__* @git_error_last(...) #1

declare dso_local i32 @p_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @clar__assert(i32, i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
