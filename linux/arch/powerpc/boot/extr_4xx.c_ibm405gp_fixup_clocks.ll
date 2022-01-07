; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm405gp_fixup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm405gp_fixup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCRN_CPC0_PLLMR = common dso_local global i32 0, align 4
@DCRN_405_CPC0_CR0 = common dso_local global i32 0, align 4
@DCRN_405_CPC0_CR1 = common dso_local global i32 0, align 4
@DCRN_405_CPC0_PSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"/plb\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/plb/opb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/plb/ebc\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@ef600300\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@ef600400\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibm405gp_fixup_clocks(i32 %0, i32 %1) #0 {
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
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %25 = load i32, i32* @DCRN_CPC0_PLLMR, align 4
  %26 = call i32 @mfdcr(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @DCRN_405_CPC0_CR0, align 4
  %28 = call i32 @mfdcr(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @DCRN_405_CPC0_CR1, align 4
  %30 = call i32 @mfdcr(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @DCRN_405_CPC0_PSR, align 4
  %32 = call i32 @mfdcr(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, -536870912
  %35 = lshr i32 %34, 29
  %36 = sub i32 8, %35
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 503316480
  %39 = ashr i32 %38, 25
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  store i32 16, i32* %19, align 4
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 393216
  %46 = ashr i32 %45, 17
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 98304
  %50 = ashr i32 %49, 15
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 24576
  %54 = ashr i32 %53, 13
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 6144
  %58 = ashr i32 %57, 11
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 62
  %62 = ashr i32 %61, 1
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %24, align 4
  %64 = call i32 (...) @mfpvr()
  %65 = and i32 %64, -16
  %66 = icmp eq i32 %65, 1351682384
  br i1 %66, label %67, label %139

67:                                               ; preds = %43
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 7
  %70 = sub nsw i32 8, %69
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 4096
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %18, align 4
  %80 = mul nsw i32 %79, 2
  %81 = load i32, i32* %23, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %16, align 4
  br label %89

83:                                               ; preds = %74
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %20, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %23, align 4
  %88 = mul nsw i32 %86, %87
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %83, %78
  br label %126

90:                                               ; preds = %67
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, 2048
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* %18, align 4
  %100 = mul nsw i32 %99, 2
  %101 = load i32, i32* %22, align 4
  %102 = mul nsw i32 %100, %101
  store i32 %102, i32* %16, align 4
  br label %107

103:                                              ; preds = %94
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %17, align 4
  %106 = mul nsw i32 %104, %105
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %103, %98
  br label %125

108:                                              ; preds = %90
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %20, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %22, align 4
  %117 = mul nsw i32 %115, %116
  store i32 %117, i32* %16, align 4
  br label %124

118:                                              ; preds = %108
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %18, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %20, align 4
  %123 = mul nsw i32 %121, %122
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %118, %112
  br label %125

125:                                              ; preds = %124, %107
  br label %126

126:                                              ; preds = %125, %89
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* %16, align 4
  %129 = mul i32 %127, %128
  %130 = load i32, i32* %17, align 4
  %131 = udiv i32 %129, %130
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %16, align 4
  %134 = mul i32 %132, %133
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %20, align 4
  %137 = mul nsw i32 %135, %136
  %138 = udiv i32 %134, %137
  store i32 %138, i32* %10, align 4
  br label %153

139:                                              ; preds = %43
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %19, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %20, align 4
  %144 = mul nsw i32 %142, %143
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %16, align 4
  %147 = mul i32 %145, %146
  %148 = load i32, i32* %17, align 4
  %149 = udiv i32 %147, %148
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %20, align 4
  %152 = sdiv i32 %150, %151
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %139, %126
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %21, align 4
  %156 = sdiv i32 %154, %155
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %22, align 4
  %159 = sdiv i32 %157, %158
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %6, align 4
  %161 = and i32 %160, 128
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i32, i32* %4, align 4
  store i32 %164, i32* %14, align 4
  br label %169

165:                                              ; preds = %153
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %24, align 4
  %168 = sdiv i32 %166, %167
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %165, %163
  %170 = load i32, i32* %6, align 4
  %171 = and i32 %170, 64
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* %4, align 4
  store i32 %174, i32* %15, align 4
  br label %179

175:                                              ; preds = %169
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %24, align 4
  %178 = sdiv i32 %176, %177
  store i32 %178, i32* %15, align 4
  br label %179

179:                                              ; preds = %175, %173
  %180 = load i32, i32* %7, align 4
  %181 = and i32 %180, -8388609
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* @DCRN_405_CPC0_CR1, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @mtdcr(i32 %182, i32 %183)
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @dt_fixup_cpu_clocks(i32 %186, i32 %187, i32 0)
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %197)
  ret void
}

declare dso_local i32 @mfdcr(i32) #1

declare dso_local i32 @mfpvr(...) #1

declare dso_local i32 @mtdcr(i32, i32) #1

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i32, i32) #1

declare dso_local i32 @dt_fixup_clock(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
