; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_tree_dup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_tree_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { %struct.tl_combinator_tree*, %struct.tl_combinator_tree* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_combinator_tree* @tl_tree_dup(%struct.tl_combinator_tree* %0) #0 {
  %2 = alloca %struct.tl_combinator_tree*, align 8
  %3 = alloca %struct.tl_combinator_tree*, align 8
  %4 = alloca %struct.tl_combinator_tree*, align 8
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %3, align 8
  %5 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %6 = icmp ne %struct.tl_combinator_tree* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.tl_combinator_tree* null, %struct.tl_combinator_tree** %2, align 8
  br label %26

8:                                                ; preds = %1
  %9 = call %struct.tl_combinator_tree* @zmalloc(i32 16)
  store %struct.tl_combinator_tree* %9, %struct.tl_combinator_tree** %4, align 8
  %10 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %11 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %12 = call i32 @memcpy(%struct.tl_combinator_tree* %10, %struct.tl_combinator_tree* %11, i32 16)
  %13 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %14 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %13, i32 0, i32 1
  %15 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %14, align 8
  %16 = call %struct.tl_combinator_tree* @tl_tree_dup(%struct.tl_combinator_tree* %15)
  %17 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %18 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %17, i32 0, i32 1
  store %struct.tl_combinator_tree* %16, %struct.tl_combinator_tree** %18, align 8
  %19 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %20 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %19, i32 0, i32 0
  %21 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %20, align 8
  %22 = call %struct.tl_combinator_tree* @tl_tree_dup(%struct.tl_combinator_tree* %21)
  %23 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %24 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %23, i32 0, i32 0
  store %struct.tl_combinator_tree* %22, %struct.tl_combinator_tree** %24, align 8
  %25 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  store %struct.tl_combinator_tree* %25, %struct.tl_combinator_tree** %2, align 8
  br label %26

26:                                               ; preds = %8, %7
  %27 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %2, align 8
  ret %struct.tl_combinator_tree* %27
}

declare dso_local %struct.tl_combinator_tree* @zmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.tl_combinator_tree*, %struct.tl_combinator_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
