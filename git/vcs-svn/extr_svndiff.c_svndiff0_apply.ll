; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_svndiff0_apply.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_svndiff0_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }
%struct.sliding_view = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svndiff0_apply(%struct.line_buffer* %0, i64 %1, %struct.sliding_view* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.line_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sliding_view*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.line_buffer* %0, %struct.line_buffer** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sliding_view* %2, %struct.sliding_view** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %13 = icmp ne %struct.line_buffer* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load %struct.sliding_view*, %struct.sliding_view** %8, align 8
  %16 = icmp ne %struct.sliding_view* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = icmp sge i64 %21, 0
  br label %23

23:                                               ; preds = %20, %17, %14, %4
  %24 = phi i1 [ false, %17 ], [ false, %14 ], [ false, %4 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %28 = call i64 @read_magic(%struct.line_buffer* %27, i64* %7)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %58

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  store i64 -1, i64* %10, align 8
  %36 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %37 = call i64 @read_offset(%struct.line_buffer* %36, i64* %10, i64* %7)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %41 = call i64 @read_length(%struct.line_buffer* %40, i64* %11, i64* %7)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load %struct.sliding_view*, %struct.sliding_view** %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @move_window(%struct.sliding_view* %44, i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %51 = load %struct.sliding_view*, %struct.sliding_view** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @apply_one_window(%struct.line_buffer* %50, i64* %7, %struct.sliding_view* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %43, %39, %35
  store i32 -1, i32* %5, align 4
  br label %58

56:                                               ; preds = %49
  br label %32

57:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %55, %30
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @read_magic(%struct.line_buffer*, i64*) #1

declare dso_local i64 @read_offset(%struct.line_buffer*, i64*, i64*) #1

declare dso_local i64 @read_length(%struct.line_buffer*, i64*, i64*) #1

declare dso_local i64 @move_window(%struct.sliding_view*, i64, i64) #1

declare dso_local i64 @apply_one_window(%struct.line_buffer*, i64*, %struct.sliding_view*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
