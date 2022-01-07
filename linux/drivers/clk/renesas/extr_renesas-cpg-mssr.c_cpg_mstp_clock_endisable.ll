; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_renesas-cpg-mssr.c_cpg_mstp_clock_endisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_renesas-cpg-mssr.c_cpg_mstp_clock_endisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mstp_clock = type { i32, %struct.cpg_mssr_priv* }
%struct.cpg_mssr_priv = type { i64, i64, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"MSTP %u%02u/%pC %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to enable SMSTP %p[%d]\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @cpg_mstp_clock_endisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpg_mstp_clock_endisable(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mstp_clock*, align 8
  %7 = alloca %struct.cpg_mssr_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call %struct.mstp_clock* @to_mstp_clock(%struct.clk_hw* %15)
  store %struct.mstp_clock* %16, %struct.mstp_clock** %6, align 8
  %17 = load %struct.mstp_clock*, %struct.mstp_clock** %6, align 8
  %18 = getelementptr inbounds %struct.mstp_clock, %struct.mstp_clock* %17, i32 0, i32 1
  %19 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %18, align 8
  store %struct.cpg_mssr_priv* %19, %struct.cpg_mssr_priv** %7, align 8
  %20 = load %struct.mstp_clock*, %struct.mstp_clock** %6, align 8
  %21 = getelementptr inbounds %struct.mstp_clock, %struct.mstp_clock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %22, 32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.mstp_clock*, %struct.mstp_clock** %6, align 8
  %25 = getelementptr inbounds %struct.mstp_clock, %struct.mstp_clock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = srem i32 %26, 32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %29 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %28, i32 0, i32 3
  %30 = load %struct.device*, %struct.device** %29, align 8
  store %struct.device* %30, %struct.device** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @BIT(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %37 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %43 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %38, i8* %42)
  %44 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %45 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %44, i32 0, i32 2
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %49 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %2
  %53 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %54 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @STBCR(i32 %56)
  %58 = add nsw i64 %55, %57
  %59 = call i32 @readb(i64 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %14, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %71

67:                                               ; preds = %52
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %74 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @STBCR(i32 %76)
  %78 = add nsw i64 %75, %77
  %79 = call i32 @writeb(i32 %72, i64 %78)
  %80 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %81 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @STBCR(i32 %83)
  %85 = add nsw i64 %82, %84
  %86 = call i32 @readb(i64 %85)
  %87 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %88 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @STBCR(i32 %90)
  %92 = add nsw i64 %89, %91
  %93 = call i32 @barrier_data(i64 %92)
  br label %122

94:                                               ; preds = %2
  %95 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %96 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @SMSTPCR(i32 %98)
  %100 = add nsw i64 %97, %99
  %101 = call i32 @readl(i64 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load i32, i32* %11, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %14, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %113

109:                                              ; preds = %94
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %109, %104
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %116 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i64 @SMSTPCR(i32 %118)
  %120 = add nsw i64 %117, %119
  %121 = call i32 @writel(i32 %114, i64 %120)
  br label %122

122:                                              ; preds = %113, %71
  %123 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %124 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %123, i32 0, i32 2
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %131 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129, %122
  store i32 0, i32* %3, align 4
  br label %172

135:                                              ; preds = %129
  store i32 1000, i32* %13, align 4
  br label %136

136:                                              ; preds = %153, %135
  %137 = load i32, i32* %13, align 4
  %138 = icmp ugt i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %136
  %140 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %141 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i64 @MSTPSR(i32 %143)
  %145 = add nsw i64 %142, %144
  %146 = call i32 @readl(i64 %145)
  %147 = load i32, i32* %11, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %139
  br label %156

151:                                              ; preds = %139
  %152 = call i32 (...) @cpu_relax()
  br label %153

153:                                              ; preds = %151
  %154 = load i32, i32* %13, align 4
  %155 = add i32 %154, -1
  store i32 %155, i32* %13, align 4
  br label %136

156:                                              ; preds = %150, %136
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %156
  %160 = load %struct.device*, %struct.device** %10, align 8
  %161 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %162 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i64 @SMSTPCR(i32 %164)
  %166 = add nsw i64 %163, %165
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @dev_err(%struct.device* %160, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %166, i32 %167)
  %169 = load i32, i32* @ETIMEDOUT, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %172

171:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %159, %134
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.mstp_clock* @to_mstp_clock(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @STBCR(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @barrier_data(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @SMSTPCR(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @MSTPSR(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
