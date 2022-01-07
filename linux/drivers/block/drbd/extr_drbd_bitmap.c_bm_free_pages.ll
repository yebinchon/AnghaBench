; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"bm_free_pages tried to free a NULL pointer; i=%lu n=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i64)* @bm_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bm_free_pages(%struct.page** %0, i64 %1) #0 {
  %3 = alloca %struct.page**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.page** %0, %struct.page*** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.page**, %struct.page*** %3, align 8
  %7 = icmp ne %struct.page** %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %36

9:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %33, %9
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.page**, %struct.page*** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 %16
  %18 = load %struct.page*, %struct.page** %17, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @pr_alert(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  br label %33

24:                                               ; preds = %14
  %25 = load %struct.page**, %struct.page*** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %26
  %28 = load %struct.page*, %struct.page** %27, align 8
  %29 = call i32 @__free_page(%struct.page* %28)
  %30 = load %struct.page**, %struct.page*** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.page*, %struct.page** %30, i64 %31
  store %struct.page* null, %struct.page** %32, align 8
  br label %33

33:                                               ; preds = %24, %20
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %10

36:                                               ; preds = %8, %10
  ret void
}

declare dso_local i32 @pr_alert(i8*, i64, i64) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
