; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-trees.c_intree_unpack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-trees.c_intree_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intree_node = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intree_unpack(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intree_node*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.intree_node* @TS_NODE(i32 %14)
  store %struct.intree_node* %15, %struct.intree_node** %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.intree_node*, %struct.intree_node** %9, align 8
  %18 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @intree_unpack(i32 %16, i32 %19, i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %7, align 8
  %25 = load %struct.intree_node*, %struct.intree_node** %9, align 8
  %26 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.intree_node*, %struct.intree_node** %9, align 8
  %34 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @intree_unpack(i32 %32, i32 %35, i32* %36)
  %38 = add nsw i32 %31, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %13, %12
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.intree_node* @TS_NODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
