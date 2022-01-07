; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_tst_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_tst_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i64*, i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@TST_SWITCH_WAIT = common dso_local global i32 0, align 4
@SAR_REG_NOW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TSTE_OPC_JMP = common dso_local global i64 0, align 8
@TSTE_PUSH_IDLE = common dso_local global i32 0, align 4
@TSTE_MASK = common dso_local global i64 0, align 8
@TST_SWITCH_PENDING = common dso_local global i32 0, align 4
@TSTE_PUSH_ACTIVE = common dso_local global i32 0, align 4
@TSTE_OPC_NULL = common dso_local global i64 0, align 8
@card = common dso_local global %struct.idt77252_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tst_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tst_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %10 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %11 = ptrtoint %struct.idt77252_dev* %10 to i32
  %12 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %13 = call %struct.idt77252_dev* @from_timer(i32 %11, %struct.timer_list* %12, void (%struct.timer_list*)* @tst_timer)
  store %struct.idt77252_dev* %13, %struct.idt77252_dev** %3, align 8
  %14 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %15 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %14, i32 0, i32 3
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %19 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %22 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %4, align 8
  %26 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %27 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %30 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = xor i64 %31, 1
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  %35 = load i32, i32* @TST_SWITCH_WAIT, align 4
  %36 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %37 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %36, i32 0, i32 5
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %154

40:                                               ; preds = %1
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %43 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = sub i64 %45, 2
  store i64 %46, i64* %6, align 8
  %47 = load i32, i32* @SAR_REG_NOW, align 4
  %48 = call i32 @readl(i32 %47)
  %49 = ashr i32 %48, 2
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %5, align 8
  %53 = xor i64 %51, %52
  %54 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %55 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, 1
  %58 = xor i64 %57, -1
  %59 = and i64 %53, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %40
  %62 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %63 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %62, i32 0, i32 4
  %64 = load i64, i64* @jiffies, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i32 @mod_timer(i32* %63, i64 %65)
  br label %245

67:                                               ; preds = %40
  %68 = load i32, i32* @TST_SWITCH_WAIT, align 4
  %69 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %70 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %69, i32 0, i32 5
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  %72 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %73 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = xor i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @TSTE_OPC_JMP, align 8
  %79 = load i64, i64* %4, align 8
  %80 = shl i64 %79, 2
  %81 = or i64 %78, %80
  %82 = call i32 @write_sram(%struct.idt77252_dev* %76, i64 %77, i64 %81)
  %83 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %84 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %87 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %4, align 8
  %91 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %92 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %95 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = xor i64 %96, 1
  %98 = getelementptr inbounds i64, i64* %93, i64 %97
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %150, %67
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %104 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, 2
  %107 = icmp ult i64 %102, %106
  br i1 %107, label %108, label %153

108:                                              ; preds = %100
  %109 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %110 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %109, i32 0, i32 6
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @TSTE_PUSH_IDLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %108
  %121 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %122, %124
  %126 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %127 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %126, i32 0, i32 6
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @TSTE_MASK, align 8
  %136 = and i64 %134, %135
  %137 = call i32 @write_sram(%struct.idt77252_dev* %121, i64 %125, i64 %136)
  %138 = load i32, i32* @TSTE_PUSH_IDLE, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %141 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %140, i32 0, i32 6
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %139
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %120, %108
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %100

153:                                              ; preds = %100
  br label %154

154:                                              ; preds = %153, %1
  %155 = load i32, i32* @TST_SWITCH_PENDING, align 4
  %156 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %157 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %156, i32 0, i32 5
  %158 = call i64 @test_and_clear_bit(i32 %155, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %244

160:                                              ; preds = %154
  store i32 0, i32* %9, align 4
  br label %161

161:                                              ; preds = %221, %160
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %165 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = sub i64 %166, 2
  %168 = icmp ult i64 %163, %167
  br i1 %168, label %169, label %224

169:                                              ; preds = %161
  %170 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %171 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %170, i32 0, i32 6
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @TSTE_PUSH_ACTIVE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %220

181:                                              ; preds = %169
  %182 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %183 = load i64, i64* %5, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 %183, %185
  %187 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %188 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %187, i32 0, i32 6
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* @TSTE_MASK, align 8
  %197 = and i64 %195, %196
  %198 = call i32 @write_sram(%struct.idt77252_dev* %182, i64 %186, i64 %197)
  %199 = load i32, i32* @TSTE_PUSH_ACTIVE, align 4
  %200 = xor i32 %199, -1
  %201 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %202 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %201, i32 0, i32 6
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %200
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* @TSTE_PUSH_IDLE, align 4
  %211 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %212 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %211, i32 0, i32 6
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %210
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %181, %169
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %161

224:                                              ; preds = %161
  %225 = load i64, i64* %4, align 8
  %226 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %227 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %225, %228
  %230 = sub i64 %229, 2
  store i64 %230, i64* %6, align 8
  %231 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %232 = load i64, i64* %6, align 8
  %233 = load i64, i64* @TSTE_OPC_NULL, align 8
  %234 = call i32 @write_sram(%struct.idt77252_dev* %231, i64 %232, i64 %233)
  %235 = load i32, i32* @TST_SWITCH_WAIT, align 4
  %236 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %237 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %236, i32 0, i32 5
  %238 = call i32 @set_bit(i32 %235, i32* %237)
  %239 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %240 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %239, i32 0, i32 4
  %241 = load i64, i64* @jiffies, align 8
  %242 = add nsw i64 %241, 1
  %243 = call i32 @mod_timer(i32* %240, i64 %242)
  br label %244

244:                                              ; preds = %224, %154
  br label %245

245:                                              ; preds = %244, %61
  %246 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %247 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %246, i32 0, i32 3
  %248 = load i64, i64* %7, align 8
  %249 = call i32 @spin_unlock_irqrestore(i32* %247, i64 %248)
  ret void
}

declare dso_local %struct.idt77252_dev* @from_timer(i32, %struct.timer_list*, void (%struct.timer_list*)*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @write_sram(%struct.idt77252_dev*, i64, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
