; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_prune_extents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_prune_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_file_extent = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_file_extent*, i32*, i64)* @prune_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_extents(%struct.ceph_file_extent* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ceph_file_extent*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_file_extent*, align 8
  store %struct.ceph_file_extent* %0, %struct.ceph_file_extent** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %26, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.ceph_file_extent*, %struct.ceph_file_extent** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %15, i64 %18
  %20 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp sge i64 %21, %22
  br label %24

24:                                               ; preds = %14, %11
  %25 = phi i1 [ false, %11 ], [ %23, %14 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  br label %11

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load %struct.ceph_file_extent*, %struct.ceph_file_extent** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %33, i64 %36
  store %struct.ceph_file_extent* %37, %struct.ceph_file_extent** %8, align 8
  %38 = load %struct.ceph_file_extent*, %struct.ceph_file_extent** %8, align 8
  %39 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ceph_file_extent*, %struct.ceph_file_extent** %8, align 8
  %42 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i64, i64* %6, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.ceph_file_extent*, %struct.ceph_file_extent** %8, align 8
  %50 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.ceph_file_extent*, %struct.ceph_file_extent** %8, align 8
  %54 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %32
  br label %56

56:                                               ; preds = %55, %29
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
