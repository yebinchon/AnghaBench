; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_cm.h_sfe_ipv6_addr_equal.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_cm.h_sfe_ipv6_addr_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6_addr = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr*)* @sfe_ipv6_addr_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv6_addr_equal(%struct.sfe_ipv6_addr* %0, %struct.sfe_ipv6_addr* %1) #0 {
  %3 = alloca %struct.sfe_ipv6_addr*, align 8
  %4 = alloca %struct.sfe_ipv6_addr*, align 8
  store %struct.sfe_ipv6_addr* %0, %struct.sfe_ipv6_addr** %3, align 8
  store %struct.sfe_ipv6_addr* %1, %struct.sfe_ipv6_addr** %4, align 8
  %5 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %3, align 8
  %6 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %4, align 8
  %11 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %9, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  %17 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %3, align 8
  %18 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %4, align 8
  %23 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %21, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %16
  %29 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %3, align 8
  %30 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %4, align 8
  %35 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %33, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %3, align 8
  %42 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %4, align 8
  %47 = getelementptr inbounds %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %45, %50
  br label %52

52:                                               ; preds = %40, %28, %16, %2
  %53 = phi i1 [ false, %28 ], [ false, %16 ], [ false, %2 ], [ %51, %40 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
