; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hpet.c__hpet_print_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hpet.c__hpet_print_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s(%d):\0A\00", align 1
@HPET_ID = common dso_local global i64 0, align 8
@HPET_PERIOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"ID: 0x%x, PERIOD: 0x%x\0A\00", align 1
@HPET_CFG = common dso_local global i64 0, align 8
@HPET_STATUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"CFG: 0x%x, STATUS: 0x%x\0A\00", align 1
@HPET_COUNTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"COUNTER_l: 0x%x, COUNTER_h: 0x%x\0A\00", align 1
@HPET_ID_NUMBER = common dso_local global i32 0, align 4
@HPET_ID_NUMBER_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"T%d: CFG_l: 0x%x, CFG_h: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"T%d: CMP_l: 0x%x, CMP_h: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"T%d ROUTE_l: 0x%x, ROUTE_h: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @_hpet_print_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_hpet_print_config(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14)
  %16 = load i64, i64* @HPET_ID, align 8
  %17 = call i32 @hpet_readl(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* @HPET_PERIOD, align 8
  %19 = call i32 @hpet_readl(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i64, i64* @HPET_CFG, align 8
  %24 = call i32 @hpet_readl(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* @HPET_STATUS, align 8
  %26 = call i32 @hpet_readl(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i64, i64* @HPET_COUNTER, align 8
  %31 = call i32 @hpet_readl(i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i64, i64* @HPET_COUNTER, align 8
  %33 = add nsw i64 %32, 4
  %34 = call i32 @hpet_readl(i64 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @HPET_ID_NUMBER, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @HPET_ID_NUMBER_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %82, %2
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @HPET_Tn_CFG(i32 %49)
  %51 = call i32 @hpet_readl(i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @HPET_Tn_CFG(i32 %52)
  %54 = add nsw i64 %53, 4
  %55 = call i32 @hpet_readl(i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @HPET_Tn_CMP(i32 %60)
  %62 = call i32 @hpet_readl(i64 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @HPET_Tn_CMP(i32 %63)
  %65 = add nsw i64 %64, 4
  %66 = call i32 @hpet_readl(i64 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @HPET_Tn_ROUTE(i32 %71)
  %73 = call i32 @hpet_readl(i64 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @HPET_Tn_ROUTE(i32 %74)
  %76 = add nsw i64 %75, 4
  %77 = call i32 @hpet_readl(i64 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %48
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %44

85:                                               ; preds = %44
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @hpet_readl(i64) #1

declare dso_local i64 @HPET_Tn_CFG(i32) #1

declare dso_local i64 @HPET_Tn_CMP(i32) #1

declare dso_local i64 @HPET_Tn_ROUTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
