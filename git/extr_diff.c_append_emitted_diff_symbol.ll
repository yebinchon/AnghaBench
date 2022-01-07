; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_append_emitted_diff_symbol.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_append_emitted_diff_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.emitted_diff_symbol*, i32 }
%struct.emitted_diff_symbol = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, %struct.emitted_diff_symbol*)* @append_emitted_diff_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_emitted_diff_symbol(%struct.diff_options* %0, %struct.emitted_diff_symbol* %1) #0 {
  %3 = alloca %struct.diff_options*, align 8
  %4 = alloca %struct.emitted_diff_symbol*, align 8
  %5 = alloca %struct.emitted_diff_symbol*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %3, align 8
  store %struct.emitted_diff_symbol* %1, %struct.emitted_diff_symbol** %4, align 8
  %6 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %7 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %9, align 8
  %11 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %12 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %18 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ALLOC_GROW(%struct.emitted_diff_symbol* %10, i64 %16, i32 %21)
  %23 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %24 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %26, align 8
  %28 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %29 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %27, i64 %32
  store %struct.emitted_diff_symbol* %34, %struct.emitted_diff_symbol** %5, align 8
  %35 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %36 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %37 = call i32 @memcpy(%struct.emitted_diff_symbol* %35, %struct.emitted_diff_symbol* %36, i32 16)
  %38 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %39 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %44 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %47 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @xmemdupz(i32* %45, i32 %48)
  br label %51

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %50, %42
  %52 = phi i32* [ %49, %42 ], [ null, %50 ]
  %53 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %54 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  ret void
}

declare dso_local i32 @ALLOC_GROW(%struct.emitted_diff_symbol*, i64, i32) #1

declare dso_local i32 @memcpy(%struct.emitted_diff_symbol*, %struct.emitted_diff_symbol*, i32) #1

declare dso_local i32* @xmemdupz(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
