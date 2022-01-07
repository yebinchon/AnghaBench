; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip28-berr.c_check_microtlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip28-berr.c_check_microtlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sgimc = common dso_local global %struct.TYPE_2__* null, align 8
@cpu_err_addr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @check_microtlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_microtlb(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = and i64 %12, 2147483647
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %76

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = lshr i64 %18, 21
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 1
  %22 = ashr i32 %21, 22
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %17
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 14, i32 12
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 6
  %40 = shl i32 %39, 12
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = lshr i64 %42, %44
  %46 = and i64 %45, 511
  %47 = mul i64 8, %46
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @PFN_DOWN(i64 %50)
  %52 = call i64 @page_is_ram(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %32
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @PHYS_TO_XKSEG_UNCACHED(i64 %55)
  %57 = inttoptr i64 %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = and i64 %59, 63
  %61 = shl i64 %60, 6
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 1, %63
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = and i64 %62, %66
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* @cpu_err_addr, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %77

74:                                               ; preds = %32
  br label %75

75:                                               ; preds = %74, %25
  br label %76

76:                                               ; preds = %75, %17, %3
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @page_is_ram(i32) #1

declare dso_local i32 @PFN_DOWN(i64) #1

declare dso_local i64 @PHYS_TO_XKSEG_UNCACHED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
