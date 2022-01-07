; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_is_stopped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_is_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32 }
%struct.request = type { i32 }

@MTIP_DDF_STOP_IO = common dso_local global i32 0, align 4
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@MTIP_DDF_OVER_TEMP_BIT = common dso_local global i32 0, align 4
@MTIP_DDF_WRITE_PROTECT_BIT = common dso_local global i32 0, align 4
@MTIP_DDF_SEC_LOCK_BIT = common dso_local global i32 0, align 4
@MTIP_DDF_REBUILD_FAILED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*, %struct.request*)* @is_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_stopped(%struct.driver_data* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.driver_data*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %6 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %7 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MTIP_DDF_STOP_IO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

17:                                               ; preds = %2
  %18 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %19 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %20 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %57

24:                                               ; preds = %17
  %25 = load i32, i32* @MTIP_DDF_OVER_TEMP_BIT, align 4
  %26 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %27 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %57

31:                                               ; preds = %24
  %32 = load i32, i32* @MTIP_DDF_WRITE_PROTECT_BIT, align 4
  %33 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %34 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.request*, %struct.request** %5, align 8
  %39 = call i64 @rq_data_dir(%struct.request* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %57

42:                                               ; preds = %37, %31
  %43 = load i32, i32* @MTIP_DDF_SEC_LOCK_BIT, align 4
  %44 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %45 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %44, i32 0, i32 0
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %57

49:                                               ; preds = %42
  %50 = load i32, i32* @MTIP_DDF_REBUILD_FAILED_BIT, align 4
  %51 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %52 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %51, i32 0, i32 0
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %48, %41, %30, %23, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
