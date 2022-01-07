; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_update_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_update_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.crypto_alg = type { i32 }
%struct.crypto_user_alg = type { i32, i32 }

@CRYPTOCFGA_PRIORITY_VAL = common dso_local global i64 0, align 8
@list = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@crypto_alg_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @crypto_update_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_update_alg(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.crypto_alg*, align 8
  %9 = alloca %struct.crypto_user_alg*, align 8
  %10 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %12 = call %struct.crypto_user_alg* @nlmsg_data(%struct.nlmsghdr* %11)
  store %struct.crypto_user_alg* %12, %struct.crypto_user_alg** %9, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %14 = load i64, i64* @CRYPTOCFGA_PRIORITY_VAL, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  store %struct.nlattr* %16, %struct.nlattr** %10, align 8
  %17 = load i32, i32* @list, align 4
  %18 = call i32 @LIST_HEAD(i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* @CAP_NET_ADMIN, align 4
  %21 = call i32 @netlink_capable(%struct.sk_buff* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %77

26:                                               ; preds = %3
  %27 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %9, align 8
  %28 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @null_terminated(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %9, align 8
  %34 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @null_terminated(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %77

41:                                               ; preds = %32
  %42 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %9, align 8
  %46 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strlen(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %77

53:                                               ; preds = %44, %41
  %54 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %9, align 8
  %55 = call %struct.crypto_alg* @crypto_alg_match(%struct.crypto_user_alg* %54, i32 1)
  store %struct.crypto_alg* %55, %struct.crypto_alg** %8, align 8
  %56 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %57 = icmp ne %struct.crypto_alg* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %77

61:                                               ; preds = %53
  %62 = call i32 @down_write(i32* @crypto_alg_sem)
  %63 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %64 = call i32 @crypto_remove_spawns(%struct.crypto_alg* %63, i32* @list, i32* null)
  %65 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %69 = call i32 @nla_get_u32(%struct.nlattr* %68)
  %70 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %71 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = call i32 @up_write(i32* @crypto_alg_sem)
  %74 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %75 = call i32 @crypto_mod_put(%struct.crypto_alg* %74)
  %76 = call i32 @crypto_remove_final(i32* @list)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %58, %50, %38, %23
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.crypto_user_alg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @netlink_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @null_terminated(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.crypto_alg* @crypto_alg_match(%struct.crypto_user_alg*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @crypto_remove_spawns(%struct.crypto_alg*, i32*, i32*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_remove_final(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
