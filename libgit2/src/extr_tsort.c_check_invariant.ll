; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tsort.c_check_invariant.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tsort.c_check_invariant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsort_run = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsort_run*, i32)* @check_invariant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_invariant(%struct.tsort_run* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tsort_run*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tsort_run* %0, %struct.tsort_run** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load %struct.tsort_run*, %struct.tsort_run** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %18, i64 %21
  %23 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.tsort_run*, %struct.tsort_run** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %25, i64 %28
  %30 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %71

36:                                               ; preds = %14
  %37 = load %struct.tsort_run*, %struct.tsort_run** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %37, i64 %40
  %42 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.tsort_run*, %struct.tsort_run** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %44, i64 %47
  %49 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.tsort_run*, %struct.tsort_run** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %51, i64 %54
  %56 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = icmp sle i32 %58, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %36
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sle i32 %64, %65
  br label %67

67:                                               ; preds = %63, %36
  %68 = phi i1 [ true, %36 ], [ %66, %63 ]
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %17, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
