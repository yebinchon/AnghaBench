; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_mtrr.c_mtrr_add_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_mtrr.c_mtrr_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i64, i64, i32)*, i32 (i64, i64, i32)*, i32 (i32, i64*, i64*, i32*)* }
%struct.TYPE_4__ = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@mtrr_if = common dso_local global %struct.TYPE_3__* null, align 8
@MTRR_NUM_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"type: %u invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTRR_TYPE_WRCOMB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"your processor doesn't support write-combining\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"zero sized request\0A\00", align 1
@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"base or size exceeds the MTRR width\0A\00", align 1
@mtrr_mutex = common dso_local global i32 0, align 4
@num_var_ranges = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"0x%lx000,0x%lx000 overlaps existing 0x%lx000,0x%lx000\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"type mismatch for %lx000,%lx000 old: %s new: %s\0A\00", align 1
@mtrr_usage_table = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"no more MTRRs available\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtrr_add_page(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = call i32 (...) @mtrr_enabled()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %264

21:                                               ; preds = %4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtrr_if, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 %24(i64 %25, i64 %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %264

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @MTRR_NUM_TYPES, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %264

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @MTRR_TYPE_WRCOMB, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = call i32 (...) @have_wrcomb()
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %264

53:                                               ; preds = %46, %42
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %264

60:                                               ; preds = %53
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %62, %63
  %65 = sub i64 %64, 1
  %66 = or i64 %61, %65
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 8
  %68 = load i64, i64* @PAGE_SHIFT, align 8
  %69 = sub i64 %67, %68
  %70 = lshr i64 %66, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %264

76:                                               ; preds = %60
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  %79 = call i32 (...) @get_online_cpus()
  %80 = call i32 @mutex_lock(i32* @mtrr_mutex)
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %192, %76
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @num_var_ranges, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %195

85:                                               ; preds = %81
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtrr_if, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32 (i32, i64*, i64*, i32*)*, i32 (i32, i64*, i64*, i32*)** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 %88(i32 %89, i64* %10, i64* %11, i32* %15)
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %85
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %95, %96
  %98 = sub i64 %97, 1
  %99 = icmp ugt i64 %94, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %101, %102
  %104 = sub i64 %103, 1
  %105 = load i64, i64* %10, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100, %93, %85
  br label %192

108:                                              ; preds = %100
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %113, %114
  %116 = sub i64 %115, 1
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = add i64 %117, %118
  %120 = sub i64 %119, 1
  %121 = icmp ugt i64 %116, %120
  br i1 %121, label %122, label %162

122:                                              ; preds = %112, %108
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* %10, align 8
  %125 = icmp ule i64 %123, %124
  br i1 %125, label %126, label %156

126:                                              ; preds = %122
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = add i64 %127, %128
  %130 = sub i64 %129, 1
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %131, %132
  %134 = sub i64 %133, 1
  %135 = icmp uge i64 %130, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %126
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i32, i32* %13, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* %12, align 4
  br label %146

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ -2, %145 ]
  store i32 %147, i32* %13, align 4
  br label %192

148:                                              ; preds = %136
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i64 @types_compatible(i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %192

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155, %126, %122
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* %11, align 8
  %161 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i64 %157, i64 %158, i64 %159, i64 %160)
  br label %260

162:                                              ; preds = %112
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %162
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %15, align 4
  %169 = call i64 @types_compatible(i32 %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %192

172:                                              ; preds = %166
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i32, i32* %15, align 4
  %176 = call i64 @mtrr_attrib_to_str(i32 %175)
  %177 = load i32, i32* %8, align 4
  %178 = call i64 @mtrr_attrib_to_str(i32 %177)
  %179 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %173, i64 %174, i64 %176, i64 %178)
  br label %260

180:                                              ; preds = %162
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load i32*, i32** @mtrr_usage_table, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %183, %180
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %14, align 4
  br label %260

192:                                              ; preds = %171, %153, %146, %107
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %81

195:                                              ; preds = %81
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtrr_if, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %197, align 8
  %199 = load i64, i64* %6, align 8
  %200 = load i64, i64* %7, align 8
  %201 = load i32, i32* %13, align 4
  %202 = call i32 %198(i64 %199, i64 %200, i32 %201)
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %256

205:                                              ; preds = %195
  %206 = load i32, i32* %12, align 4
  %207 = load i64, i64* %6, align 8
  %208 = load i64, i64* %7, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @set_mtrr_cpuslocked(i32 %206, i64 %207, i64 %208, i32 %209)
  %211 = load i32, i32* %13, align 4
  %212 = icmp slt i32 %211, 0
  %213 = zext i1 %212 to i32
  %214 = call i64 @likely(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %205
  %217 = load i32*, i32** @mtrr_usage_table, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 1, i32* %220, align 4
  br label %255

221:                                              ; preds = %205
  %222 = load i32*, i32** @mtrr_usage_table, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** @mtrr_usage_table, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %226, i32* %230, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %221
  %234 = load i32*, i32** @mtrr_usage_table, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %233, %221
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* %12, align 4
  %243 = icmp ne i32 %241, %242
  %244 = zext i1 %243 to i32
  %245 = call i64 @unlikely(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %240
  %248 = load i32, i32* %13, align 4
  %249 = call i32 @set_mtrr_cpuslocked(i32 %248, i64 0, i64 0, i32 0)
  %250 = load i32*, i32** @mtrr_usage_table, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 0, i32* %253, align 4
  br label %254

254:                                              ; preds = %247, %240
  br label %255

255:                                              ; preds = %254, %216
  br label %258

256:                                              ; preds = %195
  %257 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %255
  %259 = load i32, i32* %12, align 4
  store i32 %259, i32* %14, align 4
  br label %260

260:                                              ; preds = %258, %190, %172, %156
  %261 = call i32 @mutex_unlock(i32* @mtrr_mutex)
  %262 = call i32 (...) @put_online_cpus()
  %263 = load i32, i32* %14, align 4
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %260, %72, %56, %49, %37, %31, %18
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local i32 @mtrr_enabled(...) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @have_wrcomb(...) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @types_compatible(i32, i32) #1

declare dso_local i64 @mtrr_attrib_to_str(i32) #1

declare dso_local i32 @set_mtrr_cpuslocked(i32, i64, i64, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
