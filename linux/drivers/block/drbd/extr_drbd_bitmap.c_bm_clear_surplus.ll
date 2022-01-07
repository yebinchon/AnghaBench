; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_clear_surplus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_clear_surplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_bitmap = type { i32, i64 }

@BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@BITS_PER_LONG_MASK = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_bitmap*)* @bm_clear_surplus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bm_clear_surplus(%struct.drbd_bitmap* %0) #0 {
  %2 = alloca %struct.drbd_bitmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drbd_bitmap* %0, %struct.drbd_bitmap** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BITS_PER_PAGE_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BITS_PER_LONG_MASK, align 4
  %15 = and i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = shl i64 1, %16
  %18 = sub i64 %17, 1
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @cpu_to_lel(i64 %19)
  store i64 %20, i64* %3, align 8
  %21 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %22 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %2, align 8
  %23 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i64* @bm_map_pidx(%struct.drbd_bitmap* %21, i64 %25)
  store i64* %26, i64** %4, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @BITS_PER_LONG, align 4
  %30 = sdiv i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %27, i64 %31
  store i64* %32, i64** %5, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %1
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = xor i64 %38, -1
  %40 = and i64 %37, %39
  %41 = call i32 @hweight_long(i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i64, i64* %3, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %44, %42
  store i64 %45, i64* %43, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %5, align 8
  br label %48

48:                                               ; preds = %35, %1
  %49 = load i32, i32* @BITS_PER_LONG, align 4
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i64*, i64** %5, align 8
  %53 = load i64*, i64** %4, align 8
  %54 = ptrtoint i64* %52 to i64
  %55 = ptrtoint i64* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 8
  %58 = and i64 %57, 1
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @hweight_long(i64 %62)
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i64*, i64** %5, align 8
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %51, %48
  %68 = load i64*, i64** %4, align 8
  %69 = call i32 @bm_unmap(i64* %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i64 @cpu_to_lel(i64) #1

declare dso_local i64* @bm_map_pidx(%struct.drbd_bitmap*, i64) #1

declare dso_local i32 @hweight_long(i64) #1

declare dso_local i32 @bm_unmap(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
