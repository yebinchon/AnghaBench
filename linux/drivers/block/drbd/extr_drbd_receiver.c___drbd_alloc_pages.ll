; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c___drbd_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c___drbd_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.drbd_device = type { i32 }

@drbd_pp_vacant = common dso_local global i32 0, align 4
@drbd_pp_lock = common dso_local global i32 0, align 4
@drbd_pp_pool = common dso_local global i32 0, align 4
@GFP_TRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.drbd_device*, i32)* @__drbd_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__drbd_alloc_pages(%struct.drbd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.page* null, %struct.page** %6, align 8
  store %struct.page* null, %struct.page** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @drbd_pp_vacant, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = call i32 @spin_lock(i32* @drbd_pp_lock)
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.page* @page_chain_del(i32* @drbd_pp_pool, i32 %14)
  store %struct.page* %15, %struct.page** %6, align 8
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @drbd_pp_vacant, align 4
  %21 = sub i32 %20, %19
  store i32 %21, i32* @drbd_pp_vacant, align 4
  br label %22

22:                                               ; preds = %18, %12
  %23 = call i32 @spin_unlock(i32* @drbd_pp_lock)
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %27, %struct.page** %3, align 8
  br label %70

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %2
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, i32* @GFP_TRY, align 4
  %36 = call %struct.page* @alloc_page(i32 %35)
  store %struct.page* %36, %struct.page** %7, align 8
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = icmp ne %struct.page* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %49

40:                                               ; preds = %34
  %41 = load %struct.page*, %struct.page** %7, align 8
  %42 = load %struct.page*, %struct.page** %6, align 8
  %43 = ptrtoint %struct.page* %42 to i64
  %44 = call i32 @set_page_private(%struct.page* %41, i64 %43)
  %45 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %45, %struct.page** %6, align 8
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %30

49:                                               ; preds = %39, %30
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %54, %struct.page** %3, align 8
  br label %70

55:                                               ; preds = %49
  %56 = load %struct.page*, %struct.page** %6, align 8
  %57 = icmp ne %struct.page* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.page*, %struct.page** %6, align 8
  %60 = call %struct.page* @page_chain_tail(%struct.page* %59, i32* null)
  store %struct.page* %60, %struct.page** %7, align 8
  %61 = call i32 @spin_lock(i32* @drbd_pp_lock)
  %62 = load %struct.page*, %struct.page** %6, align 8
  %63 = load %struct.page*, %struct.page** %7, align 8
  %64 = call i32 @page_chain_add(i32* @drbd_pp_pool, %struct.page* %62, %struct.page* %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @drbd_pp_vacant, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* @drbd_pp_vacant, align 4
  %68 = call i32 @spin_unlock(i32* @drbd_pp_lock)
  br label %69

69:                                               ; preds = %58, %55
  store %struct.page* null, %struct.page** %3, align 8
  br label %70

70:                                               ; preds = %69, %53, %26
  %71 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %71
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.page* @page_chain_del(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local %struct.page* @page_chain_tail(%struct.page*, i32*) #1

declare dso_local i32 @page_chain_add(i32*, %struct.page*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
