; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_tlb.c_replace_tlb_one_pid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_tlb.c_replace_tlb_one_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CTL_PTEADDR = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TLBMISC_RD = common dso_local global i32 0, align 4
@TLBMISC_WAY_SHIFT = common dso_local global i32 0, align 4
@CTL_TLBMISC = common dso_local global i32 0, align 4
@TLBMISC_PID_SHIFT = common dso_local global i64 0, align 8
@TLBMISC_PID_MASK = common dso_local global i64 0, align 8
@TLBMISC_WE = common dso_local global i64 0, align 8
@CTL_TLBACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @replace_tlb_one_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_tlb_one_pid(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = call i32 @get_misc_and_pid(i64* %8, i64* %9)
  %14 = load i32, i32* @CTL_PTEADDR, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  %18 = shl i64 %17, 2
  %19 = call i32 @WRCTL(i32 %14, i64 %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %81, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %20
  %25 = load i32, i32* @TLBMISC_RD, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TLBMISC_WAY_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %11, align 8
  %31 = load i32, i32* @CTL_TLBMISC, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @WRCTL(i32 %31, i64 %32)
  %34 = load i32, i32* @CTL_PTEADDR, align 4
  %35 = call i64 @RDCTL(i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = lshr i64 %36, 2
  %38 = and i64 %37, 1048575
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @PAGE_SHIFT, align 8
  %41 = lshr i64 %39, %40
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %81

44:                                               ; preds = %24
  %45 = load i32, i32* @CTL_TLBMISC, align 4
  %46 = call i64 @RDCTL(i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @TLBMISC_PID_SHIFT, align 8
  %49 = lshr i64 %47, %48
  %50 = load i64, i64* @TLBMISC_PID_MASK, align 8
  %51 = and i64 %49, %50
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %81

56:                                               ; preds = %44
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @TLBMISC_PID_SHIFT, align 8
  %59 = shl i64 %57, %58
  %60 = load i64, i64* @TLBMISC_WE, align 8
  %61 = or i64 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @TLBMISC_WAY_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = zext i32 %64 to i64
  %66 = or i64 %61, %65
  store i64 %66, i64* %11, align 8
  %67 = load i32, i32* @CTL_TLBMISC, align 4
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @WRCTL(i32 %67, i64 %68)
  %70 = load i64, i64* %6, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load i32, i32* @CTL_PTEADDR, align 4
  %74 = load i64, i64* %4, align 8
  %75 = call i64 @pteaddr_invalid(i64 %74)
  %76 = call i32 @WRCTL(i32 %73, i64 %75)
  br label %77

77:                                               ; preds = %72, %56
  %78 = load i32, i32* @CTL_TLBACC, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @WRCTL(i32 %78, i64 %79)
  br label %84

81:                                               ; preds = %55, %43
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %20

84:                                               ; preds = %77, %20
  %85 = load i32, i32* @CTL_TLBMISC, align 4
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @WRCTL(i32 %85, i64 %86)
  ret void
}

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
