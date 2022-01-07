; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm405ep_fixup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm405ep_fixup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCRN_CPC0_PLLMR0 = common dso_local global i32 0, align 4
@DCRN_CPC0_PLLMR1 = common dso_local global i32 0, align 4
@DCRN_CPC0_UCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"/plb\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/plb/opb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/plb/ebc\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@ef600300\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@ef600400\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibm405ep_fixup_clocks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %21 = load i32, i32* @DCRN_CPC0_PLLMR0, align 4
  %22 = call i32 @mfdcr(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @DCRN_CPC0_PLLMR1, align 4
  %24 = call i32 @mfdcr(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @DCRN_CPC0_UCR, align 4
  %26 = call i32 @mfdcr(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 458752
  %29 = ashr i32 %28, 16
  %30 = sub nsw i32 8, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 28672
  %33 = ashr i32 %32, 12
  %34 = sub nsw i32 8, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 15728640
  %37 = ashr i32 %36, 20
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  store i32 16, i32* %14, align 4
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 196608
  %44 = ashr i32 %43, 16
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 768
  %48 = ashr i32 %47, 8
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 12288
  %52 = ashr i32 %51, 12
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 3145728
  %59 = ashr i32 %58, 20
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, -2147483648
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %41
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* %20, align 4
  %67 = mul i32 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %18, align 4
  %70 = mul nsw i32 %68, %69
  %71 = udiv i32 %67, %70
  store i32 %71, i32* %6, align 4
  br label %76

72:                                               ; preds = %41
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* %18, align 4
  %75 = udiv i32 %73, %74
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %64
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %15, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %16, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %17, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, 127
  %90 = sdiv i32 %87, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, 32512
  %94 = ashr i32 %93, 8
  %95 = sdiv i32 %91, %94
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @dt_fixup_cpu_clocks(i32 %96, i32 %97, i32 0)
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  ret void
}

declare dso_local i32 @mfdcr(i32) #1

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i32, i32) #1

declare dso_local i32 @dt_fixup_clock(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
