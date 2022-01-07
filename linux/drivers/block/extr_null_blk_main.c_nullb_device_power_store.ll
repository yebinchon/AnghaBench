; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_nullb_device_power_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_nullb_device_power_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nullb_device = type { i32, i32, i32 }

@NULLB_DEV_FL_UP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@NULLB_DEV_FL_CONFIGURED = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @nullb_device_power_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nullb_device_power_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nullb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.nullb_device* @to_nullb_device(%struct.config_item* %11)
  store %struct.nullb_device* %12, %struct.nullb_device** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @nullb_device_bool_attr_store(i32* %9, i8* %13, i64 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %4, align 8
  br label %87

20:                                               ; preds = %3
  %21 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %22 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  %29 = load i32, i32* @NULLB_DEV_FL_UP, align 4
  %30 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %31 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %30, i32 0, i32 1
  %32 = call i64 @test_and_set_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %4, align 8
  br label %87

36:                                               ; preds = %28
  %37 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %38 = call i64 @null_add_dev(%struct.nullb_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* @NULLB_DEV_FL_UP, align 4
  %42 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %43 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %42, i32 0, i32 1
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  %45 = load i64, i64* @ENOMEM, align 8
  %46 = sub nsw i64 0, %45
  store i64 %46, i64* %4, align 8
  br label %87

47:                                               ; preds = %36
  %48 = load i32, i32* @NULLB_DEV_FL_CONFIGURED, align 4
  %49 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %50 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %49, i32 0, i32 1
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %54 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %85

55:                                               ; preds = %25, %20
  %56 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %57 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @NULLB_DEV_FL_UP, align 4
  %65 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %66 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %65, i32 0, i32 1
  %67 = call i64 @test_and_clear_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = call i32 @mutex_lock(i32* @lock)
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %73 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %75 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @null_del_dev(i32 %76)
  %78 = call i32 @mutex_unlock(i32* @lock)
  br label %79

79:                                               ; preds = %69, %63
  %80 = load i32, i32* @NULLB_DEV_FL_CONFIGURED, align 4
  %81 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %82 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %81, i32 0, i32 1
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %60, %55
  br label %85

85:                                               ; preds = %84, %47
  %86 = load i64, i64* %7, align 8
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %85, %40, %34, %18
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local %struct.nullb_device* @to_nullb_device(%struct.config_item*) #1

declare dso_local i64 @nullb_device_bool_attr_store(i32*, i8*, i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @null_add_dev(%struct.nullb_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @null_del_dev(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
