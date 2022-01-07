; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_longhaul_setstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_longhaul_setstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_freqs = type { i32, i8* }

@longhaul_table = common dso_local global %struct.TYPE_7__* null, align 8
@mults = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@highest_speed = common dso_local global i32 0, align 4
@lowest_speed = common dso_local global i32 0, align 4
@can_scale_voltage = common dso_local global i64 0, align 8
@longhaul_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Setting to FSB:%dMHz Mult:%d.%dx (%s)\0A\00", align 1
@fsb = common dso_local global i32 0, align 4
@acpi_regs_addr = common dso_local global i64 0, align 8
@longhaul_flags = common dso_local global i32 0, align 4
@USE_NORTHBRIDGE = common dso_local global i32 0, align 4
@pr = common dso_local global %struct.TYPE_6__* null, align 8
@ACPI_BITREG_ARB_DISABLE = common dso_local global i32 0, align 4
@longhaul_version = common dso_local global i32 0, align 4
@USE_ACPI_C3 = common dso_local global i32 0, align 4
@ACPI_BITREG_BUS_MASTER_RLD = common dso_local global i32 0, align 4
@cx = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to set requested frequency!\0A\00", align 1
@revid_errata = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Enabling \22Ignore Revision ID\22 option\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Disabling ACPI C3 support\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Disabling \22Ignore Revision ID\22 option\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Switching to Longhaul ver. 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Warning: Timeout while waiting for idle PCI bus\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @longhaul_setstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @longhaul_setstate(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpufreq_freqs, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %13, align 4
  store i32 1000, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @longhaul_table, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** @mults, align 8
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 31
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %239

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @calc_speed(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @highest_speed, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @lowest_speed, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %33
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %239

47:                                               ; preds = %40
  %48 = load i64, i64* @can_scale_voltage, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @longhaul_index, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %15, align 4
  br label %55

55:                                               ; preds = %54, %50, %47
  %56 = call i32 (...) @longhaul_get_cpu_mult()
  %57 = call i8* @calc_speed(i32 %56)
  %58 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* @fsb, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %62, 10
  %64 = load i32, i32* %8, align 4
  %65 = srem i32 %64, 10
  %66 = load i32, i32* %7, align 4
  %67 = sdiv i32 %66, 1000
  %68 = call i32 @print_speed(i32 %67)
  %69 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %227, %222, %204, %55
  %71 = call i32 (...) @preempt_disable()
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @local_irq_save(i64 %72)
  %74 = call i32 @inb(i32 161)
  store i32 %74, i32* %12, align 4
  %75 = call i32 @inb(i32 33)
  store i32 %75, i32* %11, align 4
  %76 = call i32 @outb(i32 255, i32 161)
  %77 = call i32 @outb(i32 254, i32 33)
  %78 = load i64, i64* @acpi_regs_addr, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %117

80:                                               ; preds = %70
  %81 = load i32, i32* @longhaul_flags, align 4
  %82 = load i32, i32* @USE_NORTHBRIDGE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pr, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %117

88:                                               ; preds = %85
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pr, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %88, %80
  %95 = load i64, i64* @acpi_regs_addr, align 8
  %96 = call i32 @inw(i64 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = and i32 %97, 16
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %107, %94
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi i1 [ false, %99 ], [ %104, %102 ]
  br i1 %106, label %107, label %116

107:                                              ; preds = %105
  %108 = load i64, i64* @acpi_regs_addr, align 8
  %109 = call i32 @outw(i32 16, i64 %108)
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %14, align 4
  %112 = load i64, i64* @acpi_regs_addr, align 8
  %113 = call i32 @inw(i64 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = and i32 %114, 16
  store i32 %115, i32* %13, align 4
  br label %99

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %88, %85, %70
  %118 = load i32, i32* @longhaul_flags, align 4
  %119 = load i32, i32* @USE_NORTHBRIDGE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 @outb(i32 3, i32 34)
  br label %137

124:                                              ; preds = %117
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pr, align 8
  %126 = icmp ne %struct.TYPE_6__* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pr, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* @ACPI_BITREG_ARB_DISABLE, align 4
  %135 = call i32 @acpi_write_bit_register(i32 %134, i32 1)
  br label %136

136:                                              ; preds = %133, %127, %124
  br label %137

137:                                              ; preds = %136, %122
  %138 = load i32, i32* @longhaul_version, align 4
  switch i32 %138, label %161 [
    i32 130, label %139
    i32 129, label %142
    i32 128, label %142
  ]

139:                                              ; preds = %137
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @do_longhaul1(i32 %140)
  br label %161

142:                                              ; preds = %137, %137
  %143 = load i32, i32* @longhaul_flags, align 4
  %144 = load i32, i32* @USE_ACPI_C3, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load i32, i32* @ACPI_BITREG_BUS_MASTER_RLD, align 4
  %149 = call i32 @acpi_write_bit_register(i32 %148, i32 0)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cx, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i32 @do_powersaver(i32 %152, i32 %153, i32 %154)
  br label %160

156:                                              ; preds = %142
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @do_powersaver(i32 0, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %147
  br label %161

161:                                              ; preds = %137, %160, %139
  %162 = load i32, i32* @longhaul_flags, align 4
  %163 = load i32, i32* @USE_NORTHBRIDGE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = call i32 @outb(i32 0, i32 34)
  br label %181

168:                                              ; preds = %161
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pr, align 8
  %170 = icmp ne %struct.TYPE_6__* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pr, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i32, i32* @ACPI_BITREG_ARB_DISABLE, align 4
  %179 = call i32 @acpi_write_bit_register(i32 %178, i32 0)
  br label %180

180:                                              ; preds = %177, %171, %168
  br label %181

181:                                              ; preds = %180, %166
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @outb(i32 %182, i32 161)
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @outb(i32 %184, i32 33)
  %186 = load i64, i64* %10, align 8
  %187 = call i32 @local_irq_restore(i64 %186)
  %188 = call i32 (...) @preempt_enable()
  %189 = call i32 (...) @longhaul_get_cpu_mult()
  %190 = call i8* @calc_speed(i32 %189)
  %191 = ptrtoint i8* %190 to i32
  %192 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  store i32 %191, i32* %192, align 8
  %193 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %231

200:                                              ; preds = %181
  %201 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %202 = load i32, i32* @revid_errata, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @revid_errata, align 4
  %206 = call i32 @msleep(i32 200)
  br label %70

207:                                              ; preds = %200
  %208 = load i32, i32* @longhaul_flags, align 4
  %209 = load i32, i32* @USE_ACPI_C3, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %207
  %213 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %214 = load i32, i32* @USE_ACPI_C3, align 4
  %215 = xor i32 %214, -1
  %216 = load i32, i32* @longhaul_flags, align 4
  %217 = and i32 %216, %215
  store i32 %217, i32* @longhaul_flags, align 4
  %218 = load i32, i32* @revid_errata, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %212
  %221 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* @revid_errata, align 4
  br label %222

222:                                              ; preds = %220, %212
  %223 = call i32 @msleep(i32 200)
  br label %70

224:                                              ; preds = %207
  %225 = load i32, i32* @longhaul_version, align 4
  %226 = icmp eq i32 %225, 129
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 130, i32* @longhaul_version, align 4
  %229 = call i32 @msleep(i32 200)
  br label %70

230:                                              ; preds = %224
  br label %231

231:                                              ; preds = %230, %181
  %232 = load i32, i32* %14, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %236 = load i32, i32* @EBUSY, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %3, align 4
  br label %239

238:                                              ; preds = %231
  store i32 0, i32* %3, align 4
  br label %239

239:                                              ; preds = %238, %234, %44, %30
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i8* @calc_speed(i32) #1

declare dso_local i32 @longhaul_get_cpu_mult(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @print_speed(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @acpi_write_bit_register(i32, i32) #1

declare dso_local i32 @do_longhaul1(i32) #1

declare dso_local i32 @do_powersaver(i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
