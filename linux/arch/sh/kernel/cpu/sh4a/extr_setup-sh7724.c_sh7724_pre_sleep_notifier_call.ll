; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_setup-sh7724.c_sh7724_pre_sleep_notifier_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_setup-sh7724.c_sh7724_pre_sleep_notifier_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.notifier_block = type { i32 }

@SUSP_SH_RSTANDBY = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@sh7724_rstandby_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @sh7724_pre_sleep_notifier_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7724_pre_sleep_notifier_call(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @SUSP_SH_RSTANDBY, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %13, i32* %4, align 4
  br label %69

14:                                               ; preds = %3
  %15 = call i8* @__raw_readl(i32 -8388576)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 0), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 0), align 8
  %18 = or i32 %17, -1515913216
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 0), align 8
  %19 = call i8* @__raw_readl(i32 -20905980)
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 40), align 8
  %20 = call i8* @__raw_readl(i32 -20905968)
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 39), align 8
  %21 = call i8* @__raw_readl(i32 -20905964)
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 38), align 8
  %22 = call i8* @__raw_readl(i32 -20905960)
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 37), align 8
  %23 = call i8* @__raw_readl(i32 -20905956)
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 36), align 8
  %24 = call i8* @__raw_readl(i32 -20905952)
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 35), align 8
  %25 = call i8* @__raw_readl(i32 -20905936)
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 34), align 8
  %26 = call i8* @__raw_readl(i32 -20905932)
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 33), align 8
  %27 = call i8* @__raw_readl(i32 -20905928)
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 32), align 8
  %28 = call i8* @__raw_readl(i32 -20905924)
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 31), align 8
  %29 = call i8* @__raw_readl(i32 -20905920)
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 30), align 8
  %30 = call i8* @__raw_readw(i32 -1542979584)
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 29), align 8
  %31 = call i8* @__raw_readw(i32 -1542979580)
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 28), align 8
  %32 = call i8* @__raw_readw(i32 -1542979576)
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 27), align 8
  %33 = call i8* @__raw_readw(i32 -1542979572)
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 26), align 8
  %34 = call i8* @__raw_readw(i32 -1542979568)
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 25), align 8
  %35 = call i8* @__raw_readw(i32 -1542979564)
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 24), align 8
  %36 = call i8* @__raw_readw(i32 -1542979560)
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 23), align 8
  %37 = call i8* @__raw_readw(i32 -1542979556)
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 22), align 8
  %38 = call i8* @__raw_readw(i32 -1542979552)
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 21), align 8
  %39 = call i8* @__raw_readw(i32 -1542979548)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 20), align 8
  %40 = call i8* @__raw_readw(i32 -1542979544)
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 19), align 8
  %41 = call i8* @__raw_readw(i32 -1542979540)
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 18), align 8
  %42 = call i8* @__raw_readb(i32 -1542979456)
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 17), align 8
  %43 = call i8* @__raw_readb(i32 -1542979452)
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 16), align 8
  %44 = call i8* @__raw_readb(i32 -1542979448)
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 15), align 8
  %45 = call i8* @__raw_readb(i32 -1542979444)
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 14), align 8
  %46 = call i8* @__raw_readb(i32 -1542979440)
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 13), align 8
  %47 = call i8* @__raw_readb(i32 -1542979436)
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 12), align 8
  %48 = call i8* @__raw_readb(i32 -1542979432)
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 11), align 8
  %49 = call i8* @__raw_readb(i32 -1542979428)
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 10), align 8
  %50 = call i8* @__raw_readb(i32 -1542979424)
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 9), align 8
  %51 = call i8* @__raw_readb(i32 -1542979420)
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 8), align 8
  %52 = call i8* @__raw_readb(i32 -1542979416)
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 7), align 8
  %53 = call i8* @__raw_readb(i32 -1542979412)
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 6), align 8
  %54 = call i8* @__raw_readb(i32 -1542979408)
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 5), align 8
  %55 = call i8* @__raw_readb(i32 -1538129920)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 1), align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 1), align 4
  %58 = or i32 %57, 23040
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 1), align 4
  %59 = call i8* @__raw_readb(i32 -1538129916)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 2), align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 2), align 8
  %62 = or i32 %61, 42240
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 2), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 2), align 8
  %64 = and i32 %63, 7
  %65 = call i32 @__raw_writew(i32 %64, i32 -1538129916)
  %66 = call i8* @__raw_readl(i32 -1542127592)
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 4), align 8
  %67 = call i8* @__raw_readl(i32 -1542127556)
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 3), align 8
  %68 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %14, %12
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i8* @__raw_readl(i32) #1

declare dso_local i8* @__raw_readw(i32) #1

declare dso_local i8* @__raw_readb(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
