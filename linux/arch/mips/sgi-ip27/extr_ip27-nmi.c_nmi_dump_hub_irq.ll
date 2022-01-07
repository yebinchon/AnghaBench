; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-nmi.c_nmi_dump_hub_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-nmi.c_nmi_dump_hub_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PI_INT_MASK0_A = common dso_local global i32 0, align 4
@PI_INT_MASK1_A = common dso_local global i32 0, align 4
@PI_INT_MASK0_B = common dso_local global i32 0, align 4
@PI_INT_MASK1_B = common dso_local global i32 0, align 4
@PI_INT_PEND0 = common dso_local global i32 0, align 4
@PI_INT_PEND1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"PI_INT_MASK0: %16llx PI_INT_MASK1: %16llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"PI_INT_PEND0: %16llx PI_INT_PEND1: %16llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nmi_dump_hub_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PI_INT_MASK0_A, align 4
  %14 = call i32 @REMOTE_HUB_L(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PI_INT_MASK1_A, align 4
  %17 = call i32 @REMOTE_HUB_L(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PI_INT_MASK0_B, align 4
  %21 = call i32 @REMOTE_HUB_L(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PI_INT_MASK1_B, align 4
  %24 = call i32 @REMOTE_HUB_L(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %11
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PI_INT_PEND0, align 4
  %28 = call i32 @REMOTE_HUB_L(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PI_INT_PEND1, align 4
  %31 = call i32 @REMOTE_HUB_L(i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @REMOTE_HUB_L(i32, i32) #1

declare dso_local i32 @pr_emerg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
