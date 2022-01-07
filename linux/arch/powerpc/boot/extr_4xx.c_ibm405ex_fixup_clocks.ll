; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm405ex_fixup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm405ex_fixup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCRN_CPR0_PLLC = common dso_local global i32 0, align 4
@DCRN_CPR0_PLLD = common dso_local global i32 0, align 4
@DCRN_CPR0_PRIMAD = common dso_local global i32 0, align 4
@DCRN_CPR0_PRIMBD = common dso_local global i32 0, align 4
@DCRN_CPR0_OPBD = common dso_local global i32 0, align 4
@DCRN_CPR0_PERD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"WARNING ! Invalid PLL feedback source !\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/plb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/plb/opb\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"/plb/opb/ebc\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@ef600200\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@ef600300\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibm405ex_fixup_clocks(i32 %0, i32 %1) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %27 = load i32, i32* @DCRN_CPR0_PLLC, align 4
  %28 = call i32 @CPR0_READ(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @DCRN_CPR0_PLLD, align 4
  %30 = call i32 @CPR0_READ(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @DCRN_CPR0_PRIMAD, align 4
  %32 = call i32 @CPR0_READ(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @DCRN_CPR0_PRIMBD, align 4
  %34 = call i32 @CPR0_READ(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @DCRN_CPR0_OPBD, align 4
  %36 = call i32 @CPR0_READ(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @DCRN_CPR0_PERD, align 4
  %38 = call i32 @CPR0_READ(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 255
  %42 = call i32 @__fix_zero(i32 %41, i32 1)
  %43 = call i32 @ibm405ex_get_fbdv(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 15
  %47 = call i32 @__fix_zero(i32 %46, i32 1)
  %48 = call i32 @ibm405ex_get_fwdva(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 24
  %51 = and i32 %50, 7
  %52 = call i32 @__fix_zero(i32 %51, i32 8)
  store i32 %52, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 16
  %55 = and i32 %54, 7
  %56 = call i32 @__fix_zero(i32 %55, i32 8)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 24
  %59 = and i32 %58, 3
  %60 = call i32 @__fix_zero(i32 %59, i32 4)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %10, align 4
  %62 = ashr i32 %61, 24
  %63 = and i32 %62, 3
  %64 = call i32 @__fix_zero(i32 %63, i32 4)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 1073741824
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %2
  %69 = load i32, i32* %5, align 4
  %70 = ashr i32 %69, 24
  %71 = and i32 %70, 7
  switch i32 %71, label %92 [
    i32 0, label %72
    i32 1, label %74
    i32 5, label %80
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %26, align 4
  br label %94

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %13, align 4
  %79 = mul nsw i32 %77, %78
  store i32 %79, i32* %26, align 4
  br label %94

80:                                               ; preds = %68
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %15, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %14, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %16, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %17, align 4
  %91 = mul nsw i32 %89, %90
  store i32 %91, i32* %26, align 4
  br label %94

92:                                               ; preds = %68
  %93 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %99

94:                                               ; preds = %80, %74, %72
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %26, align 4
  %97 = mul i32 %95, %96
  store i32 %97, i32* %22, align 4
  br label %100

98:                                               ; preds = %2
  br label %99

99:                                               ; preds = %98, %92
  store i32 0, i32* %22, align 4
  br label %100

100:                                              ; preds = %99, %94
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sdiv i32 %101, %104
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %15, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %14, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sdiv i32 %106, %111
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %16, align 4
  %115 = sdiv i32 %113, %114
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %17, align 4
  %118 = sdiv i32 %116, %117
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %18, align 4
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %25, align 4
  store i32 %120, i32* %24, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %23, align 4
  %123 = call i32 @dt_fixup_cpu_clocks(i32 %121, i32 %122, i32 0)
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %20, align 4
  %127 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %21, align 4
  %129 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %24, align 4
  %131 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %25, align 4
  %133 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  ret void
}

declare dso_local i32 @CPR0_READ(i32) #1

declare dso_local i32 @ibm405ex_get_fbdv(i32) #1

declare dso_local i32 @__fix_zero(i32, i32) #1

declare dso_local i32 @ibm405ex_get_fwdva(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i32, i32) #1

declare dso_local i32 @dt_fixup_clock(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
