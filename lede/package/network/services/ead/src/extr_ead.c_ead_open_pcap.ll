; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_ead_open_pcap.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_ead_open_pcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCAP_MRU = common dso_local global i32 0, align 4
@PCAP_TIMEOUT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32)* @ead_open_pcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ead_open_pcap(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32* @pcap_create(i8* %8, i8* %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %47

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @PCAP_MRU, align 4
  %17 = call i32 @pcap_set_snaplen(i32* %15, i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @pcap_set_promisc(i32* %18, i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @PCAP_TIMEOUT, align 4
  %23 = call i32 @pcap_set_timeout(i32* %21, i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* @ETH_P_IP, align 4
  %29 = call i32 @htons(i32 %28)
  br label %31

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  %33 = call i32 @pcap_set_protocol_linux(i32* %24, i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 10, i32 1
  %39 = load i32, i32* @PCAP_MRU, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i32 @pcap_set_buffer_size(i32* %34, i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @pcap_activate(i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @set_recv_type(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %31, %13
  %48 = load i32*, i32** %7, align 8
  ret i32* %48
}

declare dso_local i32* @pcap_create(i8*, i8*) #1

declare dso_local i32 @pcap_set_snaplen(i32*, i32) #1

declare dso_local i32 @pcap_set_promisc(i32*, i32) #1

declare dso_local i32 @pcap_set_timeout(i32*, i32) #1

declare dso_local i32 @pcap_set_protocol_linux(i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @pcap_set_buffer_size(i32*, i32) #1

declare dso_local i32 @pcap_activate(i32*) #1

declare dso_local i32 @set_recv_type(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
