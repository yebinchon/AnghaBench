; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_md_last_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_md_last_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_backing_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@MD_4kB_SECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_backing_dev*)* @drbd_md_last_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_md_last_sector(%struct.drbd_backing_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_backing_dev*, align 8
  store %struct.drbd_backing_dev* %0, %struct.drbd_backing_dev** %3, align 8
  %4 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %3, align 8
  %5 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %18 [
    i32 128, label %8
    i32 129, label %8
    i32 130, label %17
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %3, align 8
  %10 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MD_4kB_SECT, align 8
  %14 = add nsw i64 %12, %13
  %15 = sub nsw i64 %14, 1
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %17
  %19 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %3, align 8
  %20 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %3, align 8
  %24 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %22, %26
  %28 = sub nsw i64 %27, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %18, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
