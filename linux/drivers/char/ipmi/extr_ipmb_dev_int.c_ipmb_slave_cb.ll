; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmb_dev_int.c_ipmb_slave_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmb_dev_int.c_ipmb_slave_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ipmb_dev = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*)* @ipmb_slave_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmb_slave_cb(%struct.i2c_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ipmb_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.ipmb_dev* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.ipmb_dev* %11, %struct.ipmb_dev** %7, align 8
  %12 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %13 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %12, i32 0, i32 2
  %14 = bitcast %struct.TYPE_2__* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %16 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %69 [
    i32 128, label %20
    i32 129, label %36
    i32 130, label %51
  ]

20:                                               ; preds = %3
  %21 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %22 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %21, i32 0, i32 2
  %23 = call i32 @memset(%struct.TYPE_2__* %22, i32 0, i32 8)
  %24 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %25 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @GET_8BIT_ADDR(i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %32 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32 %29, i32* %35, align 4
  br label %70

36:                                               ; preds = %3
  %37 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %38 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %39, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %70

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %47 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32 %44, i32* %50, align 4
  br label %70

51:                                               ; preds = %3
  %52 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %53 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %56 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @GET_8BIT_ADDR(i32 %61)
  %63 = call i32 @is_ipmb_request(%struct.ipmb_dev* %58, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %67 = call i32 @ipmb_handle_request(%struct.ipmb_dev* %66)
  br label %68

68:                                               ; preds = %65, %51
  br label %70

69:                                               ; preds = %3
  br label %70

70:                                               ; preds = %69, %68, %42, %41, %20
  %71 = load %struct.ipmb_dev*, %struct.ipmb_dev** %7, align 8
  %72 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %71, i32 0, i32 1
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  ret i32 0
}

declare dso_local %struct.ipmb_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @GET_8BIT_ADDR(i32) #1

declare dso_local i32 @is_ipmb_request(%struct.ipmb_dev*, i32) #1

declare dso_local i32 @ipmb_handle_request(%struct.ipmb_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
