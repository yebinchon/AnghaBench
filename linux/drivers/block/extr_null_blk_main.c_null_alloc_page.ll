; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_page = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nullb_page* (i32)* @null_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nullb_page* @null_alloc_page(i32 %0) #0 {
  %2 = alloca %struct.nullb_page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nullb_page*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.nullb_page* @kmalloc(i32 8, i32 %5)
  store %struct.nullb_page* %6, %struct.nullb_page** %4, align 8
  %7 = load %struct.nullb_page*, %struct.nullb_page** %4, align 8
  %8 = icmp ne %struct.nullb_page* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @alloc_pages(i32 %11, i32 0)
  %13 = load %struct.nullb_page*, %struct.nullb_page** %4, align 8
  %14 = getelementptr inbounds %struct.nullb_page, %struct.nullb_page* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.nullb_page*, %struct.nullb_page** %4, align 8
  %16 = getelementptr inbounds %struct.nullb_page, %struct.nullb_page* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %26

20:                                               ; preds = %10
  %21 = load %struct.nullb_page*, %struct.nullb_page** %4, align 8
  %22 = getelementptr inbounds %struct.nullb_page, %struct.nullb_page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load %struct.nullb_page*, %struct.nullb_page** %4, align 8
  store %struct.nullb_page* %25, %struct.nullb_page** %2, align 8
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.nullb_page*, %struct.nullb_page** %4, align 8
  %28 = call i32 @kfree(%struct.nullb_page* %27)
  br label %29

29:                                               ; preds = %26, %9
  store %struct.nullb_page* null, %struct.nullb_page** %2, align 8
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.nullb_page*, %struct.nullb_page** %2, align 8
  ret %struct.nullb_page* %31
}

declare dso_local %struct.nullb_page* @kmalloc(i32, i32) #1

declare dso_local i32 @alloc_pages(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nullb_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
