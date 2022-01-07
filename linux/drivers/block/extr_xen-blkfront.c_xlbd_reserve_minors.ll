; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_xlbd_reserve_minors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_xlbd_reserve_minors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_minors = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@minor_lock = common dso_local global i32 0, align 4
@minors = common dso_local global i64* null, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @xlbd_reserve_minors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlbd_reserve_minors(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @nr_minors, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BITS_TO_LONGS(i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i64* @kcalloc(i32 %18, i32 8, i32 %19)
  store i64* %20, i64** %8, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %71

26:                                               ; preds = %16
  %27 = call i32 @spin_lock(i32* @minor_lock)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @nr_minors, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i64*, i64** @minors, align 8
  store i64* %32, i64** %9, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i64*, i64** @minors, align 8
  %35 = load i32, i32* @nr_minors, align 4
  %36 = call i32 @BITS_TO_LONGS(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(i64* %33, i64* %34, i32 %39)
  %41 = load i64*, i64** %8, align 8
  store i64* %41, i64** @minors, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @BITS_TO_LONGS(i32 %42)
  %44 = load i32, i32* @BITS_PER_LONG, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* @nr_minors, align 4
  br label %48

46:                                               ; preds = %26
  %47 = load i64*, i64** %8, align 8
  store i64* %47, i64** %9, align 8
  br label %48

48:                                               ; preds = %46, %31
  %49 = call i32 @spin_unlock(i32* @minor_lock)
  %50 = load i64*, i64** %9, align 8
  %51 = call i32 @kfree(i64* %50)
  br label %52

52:                                               ; preds = %48, %2
  %53 = call i32 @spin_lock(i32* @minor_lock)
  %54 = load i64*, i64** @minors, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @find_next_bit(i64* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i64*, i64** @minors, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @bitmap_set(i64* %61, i32 %62, i32 %63)
  store i32 0, i32* %7, align 4
  br label %68

65:                                               ; preds = %52
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = call i32 @spin_unlock(i32* @minor_lock)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @bitmap_set(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
