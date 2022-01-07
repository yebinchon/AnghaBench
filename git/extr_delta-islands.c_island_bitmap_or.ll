; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_island_bitmap_or.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_island_bitmap_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.island_bitmap = type { i32* }

@island_bitmap_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.island_bitmap*, %struct.island_bitmap*)* @island_bitmap_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @island_bitmap_or(%struct.island_bitmap* %0, %struct.island_bitmap* %1) #0 {
  %3 = alloca %struct.island_bitmap*, align 8
  %4 = alloca %struct.island_bitmap*, align 8
  %5 = alloca i64, align 8
  store %struct.island_bitmap* %0, %struct.island_bitmap** %3, align 8
  store %struct.island_bitmap* %1, %struct.island_bitmap** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @island_bitmap_size, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.island_bitmap*, %struct.island_bitmap** %4, align 8
  %12 = getelementptr inbounds %struct.island_bitmap, %struct.island_bitmap* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.island_bitmap*, %struct.island_bitmap** %3, align 8
  %18 = getelementptr inbounds %struct.island_bitmap, %struct.island_bitmap* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %16
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %10
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %6

27:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
