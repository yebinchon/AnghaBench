; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_page = type { i32, i32 }

@NULLB_PAGE_FREE = common dso_local global i32 0, align 4
@NULLB_PAGE_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nullb_page*)* @null_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @null_free_page(%struct.nullb_page* %0) #0 {
  %2 = alloca %struct.nullb_page*, align 8
  store %struct.nullb_page* %0, %struct.nullb_page** %2, align 8
  %3 = load i32, i32* @NULLB_PAGE_FREE, align 4
  %4 = load %struct.nullb_page*, %struct.nullb_page** %2, align 8
  %5 = getelementptr inbounds %struct.nullb_page, %struct.nullb_page* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @__set_bit(i32 %3, i32 %6)
  %8 = load i32, i32* @NULLB_PAGE_LOCK, align 4
  %9 = load %struct.nullb_page*, %struct.nullb_page** %2, align 8
  %10 = getelementptr inbounds %struct.nullb_page, %struct.nullb_page* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @test_bit(i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.nullb_page*, %struct.nullb_page** %2, align 8
  %17 = getelementptr inbounds %struct.nullb_page, %struct.nullb_page* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__free_page(i32 %18)
  %20 = load %struct.nullb_page*, %struct.nullb_page** %2, align 8
  %21 = call i32 @kfree(%struct.nullb_page* %20)
  br label %22

22:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @kfree(%struct.nullb_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
