; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_report.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.crypto_user_alg = type { i32, i32 }
%struct.crypto_alg = type { i32 }
%struct.crypto_dump_info = type { i64, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @crypto_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_report(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.crypto_user_alg*, align 8
  %10 = alloca %struct.crypto_alg*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.crypto_dump_info, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %8, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %20 = call %struct.crypto_user_alg* @nlmsg_data(%struct.nlmsghdr* %19)
  store %struct.crypto_user_alg* %20, %struct.crypto_user_alg** %9, align 8
  %21 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %9, align 8
  %22 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @null_terminated(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %9, align 8
  %28 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @null_terminated(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26, %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %82

35:                                               ; preds = %26
  %36 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %9, align 8
  %37 = call %struct.crypto_alg* @crypto_alg_match(%struct.crypto_user_alg* %36, i32 0)
  store %struct.crypto_alg* %37, %struct.crypto_alg** %10, align 8
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %39 = icmp ne %struct.crypto_alg* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %82

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.sk_buff* @nlmsg_new(i32 %46, i32 %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %11, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %64

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.crypto_dump_info, %struct.crypto_dump_info* %12, i32 0, i32 3
  store %struct.sk_buff* %53, %struct.sk_buff** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = getelementptr inbounds %struct.crypto_dump_info, %struct.crypto_dump_info* %12, i32 0, i32 2
  store %struct.sk_buff* %55, %struct.sk_buff** %56, align 8
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %58 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.crypto_dump_info, %struct.crypto_dump_info* %12, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.crypto_dump_info, %struct.crypto_dump_info* %12, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %63 = call i32 @crypto_report_alg(%struct.crypto_alg* %62, %struct.crypto_dump_info* %12)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %52, %51
  %65 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %66 = call i32 @crypto_mod_put(%struct.crypto_alg* %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %4, align 4
  br label %82

71:                                               ; preds = %64
  %72 = load %struct.net*, %struct.net** %8, align 8
  %73 = getelementptr inbounds %struct.net, %struct.net* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i32 @NETLINK_CB(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nlmsg_unicast(i32 %74, %struct.sk_buff* %75, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %71, %69, %40, %32
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.crypto_user_alg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @null_terminated(i32) #1

declare dso_local %struct.crypto_alg* @crypto_alg_match(%struct.crypto_user_alg*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @crypto_report_alg(%struct.crypto_alg*, %struct.crypto_dump_info*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local i32 @nlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
