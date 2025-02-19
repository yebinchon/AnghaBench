; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_extra_reg_idx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_extra_reg_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extra_reg = type { i64, i32 }

@EXTRA_REG_NHMEX_M_ZDP_CTL_FVC = common dso_local global i64 0, align 8
@NHMEX_M_PMON_CTL_INC_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extra_reg*)* @nhmex_mbox_extra_reg_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_mbox_extra_reg_idx(%struct.extra_reg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.extra_reg*, align 8
  store %struct.extra_reg* %0, %struct.extra_reg** %3, align 8
  %4 = load %struct.extra_reg*, %struct.extra_reg** %3, align 8
  %5 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.extra_reg*, %struct.extra_reg** %3, align 8
  %11 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.extra_reg*, %struct.extra_reg** %3, align 8
  %16 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.extra_reg*, %struct.extra_reg** %3, align 8
  %19 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NHMEX_M_PMON_CTL_INC_SEL_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %17, %23
  %25 = sub nsw i64 %24, 13
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
