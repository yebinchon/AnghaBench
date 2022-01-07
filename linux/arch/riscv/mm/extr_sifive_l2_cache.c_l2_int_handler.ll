; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/mm/extr_sifive_l2_cache.c_l2_int_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/mm/extr_sifive_l2_cache.c_l2_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_irq = common dso_local global i32* null, align 8
@DIR_CORR = common dso_local global i64 0, align 8
@l2_base = common dso_local global i64 0, align 8
@SIFIVE_L2_DIRECCFIX_HIGH = common dso_local global i64 0, align 8
@SIFIVE_L2_DIRECCFIX_LOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"L2CACHE: DirError @ 0x%08X.%08X\0A\00", align 1
@SIFIVE_L2_DIRECCFIX_COUNT = common dso_local global i64 0, align 8
@l2_err_chain = common dso_local global i32 0, align 4
@SIFIVE_L2_ERR_TYPE_CE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"DirECCFix\00", align 1
@DATA_CORR = common dso_local global i64 0, align 8
@SIFIVE_L2_DATECCFIX_HIGH = common dso_local global i64 0, align 8
@SIFIVE_L2_DATECCFIX_LOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"L2CACHE: DataError @ 0x%08X.%08X\0A\00", align 1
@SIFIVE_L2_DATECCFIX_COUNT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"DatECCFix\00", align 1
@DATA_UNCORR = common dso_local global i64 0, align 8
@SIFIVE_L2_DATECCFAIL_HIGH = common dso_local global i64 0, align 8
@SIFIVE_L2_DATECCFAIL_LOW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"L2CACHE: DataFail @ 0x%08X.%08X\0A\00", align 1
@SIFIVE_L2_DATECCFAIL_COUNT = common dso_local global i64 0, align 8
@SIFIVE_L2_ERR_TYPE_UE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"DatECCFail\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @l2_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2_int_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32*, i32** @g_irq, align 8
  %9 = load i64, i64* @DIR_CORR, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i64, i64* @l2_base, align 8
  %15 = load i64, i64* @SIFIVE_L2_DIRECCFIX_HIGH, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* @l2_base, align 8
  %19 = load i64, i64* @SIFIVE_L2_DIRECCFIX_LOW, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i64, i64* @l2_base, align 8
  %26 = load i64, i64* @SIFIVE_L2_DIRECCFIX_COUNT, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  %29 = load i32, i32* @SIFIVE_L2_ERR_TYPE_CE, align 4
  %30 = call i32 @atomic_notifier_call_chain(i32* @l2_err_chain, i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %13, %2
  %32 = load i32, i32* %3, align 4
  %33 = load i32*, i32** @g_irq, align 8
  %34 = load i64, i64* @DATA_CORR, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = load i64, i64* @l2_base, align 8
  %40 = load i64, i64* @SIFIVE_L2_DATECCFIX_HIGH, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i64, i64* @l2_base, align 8
  %44 = load i64, i64* @SIFIVE_L2_DATECCFIX_LOW, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i64, i64* @l2_base, align 8
  %51 = load i64, i64* @SIFIVE_L2_DATECCFIX_COUNT, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  %54 = load i32, i32* @SIFIVE_L2_ERR_TYPE_CE, align 4
  %55 = call i32 @atomic_notifier_call_chain(i32* @l2_err_chain, i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %38, %31
  %57 = load i32, i32* %3, align 4
  %58 = load i32*, i32** @g_irq, align 8
  %59 = load i64, i64* @DATA_UNCORR, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load i64, i64* @l2_base, align 8
  %65 = load i64, i64* @SIFIVE_L2_DATECCFAIL_HIGH, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i64, i64* @l2_base, align 8
  %69 = load i64, i64* @SIFIVE_L2_DATECCFAIL_LOW, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i64, i64* @l2_base, align 8
  %76 = load i64, i64* @SIFIVE_L2_DATECCFAIL_COUNT, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readl(i64 %77)
  %79 = load i32, i32* @SIFIVE_L2_ERR_TYPE_UE, align 4
  %80 = call i32 @atomic_notifier_call_chain(i32* @l2_err_chain, i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %63, %56
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %82
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
