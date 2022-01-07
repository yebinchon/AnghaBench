; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_fsl_emb.c_init_pmc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_fsl_emb.c_init_pmc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMLCA_FC = common dso_local global i32 0, align 4
@PMLCA_FCS = common dso_local global i32 0, align 4
@PMLCA_FCU = common dso_local global i32 0, align 4
@PMLCA_FCM1 = common dso_local global i32 0, align 4
@PMLCA_FCM0 = common dso_local global i32 0, align 4
@PMRN_PMLCA0 = common dso_local global i32 0, align 4
@PMRN_PMLCB0 = common dso_local global i32 0, align 4
@PMRN_PMLCA1 = common dso_local global i32 0, align 4
@PMRN_PMLCB1 = common dso_local global i32 0, align 4
@PMRN_PMLCA2 = common dso_local global i32 0, align 4
@PMRN_PMLCB2 = common dso_local global i32 0, align 4
@PMRN_PMLCA3 = common dso_local global i32 0, align 4
@PMRN_PMLCB3 = common dso_local global i32 0, align 4
@PMRN_PMLCA4 = common dso_local global i32 0, align 4
@PMRN_PMLCB4 = common dso_local global i32 0, align 4
@PMRN_PMLCA5 = common dso_local global i32 0, align 4
@PMRN_PMLCB5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Bad ctr number!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_pmc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pmc_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PMLCA_FC, align 4
  %6 = load i32, i32* @PMLCA_FCS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @PMLCA_FCU, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PMLCA_FCM1, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PMLCA_FCM0, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %57 [
    i32 0, label %15
    i32 1, label %22
    i32 2, label %29
    i32 3, label %36
    i32 4, label %43
    i32 5, label %50
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @PMRN_PMLCA0, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @mtpmr(i32 %16, i32 %17)
  %19 = load i32, i32* @PMRN_PMLCB0, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @mtpmr(i32 %19, i32 %20)
  br label %59

22:                                               ; preds = %1
  %23 = load i32, i32* @PMRN_PMLCA1, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @mtpmr(i32 %23, i32 %24)
  %26 = load i32, i32* @PMRN_PMLCB1, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mtpmr(i32 %26, i32 %27)
  br label %59

29:                                               ; preds = %1
  %30 = load i32, i32* @PMRN_PMLCA2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @mtpmr(i32 %30, i32 %31)
  %33 = load i32, i32* @PMRN_PMLCB2, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mtpmr(i32 %33, i32 %34)
  br label %59

36:                                               ; preds = %1
  %37 = load i32, i32* @PMRN_PMLCA3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @mtpmr(i32 %37, i32 %38)
  %40 = load i32, i32* @PMRN_PMLCB3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @mtpmr(i32 %40, i32 %41)
  br label %59

43:                                               ; preds = %1
  %44 = load i32, i32* @PMRN_PMLCA4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @mtpmr(i32 %44, i32 %45)
  %47 = load i32, i32* @PMRN_PMLCB4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @mtpmr(i32 %47, i32 %48)
  br label %59

50:                                               ; preds = %1
  %51 = load i32, i32* @PMRN_PMLCA5, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @mtpmr(i32 %51, i32 %52)
  %54 = load i32, i32* @PMRN_PMLCB5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @mtpmr(i32 %54, i32 %55)
  br label %59

57:                                               ; preds = %1
  %58 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %50, %43, %36, %29, %22, %15
  ret void
}

declare dso_local i32 @mtpmr(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
