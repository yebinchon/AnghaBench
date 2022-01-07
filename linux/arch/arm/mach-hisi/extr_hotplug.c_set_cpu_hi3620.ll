; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_hotplug.c_set_cpu_hi3620.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_hotplug.c_set_cpu_hi3620.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU2_ISO_CTRL = common dso_local global i32 0, align 4
@ctrl_base = common dso_local global i64 0, align 8
@SCPERPWREN = common dso_local global i64 0, align 8
@SCCPUCOREEN = common dso_local global i64 0, align 8
@CPU0_DBG_SRST_REQ_EN = common dso_local global i32 0, align 4
@CPU0_NEON_SRST_REQ_EN = common dso_local global i32 0, align 4
@CPU0_SRST_REQ_EN = common dso_local global i32 0, align 4
@SCCPURSTDIS = common dso_local global i64 0, align 8
@CPU0_HPM_SRST_REQ_EN = common dso_local global i32 0, align 4
@SCCPURSTEN = common dso_local global i64 0, align 8
@SCISODIS = common dso_local global i64 0, align 8
@SCPERCTRL0 = common dso_local global i64 0, align 8
@CPU0_WFI_MASK_CFG = common dso_local global i32 0, align 4
@SCCPUCOREDIS = common dso_local global i64 0, align 8
@SCISOEN = common dso_local global i64 0, align 8
@SCPERPWRDIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_cpu_hi3620 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cpu_hi3620(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %98

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %23

14:                                               ; preds = %11, %8
  %15 = load i32, i32* @CPU2_ISO_CTRL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 %16, 2
  %18 = shl i32 %15, %17
  %19 = load i64, i64* @ctrl_base, align 8
  %20 = load i64, i64* @SCPERPWREN, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %18, i64 %21)
  br label %23

23:                                               ; preds = %14, %11
  %24 = call i32 @udelay(i32 100)
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 1, %25
  %27 = load i64, i64* @ctrl_base, align 8
  %28 = load i64, i64* @SCCPUCOREEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel_relaxed(i32 %26, i64 %29)
  %31 = load i32, i32* @CPU0_DBG_SRST_REQ_EN, align 4
  %32 = load i32, i32* @CPU0_NEON_SRST_REQ_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CPU0_SRST_REQ_EN, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %3, align 4
  %38 = shl i32 %36, %37
  %39 = load i64, i64* @ctrl_base, align 8
  %40 = load i64, i64* @SCCPURSTDIS, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 %38, i64 %41)
  %43 = load i32, i32* @CPU0_HPM_SRST_REQ_EN, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  %48 = shl i32 %46, %47
  %49 = load i64, i64* @ctrl_base, align 8
  %50 = load i64, i64* @SCCPURSTEN, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel_relaxed(i32 %48, i64 %51)
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %58, label %55

55:                                               ; preds = %23
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %67

58:                                               ; preds = %55, %23
  %59 = load i32, i32* @CPU2_ISO_CTRL, align 4
  %60 = load i32, i32* %3, align 4
  %61 = sub nsw i32 %60, 2
  %62 = shl i32 %59, %61
  %63 = load i64, i64* @ctrl_base, align 8
  %64 = load i64, i64* @SCISODIS, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel_relaxed(i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %58, %55
  %68 = call i32 @udelay(i32 1)
  %69 = load i64, i64* @ctrl_base, align 8
  %70 = load i64, i64* @SCPERCTRL0, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl_relaxed(i64 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @CPU0_WFI_MASK_CFG, align 4
  %74 = load i32, i32* %3, align 4
  %75 = shl i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i64, i64* @ctrl_base, align 8
  %81 = load i64, i64* @SCPERCTRL0, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel_relaxed(i32 %79, i64 %82)
  %84 = load i32, i32* @CPU0_DBG_SRST_REQ_EN, align 4
  %85 = load i32, i32* @CPU0_NEON_SRST_REQ_EN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @CPU0_SRST_REQ_EN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @CPU0_HPM_SRST_REQ_EN, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %3, align 4
  %93 = shl i32 %91, %92
  %94 = load i64, i64* @ctrl_base, align 8
  %95 = load i64, i64* @SCCPURSTDIS, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel_relaxed(i32 %93, i64 %96)
  br label %165

98:                                               ; preds = %2
  %99 = load i64, i64* @ctrl_base, align 8
  %100 = load i64, i64* @SCPERCTRL0, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @readl_relaxed(i64 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* @CPU0_WFI_MASK_CFG, align 4
  %104 = load i32, i32* %3, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i64, i64* @ctrl_base, align 8
  %110 = load i64, i64* @SCPERCTRL0, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel_relaxed(i32 %108, i64 %111)
  %113 = load i32, i32* %3, align 4
  %114 = shl i32 1, %113
  %115 = load i64, i64* @ctrl_base, align 8
  %116 = load i64, i64* @SCCPUCOREDIS, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel_relaxed(i32 %114, i64 %117)
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %124, label %121

121:                                              ; preds = %98
  %122 = load i32, i32* %3, align 4
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %134

124:                                              ; preds = %121, %98
  %125 = load i32, i32* @CPU2_ISO_CTRL, align 4
  %126 = load i32, i32* %3, align 4
  %127 = sub nsw i32 %126, 2
  %128 = shl i32 %125, %127
  %129 = load i64, i64* @ctrl_base, align 8
  %130 = load i64, i64* @SCISOEN, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel_relaxed(i32 %128, i64 %131)
  %133 = call i32 @udelay(i32 1)
  br label %134

134:                                              ; preds = %124, %121
  %135 = load i32, i32* @CPU0_DBG_SRST_REQ_EN, align 4
  %136 = load i32, i32* @CPU0_NEON_SRST_REQ_EN, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @CPU0_SRST_REQ_EN, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @CPU0_HPM_SRST_REQ_EN, align 4
  %141 = or i32 %139, %140
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %3, align 4
  %144 = shl i32 %142, %143
  %145 = load i64, i64* @ctrl_base, align 8
  %146 = load i64, i64* @SCCPURSTEN, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel_relaxed(i32 %144, i64 %147)
  %149 = load i32, i32* %3, align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %154, label %151

151:                                              ; preds = %134
  %152 = load i32, i32* %3, align 4
  %153 = icmp eq i32 %152, 3
  br i1 %153, label %154, label %164

154:                                              ; preds = %151, %134
  %155 = load i32, i32* @CPU2_ISO_CTRL, align 4
  %156 = load i32, i32* %3, align 4
  %157 = sub nsw i32 %156, 2
  %158 = shl i32 %155, %157
  %159 = load i64, i64* @ctrl_base, align 8
  %160 = load i64, i64* @SCPERPWRDIS, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writel_relaxed(i32 %158, i64 %161)
  %163 = call i32 @udelay(i32 100)
  br label %164

164:                                              ; preds = %154, %151
  br label %165

165:                                              ; preds = %164, %67
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
