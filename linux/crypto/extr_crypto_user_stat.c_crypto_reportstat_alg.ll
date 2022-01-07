; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_user_stat.c_crypto_reportstat_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_user_stat.c_crypto_reportstat_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32 }
%struct.crypto_dump_info = type { i32, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.crypto_user_alg = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CRYPTO_MSG_GETSTAT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_alg*, %struct.crypto_dump_info*)* @crypto_reportstat_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_reportstat_alg(%struct.crypto_alg* %0, %struct.crypto_dump_info* %1) #0 {
  %3 = alloca %struct.crypto_alg*, align 8
  %4 = alloca %struct.crypto_dump_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.crypto_user_alg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 4
  store %struct.crypto_alg* %0, %struct.crypto_alg** %3, align 8
  store %struct.crypto_dump_info* %1, %struct.crypto_dump_info** %4, align 8
  %11 = load %struct.crypto_dump_info*, %struct.crypto_dump_info** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_dump_info, %struct.crypto_dump_info* %11, i32 0, i32 3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %5, align 8
  %14 = load %struct.crypto_dump_info*, %struct.crypto_dump_info** %4, align 8
  %15 = getelementptr inbounds %struct.crypto_dump_info, %struct.crypto_dump_info* %14, i32 0, i32 2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @NETLINK_CB(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.crypto_dump_info*, %struct.crypto_dump_info** %4, align 8
  %24 = getelementptr inbounds %struct.crypto_dump_info, %struct.crypto_dump_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CRYPTO_MSG_GETSTAT, align 4
  %27 = load %struct.crypto_dump_info*, %struct.crypto_dump_info** %4, align 8
  %28 = getelementptr inbounds %struct.crypto_dump_info, %struct.crypto_dump_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %17, i32 %22, i32 %25, i32 %26, i32 4, i32 %29)
  store %struct.nlmsghdr* %30, %struct.nlmsghdr** %7, align 8
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %32 = icmp ne %struct.nlmsghdr* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @EMSGSIZE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %53

36:                                               ; preds = %2
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %38 = call %struct.crypto_user_alg* @nlmsg_data(%struct.nlmsghdr* %37)
  store %struct.crypto_user_alg* %38, %struct.crypto_user_alg** %8, align 8
  %39 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %40 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %8, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @crypto_reportstat_one(%struct.crypto_alg* %39, %struct.crypto_user_alg* %40, %struct.sk_buff* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %48 = call i32 @nlmsg_cancel(%struct.sk_buff* %46, %struct.nlmsghdr* %47)
  br label %53

49:                                               ; preds = %36
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %52 = call i32 @nlmsg_end(%struct.sk_buff* %50, %struct.nlmsghdr* %51)
  br label %53

53:                                               ; preds = %49, %45, %33
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.crypto_user_alg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @crypto_reportstat_one(%struct.crypto_alg*, %struct.crypto_user_alg*, %struct.sk_buff*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
