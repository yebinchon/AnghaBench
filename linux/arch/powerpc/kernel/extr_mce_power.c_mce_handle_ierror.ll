; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c_mce_handle_ierror.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c_mce_handle_ierror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.pt_regs = type { i32, i32 }
%struct.mce_ierror_table = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.mce_error_info = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@local_paca = common dso_local global %struct.TYPE_5__* null, align 8
@MCE_FLUSH_SLB = common dso_local global i32 0, align 4
@MCE_FLUSH_ERAT = common dso_local global i32 0, align 4
@MCE_FLUSH_TLB = common dso_local global i32 0, align 4
@MAX_MCE_DEPTH = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MCE_ERROR_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@MCE_ECLASS_UNKNOWN = common dso_local global i32 0, align 4
@MCE_SEV_SEVERE = common dso_local global i32 0, align 4
@MCE_INITIATOR_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.mce_ierror_table*, %struct.mce_error_info*, i32*, i32*)* @mce_handle_ierror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_handle_ierror(%struct.pt_regs* %0, %struct.mce_ierror_table* %1, %struct.mce_error_info* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca %struct.mce_ierror_table*, align 8
  %9 = alloca %struct.mce_error_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %7, align 8
  store %struct.mce_ierror_table* %1, %struct.mce_ierror_table** %8, align 8
  store %struct.mce_error_info* %2, %struct.mce_error_info** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %239, %5
  %21 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %22 = load i32, i32* %14, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %21, i64 %23
  %25 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %242

28:                                               ; preds = %20
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %30, i64 %32
  %34 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %29, %35
  %37 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %37, i64 %39
  %41 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %239

45:                                               ; preds = %28
  %46 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %46, i64 %48
  %50 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %71 [
    i32 131, label %52
    i32 134, label %65
    i32 130, label %68
  ]

52:                                               ; preds = %45
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @local_paca, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @local_paca, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @slb_save_contents(i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* @MCE_FLUSH_SLB, align 4
  %64 = call i32 @mce_flush(i32 %63)
  store i32 %64, i32* %13, align 4
  br label %71

65:                                               ; preds = %45
  %66 = load i32, i32* @MCE_FLUSH_ERAT, align 4
  %67 = call i32 @mce_flush(i32 %66)
  store i32 %67, i32* %13, align 4
  br label %71

68:                                               ; preds = %45
  %69 = load i32, i32* @MCE_FLUSH_TLB, align 4
  %70 = call i32 @mce_flush(i32 %69)
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %45, %68, %65, %62
  %72 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %72, i64 %74
  %76 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %79 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %80, i64 %82
  %84 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %87 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %88, i64 %90
  %92 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %164 [
    i32 129, label %94
    i32 131, label %104
    i32 134, label %114
    i32 130, label %124
    i32 128, label %134
    i32 132, label %144
    i32 133, label %154
  ]

94:                                               ; preds = %71
  %95 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %95, i64 %97
  %99 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %102 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 6
  store i32 %100, i32* %103, align 4
  br label %164

104:                                              ; preds = %71
  %105 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %105, i64 %107
  %109 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %112 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 5
  store i32 %110, i32* %113, align 4
  br label %164

114:                                              ; preds = %71
  %115 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %115, i64 %117
  %119 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %122 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  store i32 %120, i32* %123, align 4
  br label %164

124:                                              ; preds = %71
  %125 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %125, i64 %127
  %129 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %132 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  store i32 %130, i32* %133, align 4
  br label %164

134:                                              ; preds = %71
  %135 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %135, i64 %137
  %139 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %142 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 4
  br label %164

144:                                              ; preds = %71
  %145 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %145, i64 %147
  %149 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %152 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  br label %164

154:                                              ; preds = %71
  %155 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %155, i64 %157
  %159 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %162 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 4
  br label %164

164:                                              ; preds = %71, %154, %144, %134, %124, %114, %104, %94
  %165 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %165, i64 %167
  %169 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %172 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %173, i64 %175
  %177 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %180 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %181, i64 %183
  %185 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %188 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %189, i64 %191
  %193 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %237

196:                                              ; preds = %164
  %197 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %198 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %10, align 8
  store i32 %199, i32* %200, align 4
  %201 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %202 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %236

205:                                              ; preds = %196
  %206 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %8, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %206, i64 %208
  %210 = getelementptr inbounds %struct.mce_ierror_table, %struct.mce_ierror_table* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %211, 129
  br i1 %212, label %213, label %236

213:                                              ; preds = %205
  %214 = call %struct.TYPE_6__* (...) @get_paca()
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @MAX_MCE_DEPTH, align 8
  %218 = icmp slt i64 %216, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %213
  %220 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %221 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %222 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @addr_to_pfn(%struct.pt_regs* %220, i32 %223)
  store i64 %224, i64* %15, align 8
  %225 = load i64, i64* %15, align 8
  %226 = load i64, i64* @ULONG_MAX, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %219
  %229 = load i64, i64* %15, align 8
  %230 = load i64, i64* @PAGE_SHIFT, align 8
  %231 = shl i64 %229, %230
  %232 = trunc i64 %231 to i32
  %233 = load i32*, i32** %11, align 8
  store i32 %232, i32* %233, align 4
  br label %234

234:                                              ; preds = %228, %219
  br label %235

235:                                              ; preds = %234, %213
  br label %236

236:                                              ; preds = %235, %205, %196
  br label %237

237:                                              ; preds = %236, %164
  %238 = load i32, i32* %13, align 4
  store i32 %238, i32* %6, align 4
  br label %257

239:                                              ; preds = %44
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %14, align 4
  br label %20

242:                                              ; preds = %20
  %243 = load i32, i32* @MCE_ERROR_TYPE_UNKNOWN, align 4
  %244 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %245 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @MCE_ECLASS_UNKNOWN, align 4
  %247 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %248 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %247, i32 0, i32 4
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* @MCE_SEV_SEVERE, align 4
  %250 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %251 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* @MCE_INITIATOR_CPU, align 4
  %253 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %254 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 4
  %255 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %256 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %255, i32 0, i32 1
  store i32 1, i32* %256, align 4
  store i32 0, i32* %6, align 4
  br label %257

257:                                              ; preds = %242, %237
  %258 = load i32, i32* %6, align 4
  ret i32 %258
}

declare dso_local i32 @slb_save_contents(i32) #1

declare dso_local i32 @mce_flush(i32) #1

declare dso_local %struct.TYPE_6__* @get_paca(...) #1

declare dso_local i64 @addr_to_pfn(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
