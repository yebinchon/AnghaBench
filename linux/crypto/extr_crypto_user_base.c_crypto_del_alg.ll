; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_del_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_del_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.crypto_alg = type { i32, i32 }
%struct.crypto_user_alg = type { i32, i32 }
%struct.crypto_instance = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CRYPTO_ALG_INSTANCE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @crypto_del_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_del_alg(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.crypto_alg*, align 8
  %9 = alloca %struct.crypto_user_alg*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %12 = call %struct.crypto_user_alg* @nlmsg_data(%struct.nlmsghdr* %11)
  store %struct.crypto_user_alg* %12, %struct.crypto_user_alg** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load i32, i32* @CAP_NET_ADMIN, align 4
  %15 = call i32 @netlink_capable(%struct.sk_buff* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %9, align 8
  %22 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @null_terminated(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %9, align 8
  %28 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @null_terminated(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %69

35:                                               ; preds = %26
  %36 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %9, align 8
  %37 = call %struct.crypto_alg* @crypto_alg_match(%struct.crypto_user_alg* %36, i32 1)
  store %struct.crypto_alg* %37, %struct.crypto_alg** %8, align 8
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %39 = icmp ne %struct.crypto_alg* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %69

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %47 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CRYPTO_ALG_INSTANCE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %65

53:                                               ; preds = %43
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %57 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %56, i32 0, i32 1
  %58 = call i32 @refcount_read(i32* %57)
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %63 = bitcast %struct.crypto_alg* %62 to %struct.crypto_instance*
  %64 = call i32 @crypto_unregister_instance(%struct.crypto_instance* %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %60, %52
  %66 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %67 = call i32 @crypto_mod_put(%struct.crypto_alg* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %40, %32, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.crypto_user_alg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @netlink_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @null_terminated(i32) #1

declare dso_local %struct.crypto_alg* @crypto_alg_match(%struct.crypto_user_alg*, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @crypto_unregister_instance(%struct.crypto_instance*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
