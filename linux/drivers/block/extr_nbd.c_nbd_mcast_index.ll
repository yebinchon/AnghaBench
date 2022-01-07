; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_mcast_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_mcast_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nbd_genl_family = common dso_local global i32 0, align 4
@NBD_CMD_LINK_DEAD = common dso_local global i32 0, align 4
@NBD_ATTR_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nbd_mcast_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbd_mcast_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 @nla_total_size(i32 4)
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.sk_buff* @genlmsg_new(i32 %6, i32 %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = load i32, i32* @NBD_CMD_LINK_DEAD, align 4
  %15 = call i8* @genlmsg_put(%struct.sk_buff* %13, i32 0, i32 0, i32* @nbd_genl_family, i32 0, i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call i32 @nlmsg_free(%struct.sk_buff* %19)
  br label %38

21:                                               ; preds = %12
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = load i32, i32* @NBD_ATTR_INDEX, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @nla_put_u32(%struct.sk_buff* %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @nlmsg_free(%struct.sk_buff* %29)
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @genlmsg_end(%struct.sk_buff* %32, i8* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @genlmsg_multicast(i32* @nbd_genl_family, %struct.sk_buff* %35, i32 0, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %31, %28, %18, %11
  ret void
}

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(i32*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
