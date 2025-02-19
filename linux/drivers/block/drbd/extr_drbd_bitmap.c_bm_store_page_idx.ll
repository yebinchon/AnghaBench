; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_store_page_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_store_page_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@BM_PAGE_IDX_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64)* @bm_store_page_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bm_store_page_idx(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BM_PAGE_IDX_MASK, align 8
  %7 = xor i64 %6, -1
  %8 = and i64 %5, %7
  %9 = icmp ne i64 0, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @set_page_private(%struct.page* %12, i64 %13)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
