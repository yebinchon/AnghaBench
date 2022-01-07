; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ar7/extr_clock.c_tnetd7300_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ar7/extr_clock.c_tnetd7300_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tnetd7300_clock = type { i32, i32 }

@AR7_REF_CLOCK = common dso_local global i32 0, align 4
@PREDIV_MASK = common dso_local global i32 0, align 4
@PREDIV_SHIFT = common dso_local global i32 0, align 4
@POSTDIV_MASK = common dso_local global i32 0, align 4
@MUL_MASK = common dso_local global i32 0, align 4
@MUL_SHIFT = common dso_local global i32 0, align 4
@BOOT_PLL_SOURCE_MASK = common dso_local global i32 0, align 4
@AR7_XTAL_CLOCK = common dso_local global i32 0, align 4
@cpu_clk = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BOOT_PLL_BYPASS = common dso_local global i32 0, align 4
@PLL_MODE_MASK = common dso_local global i32 0, align 4
@PLL_NDIV = common dso_local global i32 0, align 4
@PLL_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tnetd7300_clock*, i32*, i32)* @tnetd7300_get_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnetd7300_get_clock(i32 %0, %struct.tnetd7300_clock* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tnetd7300_clock*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.tnetd7300_clock* %1, %struct.tnetd7300_clock** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @AR7_REF_CLOCK, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.tnetd7300_clock*, %struct.tnetd7300_clock** %7, align 8
  %20 = getelementptr inbounds %struct.tnetd7300_clock, %struct.tnetd7300_clock* %19, i32 0, i32 1
  %21 = call i32 @readl(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.tnetd7300_clock*, %struct.tnetd7300_clock** %7, align 8
  %23 = getelementptr inbounds %struct.tnetd7300_clock, %struct.tnetd7300_clock* %22, i32 0, i32 0
  %24 = call i32 @readl(i32* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @PREDIV_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PREDIV_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @POSTDIV_MASK, align 4
  %33 = and i32 %31, %32
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @MUL_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @MUL_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %17, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BOOT_PLL_SOURCE_MASK, align 4
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %49, %50
  switch i32 %51, label %60 [
    i32 131, label %52
    i32 129, label %54
    i32 128, label %56
    i32 130, label %58
  ]

52:                                               ; preds = %4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %11, align 4
  br label %60

54:                                               ; preds = %4
  %55 = load i32, i32* @AR7_REF_CLOCK, align 4
  store i32 %55, i32* %11, align 4
  br label %60

56:                                               ; preds = %4
  %57 = load i32, i32* @AR7_XTAL_CLOCK, align 4
  store i32 %57, i32* %11, align 4
  br label %60

58:                                               ; preds = %4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_clk, i32 0, i32 0), align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %4, %58, %56, %54, %52
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BOOT_PLL_BYPASS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %5, align 4
  br label %126

70:                                               ; preds = %60
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @PLL_MODE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %17, align 4
  %78 = sdiv i32 %77, 16
  %79 = add nsw i32 %78, 1
  %80 = ashr i32 %76, %79
  %81 = load i32, i32* %16, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %5, align 4
  br label %126

83:                                               ; preds = %70
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @PLL_NDIV, align 4
  %86 = load i32, i32* @PLL_DIV, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = load i32, i32* @PLL_NDIV, align 4
  %90 = load i32, i32* @PLL_DIV, align 4
  %91 = or i32 %89, %90
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %83
  %94 = load i32, i32* %17, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %17, align 4
  %100 = mul nsw i32 %98, %99
  %101 = ashr i32 %100, 1
  br label %108

102:                                              ; preds = %93
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %17, align 4
  %105 = sub nsw i32 %104, 1
  %106 = mul nsw i32 %103, %105
  %107 = ashr i32 %106, 2
  br label %108

108:                                              ; preds = %102, %97
  %109 = phi i32 [ %101, %97 ], [ %107, %102 ]
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %16, align 4
  %112 = sdiv i32 %110, %111
  store i32 %112, i32* %5, align 4
  br label %126

113:                                              ; preds = %83
  %114 = load i32, i32* %17, align 4
  %115 = icmp eq i32 %114, 16
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %16, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %5, align 4
  br label %126

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %17, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %16, align 4
  %125 = sdiv i32 %123, %124
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %120, %116, %108, %75, %66
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
