; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ibm.c_cchhb2blk.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ibm.c_cchhb2blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtoc_cchhb = type { i32, i32, i32 }
%struct.hd_geometry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtoc_cchhb*, %struct.hd_geometry*)* @cchhb2blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cchhb2blk(%struct.vtoc_cchhb* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.vtoc_cchhb*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vtoc_cchhb* %0, %struct.vtoc_cchhb** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %7 = load %struct.vtoc_cchhb*, %struct.vtoc_cchhb** %3, align 8
  %8 = getelementptr inbounds %struct.vtoc_cchhb, %struct.vtoc_cchhb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 65520
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 12
  store i32 %12, i32* %5, align 4
  %13 = load %struct.vtoc_cchhb*, %struct.vtoc_cchhb** %3, align 8
  %14 = getelementptr inbounds %struct.vtoc_cchhb, %struct.vtoc_cchhb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.vtoc_cchhb*, %struct.vtoc_cchhb** %3, align 8
  %19 = getelementptr inbounds %struct.vtoc_cchhb, %struct.vtoc_cchhb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %24 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %28 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %33 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = add nsw i32 %30, %35
  %37 = load %struct.vtoc_cchhb*, %struct.vtoc_cchhb** %3, align 8
  %38 = getelementptr inbounds %struct.vtoc_cchhb, %struct.vtoc_cchhb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
