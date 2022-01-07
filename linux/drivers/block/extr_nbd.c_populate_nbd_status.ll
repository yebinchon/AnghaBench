; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_populate_nbd_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_populate_nbd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NBD_DEVICE_ITEM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NBD_DEVICE_INDEX = common dso_local global i32 0, align 4
@NBD_DEVICE_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_device*, %struct.sk_buff*)* @populate_nbd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_nbd_status(%struct.nbd_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbd_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nbd_device* %0, %struct.nbd_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %10 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %9, i32 0, i32 1
  %11 = call i64 @refcount_read(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i32, i32* @NBD_DEVICE_ITEM, align 4
  %17 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %15, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %6, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @EMSGSIZE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %14
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @NBD_DEVICE_INDEX, align 4
  %26 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %27 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nla_put_u32(%struct.sk_buff* %24, i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %23
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* @NBD_DEVICE_CONNECTED, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @nla_put_u8(%struct.sk_buff* %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EMSGSIZE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %48 = call i32 @nla_nest_end(%struct.sk_buff* %46, %struct.nlattr* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %42, %32, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
