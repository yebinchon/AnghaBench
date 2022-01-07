; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-trees.c_intree_traverse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-trees.c_intree_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intree_node = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intree_traverse(i32 %0, i64 %1, i32 (%struct.intree_node*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32 (%struct.intree_node*)*, align 8
  %8 = alloca %struct.intree_node*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 (%struct.intree_node*)* %2, i32 (%struct.intree_node*)** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.intree_node* @TS_NODE(i64 %12)
  store %struct.intree_node* %13, %struct.intree_node** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %16 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32 (%struct.intree_node*)*, i32 (%struct.intree_node*)** %7, align 8
  %19 = call i32 @intree_traverse(i32 %14, i64 %17, i32 (%struct.intree_node*)* %18)
  %20 = load i32 (%struct.intree_node*)*, i32 (%struct.intree_node*)** %7, align 8
  %21 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %22 = call i32 %20(%struct.intree_node* %21)
  %23 = add nsw i32 %19, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %26 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32 (%struct.intree_node*)*, i32 (%struct.intree_node*)** %7, align 8
  %29 = call i32 @intree_traverse(i32 %24, i64 %27, i32 (%struct.intree_node*)* %28)
  %30 = add nsw i32 %23, %29
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.intree_node* @TS_NODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
