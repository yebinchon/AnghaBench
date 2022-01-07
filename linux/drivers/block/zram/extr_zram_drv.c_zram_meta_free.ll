; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_meta_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_meta_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zram*, i64)* @zram_meta_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zram_meta_free(%struct.zram* %0, i64 %1) #0 {
  %3 = alloca %struct.zram*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.zram* %0, %struct.zram** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @PAGE_SHIFT, align 8
  %9 = lshr i64 %7, %8
  store i64 %9, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %18, %2
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.zram*, %struct.zram** %3, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @zram_free_page(%struct.zram* %15, i64 %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %6, align 8
  br label %10

21:                                               ; preds = %10
  %22 = load %struct.zram*, %struct.zram** %3, align 8
  %23 = getelementptr inbounds %struct.zram, %struct.zram* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @zs_destroy_pool(i32 %24)
  %26 = load %struct.zram*, %struct.zram** %3, align 8
  %27 = getelementptr inbounds %struct.zram, %struct.zram* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vfree(i32 %28)
  ret void
}

declare dso_local i32 @zram_free_page(%struct.zram*, i64) #1

declare dso_local i32 @zs_destroy_pool(i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
