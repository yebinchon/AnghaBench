; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_add_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_add_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.crypto_alg = type { i32 }
%struct.crypto_user_alg = type { i8*, i8*, i32, i32 }

@CRYPTOCFGA_PRIORITY_VAL = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@crypto_alg_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @crypto_add_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_add_alg(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.crypto_alg*, align 8
  %11 = alloca %struct.crypto_user_alg*, align 8
  %12 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %14 = call %struct.crypto_user_alg* @nlmsg_data(%struct.nlmsghdr* %13)
  store %struct.crypto_user_alg* %14, %struct.crypto_user_alg** %11, align 8
  %15 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %16 = load i64, i64* @CRYPTOCFGA_PRIORITY_VAL, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  store %struct.nlattr* %18, %struct.nlattr** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* @CAP_NET_ADMIN, align 4
  %21 = call i32 @netlink_capable(%struct.sk_buff* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %110

26:                                               ; preds = %3
  %27 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %11, align 8
  %28 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @null_terminated(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %11, align 8
  %34 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @null_terminated(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %110

41:                                               ; preds = %32
  %42 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %11, align 8
  %43 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %110

57:                                               ; preds = %51, %48
  %58 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.crypto_alg* @crypto_alg_match(%struct.crypto_user_alg* %58, i32 %59)
  store %struct.crypto_alg* %60, %struct.crypto_alg** %10, align 8
  %61 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %62 = icmp ne %struct.crypto_alg* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %65 = call i32 @crypto_mod_put(%struct.crypto_alg* %64)
  %66 = load i32, i32* @EEXIST, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %110

68:                                               ; preds = %57
  %69 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %11, align 8
  %70 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %11, align 8
  %76 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %9, align 8
  br label %82

78:                                               ; preds = %68
  %79 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %11, align 8
  %80 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i8*, i8** %9, align 8
  %84 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %11, align 8
  %85 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %11, align 8
  %88 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.crypto_alg* @crypto_alg_mod_lookup(i8* %83, i32 %86, i32 %89)
  store %struct.crypto_alg* %90, %struct.crypto_alg** %10, align 8
  %91 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %92 = call i64 @IS_ERR(%struct.crypto_alg* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %96 = call i32 @PTR_ERR(%struct.crypto_alg* %95)
  store i32 %96, i32* %4, align 4
  br label %110

97:                                               ; preds = %82
  %98 = call i32 @down_write(i32* @crypto_alg_sem)
  %99 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %100 = icmp ne %struct.nlattr* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %103 = call i32 @nla_get_u32(%struct.nlattr* %102)
  %104 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %105 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %97
  %107 = call i32 @up_write(i32* @crypto_alg_sem)
  %108 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %109 = call i32 @crypto_mod_put(%struct.crypto_alg* %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %94, %63, %54, %38, %23
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.crypto_user_alg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @netlink_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @null_terminated(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.crypto_alg* @crypto_alg_match(%struct.crypto_user_alg*, i32) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @crypto_alg_mod_lookup(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_alg*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
