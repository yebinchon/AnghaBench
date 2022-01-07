; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_page_chain_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_page_chain_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.page**, i32)* @page_chain_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @page_chain_del(%struct.page** %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.page** %0, %struct.page*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.page**, %struct.page*** %4, align 8
  %14 = icmp ne %struct.page** %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.page**, %struct.page*** %4, align 8
  %19 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %19, %struct.page** %6, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %struct.page* null, %struct.page** %3, align 8
  br label %48

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %38, %23
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = icmp ne %struct.page* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call %struct.page* @page_chain_next(%struct.page* %28)
  store %struct.page* %29, %struct.page** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %40

34:                                               ; preds = %27
  %35 = load %struct.page*, %struct.page** %7, align 8
  %36 = icmp eq %struct.page* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store %struct.page* null, %struct.page** %3, align 8
  br label %48

38:                                               ; preds = %34
  %39 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %39, %struct.page** %6, align 8
  br label %24

40:                                               ; preds = %33, %24
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = call i32 @set_page_private(%struct.page* %41, i32 0)
  %43 = load %struct.page**, %struct.page*** %4, align 8
  %44 = load %struct.page*, %struct.page** %43, align 8
  store %struct.page* %44, %struct.page** %6, align 8
  %45 = load %struct.page*, %struct.page** %7, align 8
  %46 = load %struct.page**, %struct.page*** %4, align 8
  store %struct.page* %45, %struct.page** %46, align 8
  %47 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %47, %struct.page** %3, align 8
  br label %48

48:                                               ; preds = %40, %37, %22
  %49 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %49
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @page_chain_next(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
