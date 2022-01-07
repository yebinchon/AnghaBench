; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_bus = type { i32, i32, i32, %struct.pmac_i2c_host_kw* }
%struct.pmac_i2c_host_kw = type { i32, i32*, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@KW_I2C_MODE_STANDARD = common dso_local global i32 0, align 4
@KW_I2C_MODE_STANDARDSUB = common dso_local global i32 0, align 4
@KW_I2C_MODE_COMBINED = common dso_local global i32 0, align 4
@reg_isr = common dso_local global i32 0, align 4
@reg_mode = common dso_local global i32 0, align 4
@reg_status = common dso_local global i32 0, align 4
@reg_addr = common dso_local global i32 0, align 4
@KW_I2C_MODE_MODE_MASK = common dso_local global i32 0, align 4
@reg_subaddr = common dso_local global i32 0, align 4
@state_addr = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@KW_POLL_TIMEOUT = common dso_local global i64 0, align 8
@reg_ier = common dso_local global i32 0, align 4
@KW_I2C_IRQ_MASK = common dso_local global i32 0, align 4
@reg_control = common dso_local global i32 0, align 4
@KW_I2C_CTL_XADDR = common dso_local global i32 0, align 4
@state_idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmac_i2c_bus*, i32, i32, i32, i32*, i32)* @kw_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kw_i2c_xfer(%struct.pmac_i2c_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmac_i2c_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pmac_i2c_host_kw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.pmac_i2c_bus* %0, %struct.pmac_i2c_bus** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %20 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %19, i32 0, i32 3
  %21 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %20, align 8
  store %struct.pmac_i2c_host_kw* %21, %struct.pmac_i2c_host_kw** %14, align 8
  %22 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %23 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %25 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %26 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %31 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %6
  %36 = phi i1 [ false, %6 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %16, align 4
  %38 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %39 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %74 [
    i32 130, label %41
    i32 129, label %44
    i32 128, label %54
    i32 131, label %64
  ]

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %189

44:                                               ; preds = %35
  %45 = load i32, i32* @KW_I2C_MODE_STANDARD, align 4
  %46 = load i32, i32* %15, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %189

53:                                               ; preds = %44
  br label %74

54:                                               ; preds = %35
  %55 = load i32, i32* @KW_I2C_MODE_STANDARDSUB, align 4
  %56 = load i32, i32* %15, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %189

63:                                               ; preds = %54
  br label %74

64:                                               ; preds = %35
  %65 = load i32, i32* @KW_I2C_MODE_COMBINED, align 4
  %66 = load i32, i32* %15, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %189

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %35, %73, %63, %53
  %75 = load i32, i32* @reg_isr, align 4
  %76 = load i32, i32* @reg_isr, align 4
  %77 = call i32 @kw_read_reg(i32 %76)
  %78 = call i32 @kw_write_reg(i32 %75, i32 %77)
  %79 = load i32, i32* @reg_mode, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %82 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 4
  %85 = or i32 %80, %84
  %86 = call i32 @kw_write_reg(i32 %79, i32 %85)
  %87 = load i32, i32* @reg_status, align 4
  %88 = call i32 @kw_write_reg(i32 %87, i32 0)
  %89 = load i32, i32* @reg_addr, align 4
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 255
  %92 = call i32 @kw_write_reg(i32 %89, i32 %91)
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @KW_I2C_MODE_MODE_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @KW_I2C_MODE_STANDARDSUB, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %74
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @KW_I2C_MODE_MODE_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @KW_I2C_MODE_COMBINED, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98, %74
  %105 = load i32, i32* @reg_subaddr, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @kw_write_reg(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %98
  %109 = load i32*, i32** %12, align 8
  %110 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %111 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %114 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load i64, i64* @state_addr, align 8
  %116 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %117 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  %118 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %119 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %118, i32 0, i32 4
  store i32 0, i32* %119, align 8
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 1
  %122 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %123 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %125 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %128 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %108
  %132 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %133 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %132, i32 0, i32 7
  %134 = call i32 @reinit_completion(i32* %133)
  %135 = load i32, i32* @reg_isr, align 4
  %136 = load i32, i32* @reg_isr, align 4
  %137 = call i32 @kw_read_reg(i32 %136)
  %138 = call i32 @kw_write_reg(i32 %135, i32 %137)
  %139 = load i64, i64* @jiffies, align 8
  %140 = load i64, i64* @KW_POLL_TIMEOUT, align 8
  %141 = add nsw i64 %139, %140
  %142 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %143 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %142, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i64 %141, i64* %144, align 8
  %145 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %146 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %145, i32 0, i32 8
  %147 = call i32 @add_timer(%struct.TYPE_2__* %146)
  %148 = load i32, i32* @reg_ier, align 4
  %149 = load i32, i32* @KW_I2C_IRQ_MASK, align 4
  %150 = call i32 @kw_write_reg(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %131, %108
  %152 = load i32, i32* @reg_control, align 4
  %153 = load i32, i32* @KW_I2C_CTL_XADDR, align 4
  %154 = call i32 @kw_write_reg(i32 %152, i32 %153)
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %159 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %158, i32 0, i32 7
  %160 = call i32 @wait_for_completion(i32* %159)
  br label %183

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %168, %161
  %163 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %164 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @state_idle, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %162
  %169 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %170 = call i32 @kw_i2c_wait_interrupt(%struct.pmac_i2c_host_kw* %169)
  store i32 %170, i32* %18, align 4
  %171 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %172 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %171, i32 0, i32 6
  %173 = load i64, i64* %17, align 8
  %174 = call i32 @spin_lock_irqsave(i32* %172, i64 %173)
  %175 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @kw_i2c_handle_interrupt(%struct.pmac_i2c_host_kw* %175, i32 %176)
  %178 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %179 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %178, i32 0, i32 6
  %180 = load i64, i64* %17, align 8
  %181 = call i32 @spin_unlock_irqrestore(i32* %179, i64 %180)
  br label %162

182:                                              ; preds = %162
  br label %183

183:                                              ; preds = %182, %157
  %184 = load i32, i32* @reg_ier, align 4
  %185 = call i32 @kw_write_reg(i32 %184, i32 0)
  %186 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %187 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %183, %70, %60, %50, %41
  %190 = load i32, i32* %7, align 4
  ret i32 %190
}

declare dso_local i32 @kw_write_reg(i32, i32) #1

declare dso_local i32 @kw_read_reg(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kw_i2c_wait_interrupt(%struct.pmac_i2c_host_kw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kw_i2c_handle_interrupt(%struct.pmac_i2c_host_kw*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
