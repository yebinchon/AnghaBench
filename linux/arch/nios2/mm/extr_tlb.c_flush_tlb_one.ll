; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_tlb.c_flush_tlb_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_tlb.c_flush_tlb_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Flush tlb-entry for vaddr=%#lx\0A\00", align 1
@CTL_PTEADDR = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TLBMISC_RD = common dso_local global i32 0, align 4
@TLBMISC_WAY_SHIFT = common dso_local global i32 0, align 4
@CTL_TLBMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Flush entry by writing way=%dl pid=%ld\0A\00", align 1
@TLBMISC_PID_SHIFT = common dso_local global i64 0, align 8
@TLBMISC_WE = common dso_local global i32 0, align 4
@CTL_TLBACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @flush_tlb_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_tlb_one(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @get_misc_and_pid(i64* %4, i64* %5)
  %12 = load i32, i32* @CTL_PTEADDR, align 4
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  %16 = shl i64 %15, 2
  %17 = call i32 @WRCTL(i32 %12, i64 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %63, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %18
  %23 = load i32, i32* @TLBMISC_RD, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @TLBMISC_WAY_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = load i32, i32* @CTL_TLBMISC, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @WRCTL(i32 %29, i64 %30)
  %32 = load i32, i32* @CTL_PTEADDR, align 4
  %33 = call i64 @RDCTL(i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = lshr i64 %34, 2
  %36 = and i64 %35, 1048575
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* @PAGE_SHIFT, align 8
  %39 = lshr i64 %37, %38
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %63

42:                                               ; preds = %22
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @TLBMISC_PID_SHIFT, align 8
  %46 = lshr i64 %44, %45
  %47 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %46)
  %48 = load i32, i32* @TLBMISC_WE, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @TLBMISC_WAY_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* @CTL_TLBMISC, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @WRCTL(i32 %54, i64 %55)
  %57 = load i32, i32* @CTL_PTEADDR, align 4
  %58 = load i64, i64* %2, align 8
  %59 = call i64 @pteaddr_invalid(i64 %58)
  %60 = call i32 @WRCTL(i32 %57, i64 %59)
  %61 = load i32, i32* @CTL_TLBACC, align 4
  %62 = call i32 @WRCTL(i32 %61, i64 0)
  br label %63

63:                                               ; preds = %42, %41
  %64 = load i32, i32* %3, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %18

66:                                               ; preds = %18
  %67 = load i32, i32* @CTL_TLBMISC, align 4
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @WRCTL(i32 %67, i64 %68)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @get_misc_and_pid(i64*, i64*) #1

declare dso_local i32 @WRCTL(i32, i64) #1

declare dso_local i64 @RDCTL(i32) #1

declare dso_local i64 @pteaddr_invalid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
