; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_setup-sh7724.c_sh7724_post_sleep_notifier_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_setup-sh7724.c_sh7724_post_sleep_notifier_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { i32 }

@SUSP_SH_RSTANDBY = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@sh7724_rstandby_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @sh7724_post_sleep_notifier_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7724_post_sleep_notifier_call(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
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
  br label %98

14:                                               ; preds = %3
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 40), align 4
  %16 = call i32 @__raw_writel(i32 %15, i32 -8388576)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 39), align 4
  %18 = call i32 @__raw_writel(i32 %17, i32 -20905980)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 38), align 4
  %20 = call i32 @__raw_writel(i32 %19, i32 -20905968)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 37), align 4
  %22 = call i32 @__raw_writel(i32 %21, i32 -20905964)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 36), align 4
  %24 = call i32 @__raw_writel(i32 %23, i32 -20905960)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 35), align 4
  %26 = call i32 @__raw_writel(i32 %25, i32 -20905956)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 34), align 4
  %28 = call i32 @__raw_writel(i32 %27, i32 -20905952)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 33), align 4
  %30 = call i32 @__raw_writel(i32 %29, i32 -20905936)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 32), align 4
  %32 = call i32 @__raw_writel(i32 %31, i32 -20905932)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 31), align 4
  %34 = call i32 @__raw_writel(i32 %33, i32 -20905928)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 30), align 4
  %36 = call i32 @__raw_writel(i32 %35, i32 -20905924)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 29), align 4
  %38 = call i32 @__raw_writel(i32 %37, i32 -20905920)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 28), align 4
  %40 = call i32 @__raw_writew(i32 %39, i32 -1542979584)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 27), align 4
  %42 = call i32 @__raw_writew(i32 %41, i32 -1542979580)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 26), align 4
  %44 = call i32 @__raw_writew(i32 %43, i32 -1542979576)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 25), align 4
  %46 = call i32 @__raw_writew(i32 %45, i32 -1542979572)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 24), align 4
  %48 = call i32 @__raw_writew(i32 %47, i32 -1542979568)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 23), align 4
  %50 = call i32 @__raw_writew(i32 %49, i32 -1542979564)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 22), align 4
  %52 = call i32 @__raw_writew(i32 %51, i32 -1542979560)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 21), align 4
  %54 = call i32 @__raw_writew(i32 %53, i32 -1542979556)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 20), align 4
  %56 = call i32 @__raw_writew(i32 %55, i32 -1542979552)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 19), align 4
  %58 = call i32 @__raw_writew(i32 %57, i32 -1542979548)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 18), align 4
  %60 = call i32 @__raw_writew(i32 %59, i32 -1542979544)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 17), align 4
  %62 = call i32 @__raw_writew(i32 %61, i32 -1542979540)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 16), align 4
  %64 = call i32 @__raw_writeb(i32 %63, i32 -1542979456)
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 15), align 4
  %66 = call i32 @__raw_writeb(i32 %65, i32 -1542979452)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 14), align 4
  %68 = call i32 @__raw_writeb(i32 %67, i32 -1542979448)
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 13), align 4
  %70 = call i32 @__raw_writeb(i32 %69, i32 -1542979444)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 12), align 4
  %72 = call i32 @__raw_writeb(i32 %71, i32 -1542979440)
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 11), align 4
  %74 = call i32 @__raw_writeb(i32 %73, i32 -1542979436)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 10), align 4
  %76 = call i32 @__raw_writeb(i32 %75, i32 -1542979432)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 9), align 4
  %78 = call i32 @__raw_writeb(i32 %77, i32 -1542979428)
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 8), align 4
  %80 = call i32 @__raw_writeb(i32 %79, i32 -1542979424)
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 7), align 4
  %82 = call i32 @__raw_writeb(i32 %81, i32 -1542979420)
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 6), align 4
  %84 = call i32 @__raw_writeb(i32 %83, i32 -1542979416)
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 5), align 4
  %86 = call i32 @__raw_writeb(i32 %85, i32 -1542979412)
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 4), align 4
  %88 = call i32 @__raw_writeb(i32 %87, i32 -1542979408)
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 3), align 4
  %90 = call i32 @__raw_writew(i32 %89, i32 -1538129920)
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 2), align 4
  %92 = call i32 @__raw_writew(i32 %91, i32 -1538129916)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 1), align 4
  %94 = call i32 @__raw_writel(i32 %93, i32 -1542127592)
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh7724_rstandby_state, i32 0, i32 0), align 4
  %96 = call i32 @__raw_writel(i32 %95, i32 -1542127556)
  %97 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %14, %12
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @__raw_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
