; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_omap_l3_smx.c_omap3_l3_block_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_omap_l3_smx.c_omap3_l3_block_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap3_l3 = type { i32 }

@L3_ERROR_LOG_MULTI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s seen by %s %s at address %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Multiple Errors\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap3_l3*, i32, i32)* @omap3_l3_block_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_l3_block_irq(%struct.omap3_l3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.omap3_l3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.omap3_l3* %0, %struct.omap3_l3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @omap3_l3_decode_error_code(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @omap3_l3_decode_initid(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @L3_ERROR_LOG_MULTI, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @omap3_l3_decode_addr(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @omap3_l3_code_string(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @omap3_l3_initiator_string(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23, i8* %27, i32 %28)
  %30 = call i32 @WARN_ON(i32 1)
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %31
}

declare dso_local i32 @omap3_l3_decode_error_code(i32) #1

declare dso_local i32 @omap3_l3_decode_initid(i32) #1

declare dso_local i32 @omap3_l3_decode_addr(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @omap3_l3_code_string(i32) #1

declare dso_local i32 @omap3_l3_initiator_string(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
