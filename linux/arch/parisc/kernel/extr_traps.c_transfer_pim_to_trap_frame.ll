; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_traps.c_transfer_pim_to_trap_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_traps.c_transfer_pim_to_trap_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pt_regs = type { i64, i64, i64, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.pdc_hpmc_pim_11 = type { i32*, i32, i32, i32*, i32*, i32* }
%struct.pdc_hpmc_pim_20 = type { i32*, i32, i32, i32*, i32*, i32* }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pcxu = common dso_local global i64 0, align 8
@hpmc_pim_data = external dso_local global [0 x i32], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transfer_pim_to_trap_frame(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pdc_hpmc_pim_11*, align 8
  %5 = alloca %struct.pdc_hpmc_pim_20*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %7 = load i64, i64* @pcxu, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %142

9:                                                ; preds = %1
  store %struct.pdc_hpmc_pim_20* bitcast ([0 x i32]* @hpmc_pim_data to %struct.pdc_hpmc_pim_20*), %struct.pdc_hpmc_pim_20** %5, align 8
  %10 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %11 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 22
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 11
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %36, %9
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %24 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 11
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %19

39:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 32
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %45 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 10
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %40

60:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %78, %60
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %66 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 9
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %61

81:                                               ; preds = %61
  %82 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %83 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 17
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  %91 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %92 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 8
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 %93, i32* %97, align 4
  %98 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %99 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 18
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %104 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %103, i32 0, i32 7
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %102, i32* %106, align 4
  %107 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %108 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %109, i32* %113, align 4
  %114 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %115 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 11
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %120 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 4
  %121 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %122 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 19
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %127 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %129 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 20
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %134 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  %135 = load %struct.pdc_hpmc_pim_20*, %struct.pdc_hpmc_pim_20** %5, align 8
  %136 = getelementptr inbounds %struct.pdc_hpmc_pim_20, %struct.pdc_hpmc_pim_20* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 21
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %141 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  br label %275

142:                                              ; preds = %1
  store %struct.pdc_hpmc_pim_11* bitcast ([0 x i32]* @hpmc_pim_data to %struct.pdc_hpmc_pim_11*), %struct.pdc_hpmc_pim_11** %4, align 8
  %143 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %144 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 22
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %149 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %148, i32 0, i32 11
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 %147, i32* %151, align 4
  store i32 1, i32* %3, align 4
  br label %152

152:                                              ; preds = %169, %142
  %153 = load i32, i32* %3, align 4
  %154 = icmp slt i32 %153, 32
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  %156 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %157 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %164 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %163, i32 0, i32 11
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %162, i32* %168, align 4
  br label %169

169:                                              ; preds = %155
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  br label %152

172:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %190, %172
  %174 = load i32, i32* %3, align 4
  %175 = icmp slt i32 %174, 32
  br i1 %175, label %176, label %193

176:                                              ; preds = %173
  %177 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %178 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %185 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %184, i32 0, i32 10
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  br label %190

190:                                              ; preds = %176
  %191 = load i32, i32* %3, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %3, align 4
  br label %173

193:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %211, %193
  %195 = load i32, i32* %3, align 4
  %196 = icmp slt i32 %195, 8
  br i1 %196, label %197, label %214

197:                                              ; preds = %194
  %198 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %199 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %206 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %205, i32 0, i32 9
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %3, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %204, i32* %210, align 4
  br label %211

211:                                              ; preds = %197
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %3, align 4
  br label %194

214:                                              ; preds = %194
  %215 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %216 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 17
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %221 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %220, i32 0, i32 8
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 %219, i32* %223, align 4
  %224 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %225 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %228 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %227, i32 0, i32 8
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  store i32 %226, i32* %230, align 4
  %231 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %232 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 18
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %237 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %236, i32 0, i32 7
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  store i32 %235, i32* %239, align 4
  %240 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %241 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %244 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %243, i32 0, i32 7
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  store i32 %242, i32* %246, align 4
  %247 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %248 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 11
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %253 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 4
  %254 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %255 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 19
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %260 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %259, i32 0, i32 5
  store i32 %258, i32* %260, align 8
  %261 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %262 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 20
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %267 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %266, i32 0, i32 4
  store i32 %265, i32* %267, align 4
  %268 = load %struct.pdc_hpmc_pim_11*, %struct.pdc_hpmc_pim_11** %4, align 8
  %269 = getelementptr inbounds %struct.pdc_hpmc_pim_11, %struct.pdc_hpmc_pim_11* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 21
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %274 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %214, %81
  %276 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %277 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %276, i32 0, i32 2
  store i64 0, i64* %277, align 8
  %278 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %279 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %278, i32 0, i32 1
  store i64 0, i64* %279, align 8
  %280 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %281 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %280, i32 0, i32 0
  store i64 0, i64* %281, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
