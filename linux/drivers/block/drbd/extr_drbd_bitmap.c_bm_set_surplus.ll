; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_set_surplus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_set_surplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_bitmap = type { i32, i64 }

@BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@BITS_PER_LONG_MASK = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_bitmap*)* @bm_set_surplus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bm_set_surplus(%struct.drbd_bitmap* %0) #0 {
  %2 = alloca %struct.drbd_bitmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.drbd_bitmap* %0, %struct.drbd_bitmap** %2, align 8
  %7 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %8 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BITS_PER_PAGE_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BITS_PER_LONG_MASK, align 4
  %14 = and i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = sub i64 %16, 1
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @cpu_to_lel(i64 %18)
  store i64 %19, i64* %3, align 8
  %20 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %21 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %22 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 1
  %25 = call i64* @bm_map_pidx(%struct.drbd_bitmap* %20, i64 %24)
  store i64* %25, i64** %4, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @BITS_PER_LONG, align 4
  %29 = sdiv i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %26, i64 %30
  store i64* %31, i64** %5, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load i64, i64* %3, align 8
  %36 = xor i64 %35, -1
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = or i64 %38, %36
  store i64 %39, i64* %37, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %41, i64** %5, align 8
  br label %42

42:                                               ; preds = %34, %1
  %43 = load i32, i32* @BITS_PER_LONG, align 4
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i64*, i64** %5, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = ptrtoint i64* %46 to i64
  %49 = ptrtoint i64* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = and i64 %51, 1
  %53 = icmp eq i64 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i64*, i64** %5, align 8
  store i64 -1, i64* %55, align 8
  br label %56

56:                                               ; preds = %54, %45, %42
  %57 = load i64*, i64** %4, align 8
  %58 = call i32 @bm_unmap(i64* %57)
  ret void
}

declare dso_local i64 @cpu_to_lel(i64) #1

declare dso_local i64* @bm_map_pidx(%struct.drbd_bitmap*, i64) #1

declare dso_local i32 @bm_unmap(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
