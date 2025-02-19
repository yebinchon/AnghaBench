; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_ubc.c_sh4a_ubc_disable_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_ubc.c_sh4a_ubc_disable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sh4a_ubc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@UBC_CBR_CE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sh4a_ubc_disable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh4a_ubc_disable_all() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %16, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sh4a_ubc, i32 0, i32 0), align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @UBC_CBR(i32 %7)
  %9 = call i32 @__raw_readl(i32 %8)
  %10 = load i32, i32* @UBC_CBR_CE, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @UBC_CBR(i32 %13)
  %15 = call i32 @__raw_writel(i32 %12, i32 %14)
  br label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %2

19:                                               ; preds = %2
  ret void
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @UBC_CBR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
