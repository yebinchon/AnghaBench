; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_match_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_match_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32 }
%struct.diff_filepair = type { i64, i64 }

@DIFF_STATUS_MODIFIED = common dso_local global i64 0, align 8
@DIFF_STATUS_FILTER_BROKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_options*, %struct.diff_filepair*)* @match_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_filter(%struct.diff_options* %0, %struct.diff_filepair* %1) #0 {
  %3 = alloca %struct.diff_options*, align 8
  %4 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %3, align 8
  store %struct.diff_filepair* %1, %struct.diff_filepair** %4, align 8
  %5 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %6 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DIFF_STATUS_MODIFIED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %12 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i64, i64* @DIFF_STATUS_FILTER_BROKEN, align 8
  %17 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %18 = call i64 @filter_bit_tst(i64 %16, %struct.diff_options* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %22 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* @DIFF_STATUS_MODIFIED, align 8
  %27 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %28 = call i64 @filter_bit_tst(i64 %26, %struct.diff_options* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %25, %20, %2
  %31 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %32 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DIFF_STATUS_MODIFIED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %38 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %41 = call i64 @filter_bit_tst(i64 %39, %struct.diff_options* %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %36, %30
  %44 = phi i1 [ false, %30 ], [ %42, %36 ]
  br label %45

45:                                               ; preds = %43, %25, %15
  %46 = phi i1 [ true, %25 ], [ true, %15 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i64 @filter_bit_tst(i64, %struct.diff_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
