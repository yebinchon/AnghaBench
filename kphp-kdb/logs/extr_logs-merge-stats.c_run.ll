; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-stats.c_run.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-stats.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@left_files = common dso_local global i64 0, align 8
@engineF = common dso_local global i32 0, align 4
@engineN = common dso_local global i32 0, align 4
@f = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@ansI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  br label %4

4:                                                ; preds = %63, %0
  %5 = load i64, i64* @left_files, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %4
  store i64 0, i64* %1, align 8
  %8 = load i32, i32* @engineF, align 4
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %37, %7
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @engineN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i32**, i32*** @f, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load i32**, i32*** @f, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @fscanf(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %3)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* @left_files, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* @left_files, align 8
  br label %35

31:                                               ; preds = %20
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* %1, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %1, align 8
  br label %35

35:                                               ; preds = %31, %28
  br label %36

36:                                               ; preds = %35, %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load i64, i64* @left_files, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @left_files, align 8
  %45 = load i32, i32* @engineN, align 4
  %46 = load i32, i32* @engineF, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %44, %48
  br label %50

50:                                               ; preds = %43, %40
  %51 = phi i1 [ true, %40 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* @left_files, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32**, i32*** @f, align 8
  %58 = load i64, i64* @ansI, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %1, align 8
  %62 = call i32 @fprintf(i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %56, %50
  br label %4

64:                                               ; preds = %4
  ret void
}

declare dso_local i64 @fscanf(i32*, i8*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
