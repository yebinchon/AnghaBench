; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_brd.c_brd_lookup_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_brd.c_brd_lookup_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.brd_device = type { i32 }

@PAGE_SECTORS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.brd_device*, i32)* @brd_lookup_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @brd_lookup_page(%struct.brd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.brd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.brd_device* %0, %struct.brd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PAGE_SECTORS_SHIFT, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.brd_device*, %struct.brd_device** %3, align 8
  %12 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.page* @radix_tree_lookup(i32* %12, i32 %13)
  store %struct.page* %14, %struct.page** %6, align 8
  %15 = call i32 (...) @rcu_read_unlock()
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i1 [ false, %2 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %28
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.page* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
