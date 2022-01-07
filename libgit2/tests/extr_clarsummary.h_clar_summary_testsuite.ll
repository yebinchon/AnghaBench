; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clarsummary.h_clar_summary_testsuite.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clarsummary.h_clar_summary_testsuite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clar_summary = type { i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H:%M:%S\00", align 1
@.str.1 = private unnamed_addr constant [131 x i8] c"\09<testsuite  id=\22%d\22 name=\22%s\22 package=\22%s\22 hostname=\22localhost\22 timestamp=\22%s\22 time=\22%.2f\22 tests=\22%d\22 failures=\22%d\22 errors=\22%d\22>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clar_summary_testsuite(%struct.clar_summary* %0, i32 %1, i8* %2, i8* %3, i32 %4, double %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.clar_summary*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tm*, align 8
  %21 = alloca [20 x i8], align 16
  store %struct.clar_summary* %0, %struct.clar_summary** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store double %5, double* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = call %struct.tm* @localtime(i32* %15)
  store %struct.tm* %22, %struct.tm** %20, align 8
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %21, i64 0, i64 0
  %24 = load %struct.tm*, %struct.tm** %20, align 8
  %25 = call i64 @strftime(i8* %23, i32 20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tm* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %41

28:                                               ; preds = %9
  %29 = load %struct.clar_summary*, %struct.clar_summary** %11, align 8
  %30 = getelementptr inbounds %struct.clar_summary, %struct.clar_summary* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %21, i64 0, i64 0
  %36 = load double, double* %16, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %19, align 4
  %40 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %33, i8* %34, i8* %35, double %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %28, %27
  %42 = load i32, i32* %10, align 4
  ret i32 %42
}

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i8*, i8*, double, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
