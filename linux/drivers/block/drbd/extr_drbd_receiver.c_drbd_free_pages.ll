; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32 }
%struct.page = type { i32 }

@drbd_pp_vacant = common dso_local global i32 0, align 4
@DRBD_MAX_BIO_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@drbd_minor_count = common dso_local global i32 0, align 4
@drbd_pp_lock = common dso_local global i32 0, align 4
@drbd_pp_pool = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ASSERTION FAILED: %s: %d < 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"pp_in_use_by_net\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pp_in_use\00", align 1
@drbd_pp_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, %struct.page*, i32)* @drbd_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_free_pages(%struct.drbd_device* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %14 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %13, i32 0, i32 1
  br label %18

15:                                               ; preds = %3
  %16 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %17 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %16, i32 0, i32 0
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32* [ %14, %12 ], [ %17, %15 ]
  store i32* %19, i32** %7, align 8
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = icmp eq %struct.page* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %61

23:                                               ; preds = %18
  %24 = load i32, i32* @drbd_pp_vacant, align 4
  %25 = load i32, i32* @DRBD_MAX_BIO_SIZE, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i32, i32* @drbd_minor_count, align 4
  %29 = mul nsw i32 %27, %28
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i32 @page_chain_free(%struct.page* %32)
  store i32 %33, i32* %8, align 4
  br label %45

34:                                               ; preds = %23
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = call %struct.page* @page_chain_tail(%struct.page* %35, i32* %8)
  store %struct.page* %36, %struct.page** %9, align 8
  %37 = call i32 @spin_lock(i32* @drbd_pp_lock)
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = load %struct.page*, %struct.page** %9, align 8
  %40 = call i32 @page_chain_add(i32* @drbd_pp_pool, %struct.page* %38, %struct.page* %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @drbd_pp_vacant, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* @drbd_pp_vacant, align 4
  %44 = call i32 @spin_unlock(i32* @drbd_pp_lock)
  br label %45

45:                                               ; preds = %34, %31
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @atomic_sub_return(i32 %46, i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @drbd_warn(%struct.drbd_device* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %45
  %60 = call i32 @wake_up(i32* @drbd_pp_wait)
  br label %61

61:                                               ; preds = %59, %22
  ret void
}

declare dso_local i32 @page_chain_free(%struct.page*) #1

declare dso_local %struct.page* @page_chain_tail(%struct.page*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @page_chain_add(i32*, %struct.page*, %struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_sub_return(i32, i32*) #1

declare dso_local i32 @drbd_warn(%struct.drbd_device*, i8*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
