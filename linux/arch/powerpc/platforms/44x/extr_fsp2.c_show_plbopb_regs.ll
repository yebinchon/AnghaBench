; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_show_plbopb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_show_plbopb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"\0APLBOPB Bridge %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"GESR0: 0x%08x\0A\00", align 1
@PLB4OPB_GESR0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"GESR1: 0x%08x\0A\00", align 1
@PLB4OPB_GESR1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"GESR2: 0x%08x\0A\00", align 1
@PLB4OPB_GESR2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"GEARU: 0x%08x\0A\00", align 1
@PLB4OPB_GEARU = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"GEAR:  0x%08x\0A\00", align 1
@PLB4OPB_GEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @show_plbopb_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_plbopb_regs(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @PLB4OPB_GESR0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @mfdcr(i64 %9)
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @PLB4OPB_GESR1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @mfdcr(i64 %14)
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @PLB4OPB_GESR2, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @mfdcr(i64 %19)
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @PLB4OPB_GEARU, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mfdcr(i64 %24)
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @PLB4OPB_GEAR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @mfdcr(i64 %29)
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mfdcr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
