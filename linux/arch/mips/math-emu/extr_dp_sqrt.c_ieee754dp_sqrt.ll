; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_dp_sqrt.c_ieee754dp_sqrt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_dp_sqrt.c_ieee754dp_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ieee754_csr = type { i32, i32, i32, i32 }
%union.ieee754dp = type { i32 }

@COMPXDP = common dso_local global i32 0, align 4
@EXPLODEXDP = common dso_local global i32 0, align 4
@FLUSHXDP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@xs = common dso_local global i32 0, align 4
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@DPDNORMX = common dso_local global i32 0, align 4
@ieee754_csr = common dso_local global %struct._ieee754_csr zeroinitializer, align 4
@IEEE754_INEXACT = common dso_local global i32 0, align 4
@xe = common dso_local global i32 0, align 4
@DP_EBIAS = common dso_local global i64 0, align 8
@xm = common dso_local global i32 0, align 4
@DP_HIDDEN_BIT = common dso_local global i32 0, align 4
@table = common dso_local global i32* null, align 8
@FPU_CSR_RZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754dp_sqrt(i32 %0) #0 {
  %2 = alloca %union.ieee754dp, align 4
  %3 = alloca %union.ieee754dp, align 4
  %4 = alloca %struct._ieee754_csr, align 4
  %5 = alloca %union.ieee754dp, align 4
  %6 = alloca %union.ieee754dp, align 4
  %7 = alloca %union.ieee754dp, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ieee754dp, align 4
  %11 = alloca %union.ieee754dp, align 4
  %12 = alloca %union.ieee754dp, align 4
  %13 = alloca %union.ieee754dp, align 4
  %14 = alloca %union.ieee754dp, align 4
  %15 = alloca %union.ieee754dp, align 4
  %16 = alloca %union.ieee754dp, align 4
  %17 = alloca %union.ieee754dp, align 4
  %18 = alloca %union.ieee754dp, align 4
  %19 = alloca %union.ieee754dp, align 4
  %20 = alloca %union.ieee754dp, align 4
  %21 = alloca %union.ieee754dp, align 4
  %22 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %3, i32 0, i32 0
  store i32 %0, i32* %22, align 4
  %23 = load i32, i32* @COMPXDP, align 4
  %24 = load i32, i32* @EXPLODEXDP, align 4
  %25 = call i32 (...) @ieee754_clearcx()
  %26 = load i32, i32* @FLUSHXDP, align 4
  %27 = load i32, i32* @xc, align 4
  switch i32 %27, label %61 [
    i32 129, label %28
    i32 130, label %33
    i32 128, label %36
    i32 132, label %39
    i32 133, label %50
    i32 131, label %52
  ]

28:                                               ; preds = %1
  %29 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ieee754dp_nanxcpt(i32 %30)
  %32 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  br label %279

33:                                               ; preds = %1
  %34 = bitcast %union.ieee754dp* %2 to i8*
  %35 = bitcast %union.ieee754dp* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  br label %279

36:                                               ; preds = %1
  %37 = bitcast %union.ieee754dp* %2 to i8*
  %38 = bitcast %union.ieee754dp* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  br label %279

39:                                               ; preds = %1
  %40 = load i32, i32* @xs, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %44 = call i32 @ieee754_setcx(i32 %43)
  %45 = call i32 (...) @ieee754dp_indef()
  %46 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  br label %279

47:                                               ; preds = %39
  %48 = bitcast %union.ieee754dp* %2 to i8*
  %49 = bitcast %union.ieee754dp* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  br label %279

50:                                               ; preds = %1
  %51 = load i32, i32* @DPDNORMX, align 4
  br label %52

52:                                               ; preds = %1, %50
  %53 = load i32, i32* @xs, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %57 = call i32 @ieee754_setcx(i32 %56)
  %58 = call i32 (...) @ieee754dp_indef()
  %59 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  br label %279

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %1, %60
  %62 = bitcast %struct._ieee754_csr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 bitcast (%struct._ieee754_csr* @ieee754_csr to i8*), i64 16, i1 false)
  %63 = load i32, i32* @IEEE754_INEXACT, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* getelementptr inbounds (%struct._ieee754_csr, %struct._ieee754_csr* @ieee754_csr, i32 0, i32 0), align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* getelementptr inbounds (%struct._ieee754_csr, %struct._ieee754_csr* @ieee754_csr, i32 0, i32 0), align 4
  %67 = load i32, i32* @IEEE754_INEXACT, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* getelementptr inbounds (%struct._ieee754_csr, %struct._ieee754_csr* @ieee754_csr, i32 0, i32 1), align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* getelementptr inbounds (%struct._ieee754_csr, %struct._ieee754_csr* @ieee754_csr, i32 0, i32 1), align 4
  store i32 135, i32* getelementptr inbounds (%struct._ieee754_csr, %struct._ieee754_csr* @ieee754_csr, i32 0, i32 2), align 4
  store i32 0, i32* %8, align 4
  %71 = load i32, i32* @xe, align 4
  %72 = icmp sgt i32 %71, 512
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load i32, i32* @xe, align 4
  %75 = sub nsw i32 %74, 512
  store i32 %75, i32* @xe, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, 256
  store i32 %77, i32* %8, align 4
  br label %87

78:                                               ; preds = %61
  %79 = load i32, i32* @xe, align 4
  %80 = icmp slt i32 %79, -512
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* @xe, align 4
  %83 = add nsw i32 %82, 512
  store i32 %83, i32* @xe, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub i32 %84, 256
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %81, %78
  br label %87

87:                                               ; preds = %86, %73
  %88 = load i32, i32* @xe, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @DP_EBIAS, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32, i32* @xm, align 4
  %93 = load i32, i32* @DP_HIDDEN_BIT, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = call i32 @builddp(i32 0, i64 %91, i32 %95)
  %97 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %10, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = bitcast %union.ieee754dp* %3 to i8*
  %99 = bitcast %union.ieee754dp* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 4, i1 false)
  %100 = bitcast %union.ieee754dp* %5 to i8*
  %101 = bitcast %union.ieee754dp* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 4, i1 false)
  %102 = bitcast %union.ieee754dp* %5 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 32
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = lshr i32 %105, 1
  %107 = add i32 %106, 536346624
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32*, i32** @table, align 8
  %110 = load i32, i32* %9, align 4
  %111 = lshr i32 %110, 15
  %112 = and i32 %111, 31
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sub i32 %108, %115
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = shl i32 %117, 32
  %119 = bitcast %union.ieee754dp* %5 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %118, %120
  %122 = bitcast %union.ieee754dp* %5 to i32*
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %3, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %5, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ieee754dp_div(i32 %124, i32 %126)
  %128 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %11, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = bitcast %union.ieee754dp* %7 to i8*
  %130 = bitcast %union.ieee754dp* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 4, i1 false)
  %131 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %5, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %7, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ieee754dp_add(i32 %132, i32 %134)
  %136 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %12, i32 0, i32 0
  store i32 %135, i32* %136, align 4
  %137 = bitcast %union.ieee754dp* %5 to i8*
  %138 = bitcast %union.ieee754dp* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 4, i1 false)
  %139 = bitcast %union.ieee754dp* %5 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = sub nsw i64 %141, 4503625397174272
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  %144 = bitcast %union.ieee754dp* %5 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = and i64 %146, -4294967296
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 4
  %149 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %5, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %5, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ieee754dp_mul(i32 %150, i32 %152)
  %154 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %13, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  %155 = bitcast %union.ieee754dp* %7 to i8*
  %156 = bitcast %union.ieee754dp* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 4, i1 false)
  %157 = bitcast %union.ieee754dp* %6 to i8*
  %158 = bitcast %union.ieee754dp* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 4 %158, i64 4, i1 false)
  %159 = bitcast %union.ieee754dp* %7 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %7, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %6, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ieee754dp_add(i32 %163, i32 %165)
  %167 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %14, i32 0, i32 0
  store i32 %166, i32* %167, align 4
  %168 = bitcast %union.ieee754dp* %7 to i8*
  %169 = bitcast %union.ieee754dp* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 4 %169, i64 4, i1 false)
  %170 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %3, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %6, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ieee754dp_sub(i32 %171, i32 %173)
  %175 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %16, i32 0, i32 0
  store i32 %174, i32* %175, align 4
  %176 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %16, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %5, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ieee754dp_mul(i32 %177, i32 %179)
  %181 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %15, i32 0, i32 0
  store i32 %180, i32* %181, align 4
  %182 = bitcast %union.ieee754dp* %6 to i8*
  %183 = bitcast %union.ieee754dp* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %182, i8* align 4 %183, i64 4, i1 false)
  %184 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %7, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %3, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ieee754dp_add(i32 %185, i32 %187)
  %189 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %18, i32 0, i32 0
  store i32 %188, i32* %189, align 4
  %190 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %6, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %18, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ieee754dp_div(i32 %191, i32 %193)
  %195 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %17, i32 0, i32 0
  store i32 %194, i32* %195, align 4
  %196 = bitcast %union.ieee754dp* %7 to i8*
  %197 = bitcast %union.ieee754dp* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %196, i8* align 4 %197, i64 4, i1 false)
  %198 = bitcast %union.ieee754dp* %7 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %5, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %7, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ieee754dp_add(i32 %202, i32 %204)
  %206 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %19, i32 0, i32 0
  store i32 %205, i32* %206, align 4
  %207 = bitcast %union.ieee754dp* %5 to i8*
  %208 = bitcast %union.ieee754dp* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %207, i8* align 4 %208, i64 4, i1 false)
  %209 = load i32, i32* @FPU_CSR_RZ, align 4
  store i32 %209, i32* getelementptr inbounds (%struct._ieee754_csr, %struct._ieee754_csr* @ieee754_csr, i32 0, i32 2), align 4
  %210 = load i32, i32* @IEEE754_INEXACT, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* getelementptr inbounds (%struct._ieee754_csr, %struct._ieee754_csr* @ieee754_csr, i32 0, i32 1), align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* getelementptr inbounds (%struct._ieee754_csr, %struct._ieee754_csr* @ieee754_csr, i32 0, i32 1), align 4
  %214 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %3, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %5, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ieee754dp_div(i32 %215, i32 %217)
  %219 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %20, i32 0, i32 0
  store i32 %218, i32* %219, align 4
  %220 = bitcast %union.ieee754dp* %7 to i8*
  %221 = bitcast %union.ieee754dp* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %220, i8* align 4 %221, i64 4, i1 false)
  %222 = load i32, i32* getelementptr inbounds (%struct._ieee754_csr, %struct._ieee754_csr* @ieee754_csr, i32 0, i32 1), align 4
  %223 = load i32, i32* @IEEE754_INEXACT, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %87
  %227 = bitcast %union.ieee754dp* %7 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = bitcast %union.ieee754dp* %5 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %228, %230
  br i1 %231, label %232, label %271

232:                                              ; preds = %226, %87
  %233 = load i32, i32* getelementptr inbounds (%struct._ieee754_csr, %struct._ieee754_csr* @ieee754_csr, i32 0, i32 1), align 4
  %234 = load i32, i32* @IEEE754_INEXACT, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %232
  %238 = bitcast %union.ieee754dp* %7 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %237, %232
  %242 = load i32, i32* @IEEE754_INEXACT, align 4
  %243 = getelementptr inbounds %struct._ieee754_csr, %struct._ieee754_csr* %4, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %242
  store i32 %245, i32* %243, align 4
  %246 = load i32, i32* @IEEE754_INEXACT, align 4
  %247 = getelementptr inbounds %struct._ieee754_csr, %struct._ieee754_csr* %4, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %246
  store i32 %249, i32* %247, align 4
  %250 = getelementptr inbounds %struct._ieee754_csr, %struct._ieee754_csr* %4, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  switch i32 %251, label %260 [
    i32 134, label %252
    i32 135, label %256
  ]

252:                                              ; preds = %241
  %253 = bitcast %union.ieee754dp* %5 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %241, %252
  %257 = bitcast %union.ieee754dp* %7 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %241, %256
  %261 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %5, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %7, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @ieee754dp_add(i32 %262, i32 %264)
  %266 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %21, i32 0, i32 0
  store i32 %265, i32* %266, align 4
  %267 = bitcast %union.ieee754dp* %5 to i8*
  %268 = bitcast %union.ieee754dp* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %267, i8* align 4 %268, i64 4, i1 false)
  %269 = load i32, i32* %8, align 4
  %270 = sub i32 %269, 1
  store i32 %270, i32* %8, align 4
  br label %271

271:                                              ; preds = %260, %226
  %272 = load i32, i32* %8, align 4
  %273 = bitcast %union.ieee754dp* %5 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, %272
  store i32 %275, i32* %273, align 4
  %276 = bitcast %struct._ieee754_csr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct._ieee754_csr* @ieee754_csr to i8*), i8* align 4 %276, i64 16, i1 false)
  %277 = bitcast %union.ieee754dp* %2 to i8*
  %278 = bitcast %union.ieee754dp* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %277, i8* align 4 %278, i64 4, i1 false)
  br label %279

279:                                              ; preds = %271, %55, %47, %42, %36, %33, %28
  %280 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  ret i32 %281
}

declare dso_local i32 @ieee754_clearcx(...) #1

declare dso_local i32 @ieee754dp_nanxcpt(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee754_setcx(i32) #1

declare dso_local i32 @ieee754dp_indef(...) #1

declare dso_local i32 @builddp(i32, i64, i32) #1

declare dso_local i32 @ieee754dp_div(i32, i32) #1

declare dso_local i32 @ieee754dp_add(i32, i32) #1

declare dso_local i32 @ieee754dp_mul(i32, i32) #1

declare dso_local i32 @ieee754dp_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
