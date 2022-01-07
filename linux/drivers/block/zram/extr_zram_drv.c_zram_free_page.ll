; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ZRAM_IDLE = common dso_local global i32 0, align 4
@ZRAM_HUGE = common dso_local global i32 0, align 4
@ZRAM_WB = common dso_local global i32 0, align 4
@ZRAM_SAME = common dso_local global i32 0, align 4
@ZRAM_LOCK = common dso_local global i64 0, align 8
@ZRAM_UNDER_WB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zram*, i64)* @zram_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zram_free_page(%struct.zram* %0, i64 %1) #0 {
  %3 = alloca %struct.zram*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.zram* %0, %struct.zram** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.zram*, %struct.zram** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i32, i32* @ZRAM_IDLE, align 4
  %9 = call i64 @zram_test_flag(%struct.zram* %6, i64 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.zram*, %struct.zram** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @ZRAM_IDLE, align 4
  %15 = call i32 @zram_clear_flag(%struct.zram* %12, i64 %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.zram*, %struct.zram** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @ZRAM_HUGE, align 4
  %20 = call i64 @zram_test_flag(%struct.zram* %17, i64 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.zram*, %struct.zram** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @ZRAM_HUGE, align 4
  %26 = call i32 @zram_clear_flag(%struct.zram* %23, i64 %24, i32 %25)
  %27 = load %struct.zram*, %struct.zram** %3, align 8
  %28 = getelementptr inbounds %struct.zram, %struct.zram* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = call i32 @atomic64_dec(i32* %29)
  br label %31

31:                                               ; preds = %22, %16
  %32 = load %struct.zram*, %struct.zram** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @ZRAM_WB, align 4
  %35 = call i64 @zram_test_flag(%struct.zram* %32, i64 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.zram*, %struct.zram** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @ZRAM_WB, align 4
  %41 = call i32 @zram_clear_flag(%struct.zram* %38, i64 %39, i32 %40)
  %42 = load %struct.zram*, %struct.zram** %3, align 8
  %43 = load %struct.zram*, %struct.zram** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @zram_get_element(%struct.zram* %43, i64 %44)
  %46 = call i32 @free_block_bdev(%struct.zram* %42, i32 %45)
  br label %82

47:                                               ; preds = %31
  %48 = load %struct.zram*, %struct.zram** %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i32, i32* @ZRAM_SAME, align 4
  %51 = call i64 @zram_test_flag(%struct.zram* %48, i64 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.zram*, %struct.zram** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* @ZRAM_SAME, align 4
  %57 = call i32 @zram_clear_flag(%struct.zram* %54, i64 %55, i32 %56)
  %58 = load %struct.zram*, %struct.zram** %3, align 8
  %59 = getelementptr inbounds %struct.zram, %struct.zram* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = call i32 @atomic64_dec(i32* %60)
  br label %82

62:                                               ; preds = %47
  %63 = load %struct.zram*, %struct.zram** %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @zram_get_handle(%struct.zram* %63, i64 %64)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %108

69:                                               ; preds = %62
  %70 = load %struct.zram*, %struct.zram** %3, align 8
  %71 = getelementptr inbounds %struct.zram, %struct.zram* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @zs_free(i32 %72, i64 %73)
  %75 = load %struct.zram*, %struct.zram** %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @zram_get_obj_size(%struct.zram* %75, i64 %76)
  %78 = load %struct.zram*, %struct.zram** %3, align 8
  %79 = getelementptr inbounds %struct.zram, %struct.zram* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = call i32 @atomic64_sub(i32 %77, i32* %80)
  br label %82

82:                                               ; preds = %69, %53, %37
  %83 = load %struct.zram*, %struct.zram** %3, align 8
  %84 = getelementptr inbounds %struct.zram, %struct.zram* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 @atomic64_dec(i32* %85)
  %87 = load %struct.zram*, %struct.zram** %3, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @zram_set_handle(%struct.zram* %87, i64 %88, i32 0)
  %90 = load %struct.zram*, %struct.zram** %3, align 8
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @zram_set_obj_size(%struct.zram* %90, i64 %91, i32 0)
  %93 = load %struct.zram*, %struct.zram** %3, align 8
  %94 = getelementptr inbounds %struct.zram, %struct.zram* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ZRAM_LOCK, align 8
  %101 = shl i64 1, %100
  %102 = load i64, i64* @ZRAM_UNDER_WB, align 8
  %103 = shl i64 1, %102
  %104 = or i64 %101, %103
  %105 = xor i64 %104, -1
  %106 = and i64 %99, %105
  %107 = call i32 @WARN_ON_ONCE(i64 %106)
  br label %108

108:                                              ; preds = %82, %68
  ret void
}

declare dso_local i64 @zram_test_flag(%struct.zram*, i64, i32) #1

declare dso_local i32 @zram_clear_flag(%struct.zram*, i64, i32) #1

declare dso_local i32 @atomic64_dec(i32*) #1

declare dso_local i32 @free_block_bdev(%struct.zram*, i32) #1

declare dso_local i32 @zram_get_element(%struct.zram*, i64) #1

declare dso_local i64 @zram_get_handle(%struct.zram*, i64) #1

declare dso_local i32 @zs_free(i32, i64) #1

declare dso_local i32 @atomic64_sub(i32, i32*) #1

declare dso_local i32 @zram_get_obj_size(%struct.zram*, i64) #1

declare dso_local i32 @zram_set_handle(%struct.zram*, i64, i32) #1

declare dso_local i32 @zram_set_obj_size(%struct.zram*, i64, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
