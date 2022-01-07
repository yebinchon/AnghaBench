; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_tree_subiterator_next.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_tree_subiterator_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_subiterator = type { i64, i32, i32, i64* }
%struct.intree_node = type { i32, i32, i64, i64 }

@WordSpace = common dso_local global i32 0, align 4
@MAX_DEPTH = common dso_local global i64 0, align 8
@INFTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_subiterator*)* @tree_subiterator_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_subiterator_next(%struct.tree_subiterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree_subiterator*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.intree_node*, align 8
  store %struct.tree_subiterator* %0, %struct.tree_subiterator** %3, align 8
  %8 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %9 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %15 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load i32, i32* @WordSpace, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %19 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %4, align 8
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.intree_node* @TS_NODE(i64 %25)
  store %struct.intree_node* %26, %struct.intree_node** %7, align 8
  %27 = load %struct.intree_node*, %struct.intree_node** %7, align 8
  %28 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %33, %1
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = call %struct.intree_node* @TS_NODE(i64 %34)
  store %struct.intree_node* %35, %struct.intree_node** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %38 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %4, align 8
  %42 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %36, i64* %42, align 8
  %43 = load %struct.intree_node*, %struct.intree_node** %7, align 8
  %44 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  br label %30

46:                                               ; preds = %30
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @MAX_DEPTH, align 8
  %49 = icmp sle i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %54 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @INFTY, align 4
  %59 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %60 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  store i32 %58, i32* %2, align 4
  br label %80

61:                                               ; preds = %46
  %62 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %63 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = sub nsw i64 %65, 1
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.intree_node* @TS_NODE(i64 %68)
  store %struct.intree_node* %69, %struct.intree_node** %7, align 8
  %70 = load %struct.intree_node*, %struct.intree_node** %7, align 8
  %71 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %74 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.intree_node*, %struct.intree_node** %7, align 8
  %76 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tree_subiterator*, %struct.tree_subiterator** %3, align 8
  %79 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  store i32 %77, i32* %2, align 4
  br label %80

80:                                               ; preds = %61, %57
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.intree_node* @TS_NODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
