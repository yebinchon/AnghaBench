; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c___ibm440eplike_fixup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c___ibm440eplike_fixup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCRN_CPR0_PLLC = common dso_local global i32 0, align 4
@DCRN_CPR0_PLLD = common dso_local global i32 0, align 4
@DCRN_CPR0_PRIMAD = common dso_local global i32 0, align 4
@DCRN_CPR0_PRIMBD = common dso_local global i32 0, align 4
@DCRN_CPR0_OPBD = common dso_local global i32 0, align 4
@DCRN_CPR0_PERD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"WARNING ! Invalid PLL feedback source !\0A\00", align 1
@SPRN_CCR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"/plb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/plb/opb\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"/plb/opb/ebc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @__ibm440eplike_fixup_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ibm440eplike_fixup_clocks(i32 %0, i32 %1, i32 %2) #0 {
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
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %27 = load i32, i32* @DCRN_CPR0_PLLC, align 4
  %28 = call i32 @CPR0_READ(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @DCRN_CPR0_PLLD, align 4
  %30 = call i32 @CPR0_READ(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 31
  %34 = call i32 @__fix_zero(i32 %33, i32 32)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 15
  %38 = call i32 @__fix_zero(i32 %37, i32 16)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 7
  %42 = call i32 @__fix_zero(i32 %41, i32 8)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 63
  %45 = call i32 @__fix_zero(i32 %44, i32 64)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @DCRN_CPR0_PRIMAD, align 4
  %47 = call i32 @CPR0_READ(i32 %46)
  %48 = ashr i32 %47, 24
  %49 = and i32 %48, 7
  %50 = call i32 @__fix_zero(i32 %49, i32 8)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @DCRN_CPR0_PRIMBD, align 4
  %52 = call i32 @CPR0_READ(i32 %51)
  %53 = ashr i32 %52, 24
  %54 = and i32 %53, 7
  %55 = call i32 @__fix_zero(i32 %54, i32 8)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* @DCRN_CPR0_OPBD, align 4
  %57 = call i32 @CPR0_READ(i32 %56)
  %58 = ashr i32 %57, 24
  %59 = and i32 %58, 3
  %60 = call i32 @__fix_zero(i32 %59, i32 4)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* @DCRN_CPR0_PERD, align 4
  %62 = call i32 @CPR0_READ(i32 %61)
  %63 = ashr i32 %62, 24
  %64 = and i32 %63, 3
  %65 = call i32 @__fix_zero(i32 %64, i32 4)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 1073741824
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %3
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %71, 24
  %73 = and i32 %72, 7
  switch i32 %73, label %98 [
    i32 0, label %74
    i32 1, label %86
    i32 5, label %90
  ]

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 536870912
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 %83, %84
  store i32 %85, i32* %26, align 4
  br label %100

86:                                               ; preds = %70
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* %26, align 4
  br label %100

90:                                               ; preds = %70
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %14, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %15, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %16, align 4
  %97 = mul nsw i32 %95, %96
  store i32 %97, i32* %26, align 4
  br label %100

98:                                               ; preds = %70
  %99 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %114

100:                                              ; preds = %90, %86, %82
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %26, align 4
  %103 = mul nsw i32 %102, %101
  store i32 %103, i32* %26, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %26, align 4
  %106 = mul i32 %104, %105
  store i32 %106, i32* %23, align 4
  %107 = load i32, i32* %23, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sdiv i32 %107, %108
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sdiv i32 %110, %111
  store i32 %112, i32* %18, align 4
  br label %116

113:                                              ; preds = %3
  br label %114

114:                                              ; preds = %113, %98
  store i32 0, i32* %23, align 4
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %18, align 4
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %114, %100
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %14, align 4
  %122 = sdiv i32 %120, %121
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* %15, align 4
  %125 = sdiv i32 %123, %124
  store i32 %125, i32* %21, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %116
  %129 = load i32, i32* %21, align 4
  br label %132

130:                                              ; preds = %116
  %131 = load i32, i32* %20, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = load i32, i32* %16, align 4
  %135 = sdiv i32 %133, %134
  store i32 %135, i32* %22, align 4
  %136 = load i32, i32* @SPRN_CCR1, align 4
  %137 = call i32 @mfspr(i32 %136)
  store i32 %137, i32* %24, align 4
  %138 = load i32, i32* %25, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load i32, i32* %24, align 4
  %142 = and i32 %141, -129
  store i32 %142, i32* %24, align 4
  %143 = load i32, i32* @SPRN_CCR1, align 4
  %144 = load i32, i32* %24, align 4
  %145 = call i32 @mtspr(i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %132
  %147 = load i32, i32* %24, align 4
  %148 = and i32 %147, 128
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* %19, align 4
  store i32 %151, i32* %25, align 4
  br label %152

152:                                              ; preds = %150, %146
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %25, align 4
  %155 = call i32 @dt_fixup_cpu_clocks(i32 %153, i32 %154, i32 0)
  %156 = load i32, i32* %20, align 4
  %157 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %21, align 4
  %159 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %22, align 4
  %161 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %20, align 4
  ret i32 %162
}

declare dso_local i32 @CPR0_READ(i32) #1

declare dso_local i32 @__fix_zero(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i32, i32) #1

declare dso_local i32 @dt_fixup_clock(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
