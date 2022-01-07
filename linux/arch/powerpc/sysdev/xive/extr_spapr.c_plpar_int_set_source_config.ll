; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_plpar_int_set_source_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_plpar_int_set_source_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [75 x i8] c"H_INT_SET_SOURCE_CONFIG flags=%lx lisn=%lx target=%lx prio=%lx sw_irq=%lx\0A\00", align 1
@H_INT_SET_SOURCE_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"H_INT_SET_SOURCE_CONFIG lisn=%ld target=%lx prio=%lx failed %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64)* @plpar_int_set_source_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @plpar_int_set_source_config(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = call i32 @pr_devel(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14, i64 %15, i64 %16, i64 %17)
  br label %19

19:                                               ; preds = %27, %5
  %20 = load i32, i32* @H_INT_SET_SOURCE_CONFIG, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i64 @plpar_hcall_norets(i32 %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25)
  store i64 %26, i64* %12, align 8
  br label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @plpar_busy_delay(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %19, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64 %36, i64 %37, i64 %38)
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %6, align 8
  br label %42

41:                                               ; preds = %31
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i64, i64* %6, align 8
  ret i64 %43
}

declare dso_local i32 @pr_devel(i8*, i64, i64, i64, i64, i64) #1

declare dso_local i64 @plpar_hcall_norets(i32, i64, i64, i64, i64, i64) #1

declare dso_local i64 @plpar_busy_delay(i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
