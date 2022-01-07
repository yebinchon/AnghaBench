; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_tlb.c_flush_tlb_pid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_tlb.c_flush_tlb_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CTL_PTEADDR = common dso_local global i32 0, align 4
@TLBMISC_RD = common dso_local global i32 0, align 4
@TLBMISC_WAY_SHIFT = common dso_local global i32 0, align 4
@CTL_TLBMISC = common dso_local global i32 0, align 4
@TLBMISC_PID_SHIFT = common dso_local global i64 0, align 8
@TLBMISC_PID_MASK = common dso_local global i64 0, align 8
@TLBMISC_WE = common dso_local global i32 0, align 4
@CTL_TLBACC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_pid(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %10 = call i32 @get_misc_and_pid(i64* %6, i64* %7)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %64, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = load i32, i32* @CTL_PTEADDR, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @pteaddr_invalid(i64 %17)
  %19 = call i32 @WRCTL(i32 %16, i64 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %57, %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load i32, i32* @TLBMISC_RD, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TLBMISC_WAY_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* @CTL_TLBMISC, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @WRCTL(i32 %31, i64 %32)
  %34 = load i32, i32* @CTL_TLBMISC, align 4
  %35 = call i64 @RDCTL(i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @TLBMISC_PID_SHIFT, align 8
  %38 = lshr i64 %36, %37
  %39 = load i64, i64* @TLBMISC_PID_MASK, align 8
  %40 = and i64 %38, %39
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %2, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %57

45:                                               ; preds = %24
  %46 = load i32, i32* @TLBMISC_WE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @TLBMISC_WAY_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %8, align 8
  %52 = load i32, i32* @CTL_TLBMISC, align 4
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @WRCTL(i32 %52, i64 %53)
  %55 = load i32, i32* @CTL_TLBACC, align 4
  %56 = call i32 @WRCTL(i32 %55, i64 0)
  br label %57

57:                                               ; preds = %45, %44
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %20

60:                                               ; preds = %20
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %11

67:                                               ; preds = %11
  %68 = load i32, i32* @CTL_TLBMISC, align 4
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @WRCTL(i32 %68, i64 %69)
  ret void
}

declare dso_local i32 @get_misc_and_pid(i64*, i64*) #1

declare dso_local i32 @WRCTL(i32, i64) #1

declare dso_local i64 @pteaddr_invalid(i64) #1

declare dso_local i64 @RDCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
