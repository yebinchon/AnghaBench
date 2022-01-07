; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_count_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_count_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_bitmap = type { i64, i32 }

@BITS_PER_LONG_MASK = common dso_local global i64 0, align 8
@BITS_PER_PAGE = common dso_local global i32 0, align 4
@BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@LN2_BPL = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drbd_bitmap*)* @bm_count_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bm_count_bits(%struct.drbd_bitmap* %0) #0 {
  %2 = alloca %struct.drbd_bitmap*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drbd_bitmap* %0, %struct.drbd_bitmap** %2, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BITS_PER_LONG_MASK, align 8
  %12 = and i64 %10, %11
  %13 = shl i64 1, %12
  %14 = sub i64 %13, 1
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %34, %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %18 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64* @__bm_map_pidx(%struct.drbd_bitmap* %23, i32 %24)
  store i64* %25, i64** %3, align 8
  %26 = load i64*, i64** %3, align 8
  %27 = load i32, i32* @BITS_PER_PAGE, align 4
  %28 = call i64 @bitmap_weight(i64* %26, i32 %27)
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %4, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = call i32 @__bm_unmap(i64* %31)
  %33 = call i32 (...) @cond_resched()
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %39 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, 1
  %42 = load i32, i32* @BITS_PER_PAGE_MASK, align 4
  %43 = sext i32 %42 to i64
  %44 = and i64 %41, %43
  %45 = load i32, i32* @LN2_BPL, align 4
  %46 = zext i32 %45 to i64
  %47 = lshr i64 %44, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64* @__bm_map_pidx(%struct.drbd_bitmap* %49, i32 %50)
  store i64* %51, i64** %3, align 8
  %52 = load i64*, i64** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @BITS_PER_LONG, align 4
  %55 = mul nsw i32 %53, %54
  %56 = call i64 @bitmap_weight(i64* %52, i32 %55)
  %57 = load i64, i64* %4, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @cpu_to_lel(i64 %59)
  %61 = load i64*, i64** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = and i64 %65, %60
  store i64 %66, i64* %64, align 8
  %67 = load i64*, i64** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @hweight_long(i64 %71)
  %73 = load i64, i64* %4, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %4, align 8
  %75 = load i32, i32* @BITS_PER_LONG, align 4
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %87

77:                                               ; preds = %37
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i64*, i64** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %81, %77, %37
  %88 = load i64*, i64** %3, align 8
  %89 = call i32 @__bm_unmap(i64* %88)
  %90 = load i64, i64* %4, align 8
  ret i64 %90
}

declare dso_local i64* @__bm_map_pidx(%struct.drbd_bitmap*, i32) #1

declare dso_local i64 @bitmap_weight(i64*, i32) #1

declare dso_local i32 @__bm_unmap(i64*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @cpu_to_lel(i64) #1

declare dso_local i64 @hweight_long(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
