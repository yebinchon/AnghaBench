; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xhistogram.c_find_lcs.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xhistogram.c_find_lcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histindex = type { i64, i64, i64 }
%struct.region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.histindex*, %struct.region*, i32, i32, i32, i32)* @find_lcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_lcs(%struct.histindex* %0, %struct.region* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.histindex*, align 8
  %9 = alloca %struct.region*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.histindex* %0, %struct.histindex** %8, align 8
  store %struct.region* %1, %struct.region** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.histindex*, %struct.histindex** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @scanA(%struct.histindex* %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %58

21:                                               ; preds = %6
  %22 = load %struct.histindex*, %struct.histindex** %8, align 8
  %23 = getelementptr inbounds %struct.histindex, %struct.histindex* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = load %struct.histindex*, %struct.histindex** %8, align 8
  %27 = getelementptr inbounds %struct.histindex, %struct.histindex* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %33, %21
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @LINE_END(i32 2)
  %32 = icmp ule i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.histindex*, %struct.histindex** %8, align 8
  %35 = load %struct.region*, %struct.region** %9, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @try_lcs(%struct.histindex* %34, %struct.region* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  br label %29

42:                                               ; preds = %29
  %43 = load %struct.histindex*, %struct.histindex** %8, align 8
  %44 = getelementptr inbounds %struct.histindex, %struct.histindex* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.histindex*, %struct.histindex** %8, align 8
  %49 = getelementptr inbounds %struct.histindex, %struct.histindex* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.histindex*, %struct.histindex** %8, align 8
  %52 = getelementptr inbounds %struct.histindex, %struct.histindex* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br label %55

55:                                               ; preds = %47, %42
  %56 = phi i1 [ false, %42 ], [ %54, %47 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %20
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i64 @scanA(%struct.histindex*, i32, i32) #1

declare dso_local i32 @LINE_END(i32) #1

declare dso_local i32 @try_lcs(%struct.histindex*, %struct.region*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
