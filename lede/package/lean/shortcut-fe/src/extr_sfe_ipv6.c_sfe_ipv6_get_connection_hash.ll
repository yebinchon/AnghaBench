; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_get_connection_hash.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_get_connection_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6_addr = type { i32* }

@SFE_IPV6_CONNECTION_HASH_SHIFT = common dso_local global i32 0, align 4
@SFE_IPV6_CONNECTION_HASH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sfe_ipv6_addr*, i32, %struct.sfe_ipv6_addr*, i32)* @sfe_ipv6_get_connection_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv6_get_connection_hash(i32 %0, %struct.sfe_ipv6_addr* %1, i32 %2, %struct.sfe_ipv6_addr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sfe_ipv6_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sfe_ipv6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.sfe_ipv6_addr* %1, %struct.sfe_ipv6_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sfe_ipv6_addr* %3, %struct.sfe_ipv6_addr** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %34, %5
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %7, align 8
  %18 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %9, align 8
  %25 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %23, %30
  %32 = load i32, i32* %12, align 4
  %33 = xor i32 %32, %31
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %6, align 4
  %40 = xor i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = xor i32 %41, %42
  %44 = call i32 @ntohs(i32 %43)
  %45 = xor i32 %40, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @SFE_IPV6_CONNECTION_HASH_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* %12, align 4
  %50 = xor i32 %48, %49
  %51 = load i32, i32* @SFE_IPV6_CONNECTION_HASH_MASK, align 4
  %52 = and i32 %50, %51
  ret i32 %52
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
