; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ath25/extr_ar2315.c_ar2315_ahb_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ath25/extr_ar2315.c_ar2315_ahb_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR2315_AHB_ERR0 = common dso_local global i32 0, align 4
@AR2315_AHB_ERROR_DET = common dso_local global i32 0, align 4
@AR2315_AHB_ERR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"AHB fatal error\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"AHB error\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ar2315_ahb_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar2315_ahb_err_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @AR2315_AHB_ERR0, align 4
  %6 = load i32, i32* @AR2315_AHB_ERROR_DET, align 4
  %7 = call i32 @ar2315_rst_reg_write(i32 %5, i32 %6)
  %8 = load i32, i32* @AR2315_AHB_ERR1, align 4
  %9 = call i32 @ar2315_rst_reg_read(i32 %8)
  %10 = call i32 @pr_emerg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @machine_restart(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %12
}

declare dso_local i32 @ar2315_rst_reg_write(i32, i32) #1

declare dso_local i32 @ar2315_rst_reg_read(i32) #1

declare dso_local i32 @pr_emerg(i8*) #1

declare dso_local i32 @machine_restart(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
