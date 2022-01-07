; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_md_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_md_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_backing_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@DRBD_MD_INDEX_FLEX_EXT = common dso_local global i32 0, align 4
@DRBD_MD_INDEX_INTERNAL = common dso_local global i32 0, align 4
@DRBD_MD_INDEX_FLEX_INT = common dso_local global i32 0, align 4
@MD_128MB_SECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drbd_backing_dev*)* @drbd_md_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @drbd_md_ss(%struct.drbd_backing_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.drbd_backing_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.drbd_backing_dev* %0, %struct.drbd_backing_dev** %3, align 8
  %5 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %3, align 8
  %6 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DRBD_MD_INDEX_FLEX_EXT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DRBD_MD_INDEX_INTERNAL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DRBD_MD_INDEX_FLEX_INT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17, %13
  %22 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %3, align 8
  %23 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @drbd_get_capacity(i32 %24)
  %26 = and i64 %25, -8
  %27 = sub i64 %26, 8
  store i64 %27, i64* %2, align 8
  br label %36

28:                                               ; preds = %17
  %29 = load i64, i64* @MD_128MB_SECT, align 8
  %30 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %3, align 8
  %31 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %29, %34
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %28, %21, %12
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i64 @drbd_get_capacity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
