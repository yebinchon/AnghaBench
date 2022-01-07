; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm8668/files-3.18/arch/mips/adm8668/extr_platform.c_adm8668_fetch_mac.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm8668/files-3.18/arch/mips/adm8668/extr_platform.c_adm8668_fetch_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tulip_platform_data = type { i32 }

@ADM8868_UBOOT_LAN_MAC = common dso_local global i64 0, align 8
@eth0_pdata = common dso_local global %struct.tulip_platform_data zeroinitializer, align 4
@ADM8868_UBOOT_WAN_MAC = common dso_local global i64 0, align 8
@eth1_pdata = common dso_local global %struct.tulip_platform_data zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"unsupported ethernet unit: %d\0A\00", align 1
@ADM8668_SMEM1_BASE = common dso_local global i32 0, align 4
@ADM8868_UBOOT_ENV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @adm8668_fetch_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8668_fetch_mac(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tulip_platform_data*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %11 [
    i32 -1, label %7
    i32 0, label %7
    i32 1, label %9
  ]

7:                                                ; preds = %1, %1
  %8 = load i64, i64* @ADM8868_UBOOT_LAN_MAC, align 8
  store i64 %8, i64* %4, align 8
  store %struct.tulip_platform_data* @eth0_pdata, %struct.tulip_platform_data** %5, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load i64, i64* @ADM8868_UBOOT_WAN_MAC, align 8
  store i64 %10, i64* %4, align 8
  store %struct.tulip_platform_data* @eth1_pdata, %struct.tulip_platform_data** %5, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %27

14:                                               ; preds = %9, %7
  %15 = load i32, i32* @ADM8668_SMEM1_BASE, align 4
  %16 = call i64 @KSEG1ADDR(i32 %15)
  %17 = load i64, i64* @ADM8868_UBOOT_ENV, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %3, align 8
  %22 = load %struct.tulip_platform_data*, %struct.tulip_platform_data** %5, align 8
  %23 = getelementptr inbounds %struct.tulip_platform_data, %struct.tulip_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @memcpy(i32 %24, i32* %25, i32 4)
  br label %27

27:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @KSEG1ADDR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
