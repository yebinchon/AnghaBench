; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_titan.c_titan_parse_p_serror.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_titan.c_titan_parse_p_serror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCHK_DISPOSITION_REPORT = common dso_local global i32 0, align 4
@MCHK_DISPOSITION_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@TITAN__PCHIP_SERROR__ADDR = common dso_local global i32 0, align 4
@TITAN__PCHIP_SERROR__CMD = common dso_local global i32 0, align 4
@TITAN__PCHIP_SERROR__ECCMASK = common dso_local global i32 0, align 4
@TITAN__PCHIP_SERROR__ERRMASK = common dso_local global i32 0, align 4
@TITAN__PCHIP_SERROR__LOST_CRE = common dso_local global i32 0, align 4
@TITAN__PCHIP_SERROR__LOST_UECC = common dso_local global i32 0, align 4
@TITAN__PCHIP_SERROR__NXIO = common dso_local global i32 0, align 4
@TITAN__PCHIP_SERROR__SRC = common dso_local global i32 0, align 4
@TITAN__PCHIP_SERROR__SYN = common dso_local global i32 0, align 4
@TITAN__PCHIP_SERROR__UECC = common dso_local global i32 0, align 4
@err_print_prefix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @titan_parse_p_serror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titan_parse_p_serror(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MCHK_DISPOSITION_REPORT, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = and i64 %11, 31
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  store i32 %15, i32* %4, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
