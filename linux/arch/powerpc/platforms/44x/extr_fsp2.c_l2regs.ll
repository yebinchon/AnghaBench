; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_l2regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_l2regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"L2 Controller:\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"MCK:      0x%08x\0A\00", align 1
@L2MCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"INT:      0x%08x\0A\00", align 1
@L2INT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"PLBSTAT0: 0x%08x\0A\00", align 1
@L2PLBSTAT0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"PLBSTAT1: 0x%08x\0A\00", align 1
@L2PLBSTAT1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"ARRSTAT0: 0x%08x\0A\00", align 1
@L2ARRSTAT0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"ARRSTAT1: 0x%08x\0A\00", align 1
@L2ARRSTAT1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"ARRSTAT2: 0x%08x\0A\00", align 1
@L2ARRSTAT2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"CPUSTAT:  0x%08x\0A\00", align 1
@L2CPUSTAT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"RACSTAT0: 0x%08x\0A\00", align 1
@L2RACSTAT0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"WACSTAT0: 0x%08x\0A\00", align 1
@L2WACSTAT0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"WACSTAT1: 0x%08x\0A\00", align 1
@L2WACSTAT1 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"WACSTAT2: 0x%08x\0A\00", align 1
@L2WACSTAT2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"WDFSTAT:  0x%08x\0A\00", align 1
@L2WDFSTAT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"LOG0:     0x%08x\0A\00", align 1
@L2LOG0 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"LOG1:     0x%08x\0A\00", align 1
@L2LOG1 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"LOG2:     0x%08x\0A\00", align 1
@L2LOG2 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [18 x i8] c"LOG3:     0x%08x\0A\00", align 1
@L2LOG3 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"LOG4:     0x%08x\0A\00", align 1
@L2LOG4 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"LOG5:     0x%08x\0A\00", align 1
@L2LOG5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @l2regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2regs() #0 {
  %1 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @L2MCK, align 4
  %3 = call i32 @mfl2(i32 %2)
  %4 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @L2INT, align 4
  %6 = call i32 @mfl2(i32 %5)
  %7 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @L2PLBSTAT0, align 4
  %9 = call i32 @mfl2(i32 %8)
  %10 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @L2PLBSTAT1, align 4
  %12 = call i32 @mfl2(i32 %11)
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @L2ARRSTAT0, align 4
  %15 = call i32 @mfl2(i32 %14)
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @L2ARRSTAT1, align 4
  %18 = call i32 @mfl2(i32 %17)
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @L2ARRSTAT2, align 4
  %21 = call i32 @mfl2(i32 %20)
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @L2CPUSTAT, align 4
  %24 = call i32 @mfl2(i32 %23)
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @L2RACSTAT0, align 4
  %27 = call i32 @mfl2(i32 %26)
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @L2WACSTAT0, align 4
  %30 = call i32 @mfl2(i32 %29)
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @L2WACSTAT1, align 4
  %33 = call i32 @mfl2(i32 %32)
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @L2WACSTAT2, align 4
  %36 = call i32 @mfl2(i32 %35)
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @L2WDFSTAT, align 4
  %39 = call i32 @mfl2(i32 %38)
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @L2LOG0, align 4
  %42 = call i32 @mfl2(i32 %41)
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @L2LOG1, align 4
  %45 = call i32 @mfl2(i32 %44)
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @L2LOG2, align 4
  %48 = call i32 @mfl2(i32 %47)
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @L2LOG3, align 4
  %51 = call i32 @mfl2(i32 %50)
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @L2LOG4, align 4
  %54 = call i32 @mfl2(i32 %53)
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @L2LOG5, align 4
  %57 = call i32 @mfl2(i32 %56)
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %57)
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mfl2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
