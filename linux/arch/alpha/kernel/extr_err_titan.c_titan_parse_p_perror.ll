; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_titan.c_titan_parse_p_perror.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_titan.c_titan_parse_p_perror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCHK_DISPOSITION_REPORT = common dso_local global i32 0, align 4
@MCHK_DISPOSITION_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__CMD = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__ADDR = common dso_local global i32 0, align 4
@MCHK_DISPOSITION_DISMISS = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__APE = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__DAC = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__DCRTO = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__DPE = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__ERRMASK = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__IPTPR = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__IPTPW = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__LOST = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__MWIN = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__NDS = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__PERR = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__SERR = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__SGE = common dso_local global i32 0, align 4
@TITAN__PCHIP_PERROR__TA = common dso_local global i32 0, align 4
@err_print_prefix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @titan_parse_p_perror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titan_parse_p_perror(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @MCHK_DISPOSITION_REPORT, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = and i64 %15, 2047
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  store i32 %19, i32* %5, align 4
  br label %59

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @TITAN__PCHIP_PERROR__CMD, align 4
  %23 = call i32 @EXTRACT(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @TITAN__PCHIP_PERROR__ADDR, align 4
  %26 = call i32 @EXTRACT(i32 %24, i32 %25)
  %27 = shl i32 %26, 2
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, 256
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, 2047
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %38, label %57

38:                                               ; preds = %33, %20
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 14
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %43, 4096
  br i1 %44, label %55, label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 14
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i64, i64* %11, align 8
  %51 = icmp uge i64 %50, 655360
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i64, i64* %11, align 8
  %54 = icmp ult i64 %53, 1048576
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %42
  %56 = load i32, i32* @MCHK_DISPOSITION_DISMISS, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %55, %52, %49, %45, %33
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %18
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @EXTRACT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
