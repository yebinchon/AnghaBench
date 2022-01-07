; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_irq.c_au1x_ic1_setwake.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_irq.c_au1x_ic1_setwake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@AU1000_INTC1_INT_BASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AU1000_SYS_WAKEMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @au1x_ic1_setwake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1x_ic1_setwake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AU1000_INTC1_INT_BASE, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 7
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @local_irq_save(i64 %23)
  %25 = load i32, i32* @AU1000_SYS_WAKEMSK, align 4
  %26 = call i64 @alchemy_rdsys(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %42

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %35, %29
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @AU1000_SYS_WAKEMSK, align 4
  %45 = call i32 @alchemy_wrsys(i64 %43, i32 %44)
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @local_irq_restore(i64 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @alchemy_rdsys(i32) #1

declare dso_local i32 @alchemy_wrsys(i64, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
