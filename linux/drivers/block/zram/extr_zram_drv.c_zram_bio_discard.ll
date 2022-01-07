; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_bio_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_bio_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zram*, i32, i32, %struct.bio*)* @zram_bio_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zram_bio_discard(%struct.zram* %0, i32 %1, i32 %2, %struct.bio* %3) #0 {
  %5 = alloca %struct.zram*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i64, align 8
  store %struct.zram* %0, %struct.zram** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.bio* %3, %struct.bio** %8, align 8
  %10 = load %struct.bio*, %struct.bio** %8, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = icmp ule i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %59

24:                                               ; preds = %16
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %9, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %24, %4
  br label %34

34:                                               ; preds = %39, %33
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp uge i64 %35, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.zram*, %struct.zram** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @zram_slot_lock(%struct.zram* %40, i32 %41)
  %43 = load %struct.zram*, %struct.zram** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @zram_free_page(%struct.zram* %43, i32 %44)
  %46 = load %struct.zram*, %struct.zram** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @zram_slot_unlock(%struct.zram* %46, i32 %47)
  %49 = load %struct.zram*, %struct.zram** %5, align 8
  %50 = getelementptr inbounds %struct.zram, %struct.zram* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @atomic64_inc(i32* %51)
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %9, align 8
  br label %34

59:                                               ; preds = %23, %34
  ret void
}

declare dso_local i32 @zram_slot_lock(%struct.zram*, i32) #1

declare dso_local i32 @zram_free_page(%struct.zram*, i32) #1

declare dso_local i32 @zram_slot_unlock(%struct.zram*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
