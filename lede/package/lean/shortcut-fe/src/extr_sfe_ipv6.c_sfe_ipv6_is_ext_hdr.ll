; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_is_ext_hdr.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_is_ext_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SFE_IPV6_EXT_HDR_HOP = common dso_local global i64 0, align 8
@SFE_IPV6_EXT_HDR_ROUTING = common dso_local global i64 0, align 8
@SFE_IPV6_EXT_HDR_FRAG = common dso_local global i64 0, align 8
@SFE_IPV6_EXT_HDR_AH = common dso_local global i64 0, align 8
@SFE_IPV6_EXT_HDR_DST = common dso_local global i64 0, align 8
@SFE_IPV6_EXT_HDR_MH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @sfe_ipv6_is_ext_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv6_is_ext_hdr(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @SFE_IPV6_EXT_HDR_HOP, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @SFE_IPV6_EXT_HDR_ROUTING, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @SFE_IPV6_EXT_HDR_FRAG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @SFE_IPV6_EXT_HDR_AH, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @SFE_IPV6_EXT_HDR_DST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @SFE_IPV6_EXT_HDR_MH, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %18, %14, %10, %6, %1
  %27 = phi i1 [ true, %18 ], [ true, %14 ], [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
