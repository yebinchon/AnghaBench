; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_island_bitmap_new.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_island_bitmap_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.island_bitmap = type { i32 }

@island_bitmap_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.island_bitmap* (%struct.island_bitmap*)* @island_bitmap_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.island_bitmap* @island_bitmap_new(%struct.island_bitmap* %0) #0 {
  %2 = alloca %struct.island_bitmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.island_bitmap*, align 8
  store %struct.island_bitmap* %0, %struct.island_bitmap** %2, align 8
  %5 = load i32, i32* @island_bitmap_size, align 4
  %6 = mul nsw i32 %5, 4
  %7 = sext i32 %6 to i64
  %8 = add i64 4, %7
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call %struct.island_bitmap* @xcalloc(i32 1, i64 %9)
  store %struct.island_bitmap* %10, %struct.island_bitmap** %4, align 8
  %11 = load %struct.island_bitmap*, %struct.island_bitmap** %2, align 8
  %12 = icmp ne %struct.island_bitmap* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.island_bitmap*, %struct.island_bitmap** %4, align 8
  %15 = load %struct.island_bitmap*, %struct.island_bitmap** %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @memcpy(%struct.island_bitmap* %14, %struct.island_bitmap* %15, i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.island_bitmap*, %struct.island_bitmap** %4, align 8
  %20 = getelementptr inbounds %struct.island_bitmap, %struct.island_bitmap* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.island_bitmap*, %struct.island_bitmap** %4, align 8
  ret %struct.island_bitmap* %21
}

declare dso_local %struct.island_bitmap* @xcalloc(i32, i64) #1

declare dso_local i32 @memcpy(%struct.island_bitmap*, %struct.island_bitmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
