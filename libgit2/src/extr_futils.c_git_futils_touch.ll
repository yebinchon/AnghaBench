; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_touch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p_timeval = type { i64, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"touch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_futils_touch(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x %struct.p_timeval], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  br label %14

12:                                               ; preds = %2
  %13 = call i32 @time(i32* null)
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %11, %9 ], [ %13, %12 ]
  %16 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %5, i64 0, i64 1
  %17 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %5, i64 0, i64 0
  %19 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %18, i32 0, i32 1
  store i32 %15, i32* %19, align 8
  %20 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %5, i64 0, i64 1
  %21 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %20, i32 0, i32 0
  store i64 0, i64* %21, align 16
  %22 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %5, i64 0, i64 0
  %23 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %22, i32 0, i32 0
  store i64 0, i64* %23, align 16
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %5, i64 0, i64 0
  %26 = call i32 @p_utimes(i8* %24, %struct.p_timeval* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load i32, i32* @errno, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @git_path_set_error(i32 %30, i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %34

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 0, %33 ]
  ret i32 %35
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @p_utimes(i8*, %struct.p_timeval*) #1

declare dso_local i32 @git_path_set_error(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
