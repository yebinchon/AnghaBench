; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_trees.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32* }
%struct.tree = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_trees(%struct.merge_options* %0, %struct.tree* %1, %struct.tree* %2, %struct.tree* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.merge_options*, align 8
  %7 = alloca %struct.tree*, align 8
  %8 = alloca %struct.tree*, align 8
  %9 = alloca %struct.tree*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tree*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %6, align 8
  store %struct.tree* %1, %struct.tree** %7, align 8
  store %struct.tree* %2, %struct.tree** %8, align 8
  store %struct.tree* %3, %struct.tree** %9, align 8
  %12 = load %struct.merge_options*, %struct.merge_options** %6, align 8
  %13 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.merge_options*, %struct.merge_options** %6, align 8
  %19 = load %struct.tree*, %struct.tree** %7, align 8
  %20 = call i64 @merge_start(%struct.merge_options* %18, %struct.tree* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %32

23:                                               ; preds = %4
  %24 = load %struct.merge_options*, %struct.merge_options** %6, align 8
  %25 = load %struct.tree*, %struct.tree** %7, align 8
  %26 = load %struct.tree*, %struct.tree** %8, align 8
  %27 = load %struct.tree*, %struct.tree** %9, align 8
  %28 = call i32 @merge_trees_internal(%struct.merge_options* %24, %struct.tree* %25, %struct.tree* %26, %struct.tree* %27, %struct.tree** %11)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.merge_options*, %struct.merge_options** %6, align 8
  %30 = call i32 @merge_finalize(%struct.merge_options* %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %23, %22
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @merge_start(%struct.merge_options*, %struct.tree*) #1

declare dso_local i32 @merge_trees_internal(%struct.merge_options*, %struct.tree*, %struct.tree*, %struct.tree*, %struct.tree**) #1

declare dso_local i32 @merge_finalize(%struct.merge_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
