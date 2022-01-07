; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_brd.c_brd_insert_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_brd.c_brd_insert_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.brd_device = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_SECTORS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.brd_device*, i32)* @brd_insert_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @brd_insert_page(%struct.brd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.brd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.brd_device* %0, %struct.brd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.page* @brd_lookup_page(%struct.brd_device* %9, i32 %10)
  store %struct.page* %11, %struct.page** %7, align 8
  %12 = load %struct.page*, %struct.page** %7, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %15, %struct.page** %3, align 8
  br label %75

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @__GFP_HIGHMEM, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.page* @alloc_page(i32 %22)
  store %struct.page* %23, %struct.page** %7, align 8
  %24 = load %struct.page*, %struct.page** %7, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store %struct.page* null, %struct.page** %3, align 8
  br label %75

27:                                               ; preds = %16
  %28 = load i32, i32* @GFP_NOIO, align 4
  %29 = call i64 @radix_tree_preload(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = call i32 @__free_page(%struct.page* %32)
  store %struct.page* null, %struct.page** %3, align 8
  br label %75

34:                                               ; preds = %27
  %35 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %36 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PAGE_SECTORS_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %45 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %44, i32 0, i32 1
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.page*, %struct.page** %7, align 8
  %48 = call i64 @radix_tree_insert(i32* %45, i32 %46, %struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %34
  %51 = load %struct.page*, %struct.page** %7, align 8
  %52 = call i32 @__free_page(%struct.page* %51)
  %53 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %54 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %53, i32 0, i32 1
  %55 = load i32, i32* %6, align 4
  %56 = call %struct.page* @radix_tree_lookup(i32* %54, i32 %55)
  store %struct.page* %56, %struct.page** %7, align 8
  %57 = load %struct.page*, %struct.page** %7, align 8
  %58 = icmp ne %struct.page* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = getelementptr inbounds %struct.page, %struct.page* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  br label %69

69:                                               ; preds = %50, %34
  %70 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %71 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = call i32 (...) @radix_tree_preload_end()
  %74 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %74, %struct.page** %3, align 8
  br label %75

75:                                               ; preds = %69, %31, %26, %14
  %76 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %76
}

declare dso_local %struct.page* @brd_lookup_page(%struct.brd_device*, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @radix_tree_preload(i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @radix_tree_insert(i32*, i32, %struct.page*) #1

declare dso_local %struct.page* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
