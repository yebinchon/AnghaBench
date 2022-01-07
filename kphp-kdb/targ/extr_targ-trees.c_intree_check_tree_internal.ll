; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-trees.c_intree_check_tree_internal.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-trees.c_intree_check_tree_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intree_node = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @intree_check_tree_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intree_check_tree_internal(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.intree_node*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.intree_node* @TS_NODE(i32 %15)
  store %struct.intree_node* %16, %struct.intree_node** %10, align 8
  %17 = load %struct.intree_node*, %struct.intree_node** %10, align 8
  %18 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.intree_node*, %struct.intree_node** %10, align 8
  %24 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %25, %26
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i1 [ false, %14 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.intree_node*, %struct.intree_node** %10, align 8
  %34 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.intree_node*, %struct.intree_node** %10, align 8
  %38 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @intree_check_tree_internal(i32 %32, i32 %35, i32 %36, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.intree_node*, %struct.intree_node** %10, align 8
  %44 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.intree_node*, %struct.intree_node** %10, align 8
  %47 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @intree_check_tree_internal(i32 %42, i32 %45, i32 %49, i32 %50)
  %52 = add nsw i32 %41, %51
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %28, %13
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.intree_node* @TS_NODE(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
