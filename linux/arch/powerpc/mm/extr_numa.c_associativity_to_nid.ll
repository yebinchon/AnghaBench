; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_numa.c_associativity_to_nid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_numa.c_associativity_to_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@numa_enabled = common dso_local global i32 0, align 4
@min_common_depth = common dso_local global i64 0, align 8
@MAX_NUMNODES = common dso_local global i32 0, align 4
@distance_ref_points_depth = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @associativity_to_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @associativity_to_nid(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @numa_enabled, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %42

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @of_read_number(i32* %9, i32 1)
  %11 = load i64, i64* @min_common_depth, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = load i64, i64* @min_common_depth, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i64 @of_read_number(i32* %16, i32 1)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %13, %8
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 65535
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MAX_NUMNODES, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %19
  %27 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32*, i32** %2, align 8
  %33 = call i64 @of_read_number(i32* %32, i32 1)
  %34 = load i64, i64* @distance_ref_points_depth, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = call i32 @initialize_distance_lookup_table(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %36, %31, %28
  br label %42

42:                                               ; preds = %41, %7
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @of_read_number(i32*, i32) #1

declare dso_local i32 @initialize_distance_lookup_table(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
