; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_init_tree_subiterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_init_tree_subiterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_subiterator = type { i32*, i64, i32, i32 }
%struct.intree_node = type { i32, i32, i32 }

@WordSpace = common dso_local global i32 0, align 4
@MAX_DEPTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_tree_subiterator(%struct.tree_subiterator* %0, i32 %1) #0 {
  %3 = alloca %struct.tree_subiterator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intree_node*, align 8
  store %struct.tree_subiterator* %0, %struct.tree_subiterator** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @assert(i32 %8)
  store i64 0, i64* %5, align 8
  %10 = load i32, i32* @WordSpace, align 4
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.intree_node* @TS_NODE(i32 %12)
  store %struct.intree_node* %13, %struct.intree_node** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %16 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %5, align 8
  %20 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %14, i32* %20, align 4
  %21 = load %struct.intree_node*, %struct.intree_node** %7, align 8
  %22 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %11
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %11, label %27

27:                                               ; preds = %24
  %28 = load %struct.intree_node*, %struct.intree_node** %7, align 8
  %29 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %32 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.intree_node*, %struct.intree_node** %7, align 8
  %34 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %37 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %40 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @MAX_DEPTH, align 8
  %43 = icmp sle i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.intree_node* @TS_NODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
