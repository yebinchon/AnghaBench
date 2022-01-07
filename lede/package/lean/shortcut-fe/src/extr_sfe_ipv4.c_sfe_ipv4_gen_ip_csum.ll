; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_gen_ip_csum.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_gen_ip_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4_ip_hdr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfe_ipv4_ip_hdr*)* @sfe_ipv4_gen_ip_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv4_gen_ip_csum(%struct.sfe_ipv4_ip_hdr* %0) #0 {
  %2 = alloca %struct.sfe_ipv4_ip_hdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.sfe_ipv4_ip_hdr* %0, %struct.sfe_ipv4_ip_hdr** %2, align 8
  %5 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %2, align 8
  %6 = bitcast %struct.sfe_ipv4_ip_hdr* %5 to i32*
  store i32* %6, i32** %4, align 8
  %7 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %2, align 8
  %8 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 9
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 65535
  %50 = load i32, i32* %3, align 4
  %51 = ashr i32 %50, 16
  %52 = add nsw i32 %49, %51
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, 65535
  %55 = load i32, i32* %3, align 4
  %56 = ashr i32 %55, 16
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = xor i32 %58, 65535
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
