; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_get_connection_match_hash.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_get_connection_match_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sfe_ipv6_addr = type { i32* }

@SFE_IPV6_CONNECTION_HASH_SHIFT = common dso_local global i32 0, align 4
@SFE_IPV6_CONNECTION_HASH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.sfe_ipv6_addr*, i32, %struct.sfe_ipv6_addr*, i32)* @sfe_ipv6_get_connection_match_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv6_get_connection_match_hash(%struct.net_device* %0, i32 %1, %struct.sfe_ipv6_addr* %2, i32 %3, %struct.sfe_ipv6_addr* %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sfe_ipv6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sfe_ipv6_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sfe_ipv6_addr* %2, %struct.sfe_ipv6_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sfe_ipv6_addr* %4, %struct.sfe_ipv6_addr** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = ptrtoint %struct.net_device* %16 to i64
  store i64 %17, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %39, %6
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %9, align 8
  %23 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %11, align 8
  %30 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %28, %35
  %37 = load i32, i32* %14, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i64, i64* %15, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %14, align 4
  %46 = xor i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = xor i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = xor i32 %49, %50
  %52 = call i32 @ntohs(i32 %51)
  %53 = xor i32 %48, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @SFE_IPV6_CONNECTION_HASH_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* %14, align 4
  %58 = xor i32 %56, %57
  %59 = load i32, i32* @SFE_IPV6_CONNECTION_HASH_MASK, align 4
  %60 = and i32 %58, %59
  ret i32 %60
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
