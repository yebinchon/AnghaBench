; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_DebugLine.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_DebugLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32 }

@__const.DebugLine.up = private unnamed_addr constant %struct.TYPE_20__ { i32 0, i32 0, i32 1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DebugLine(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca %struct.TYPE_20__, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x %struct.TYPE_20__], align 16
  %12 = alloca %struct.TYPE_20__, align 4
  %13 = alloca %struct.TYPE_20__, align 4
  %14 = alloca %struct.TYPE_20__, align 4
  %15 = alloca float, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 16
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca { i64, i32 }, align 8
  %22 = alloca { i64, i32 }, align 4
  %23 = alloca { i64, i32 }, align 4
  %24 = alloca { i64, i32 }, align 4
  %25 = alloca { i64, i32 }, align 4
  %26 = alloca { i64, i32 }, align 4
  %27 = alloca { i64, i32 }, align 4
  %28 = alloca { i64, i32 }, align 4
  %29 = alloca { i64, i32 }, align 4
  %30 = alloca { i64, i32 }, align 4
  %31 = alloca { i64, i32 }, align 4
  %32 = alloca { i64, i32 }, align 4
  %33 = alloca { i64, i32 }, align 4
  %34 = alloca { i64, i32 }, align 4
  %35 = alloca { i64, i32 }, align 16
  %36 = alloca { i64, i32 }, align 4
  %37 = alloca { i64, i32 }, align 4
  %38 = alloca { i64, i32 }, align 4
  %39 = alloca %struct.TYPE_20__, align 8
  %40 = alloca { i64, i32 }, align 8
  %41 = alloca { i64, i32 }, align 4
  %42 = alloca { i64, i32 }, align 4
  %43 = alloca { i64, i32 }, align 4
  %44 = alloca %struct.TYPE_20__, align 8
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %45, align 4
  %46 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %46, align 4
  %47 = bitcast %struct.TYPE_20__* %6 to i8*
  %48 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 12, i1 false)
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %2, i64* %49, align 4
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %3, i32* %50, align 4
  %51 = bitcast %struct.TYPE_20__* %8 to i8*
  %52 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 12, i1 false)
  store i32 %4, i32* %10, align 4
  %53 = bitcast %struct.TYPE_20__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 bitcast (%struct.TYPE_20__* @__const.DebugLine.up to i8*), i64 12, i1 false)
  %54 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 0
  %55 = bitcast { i64, i32 }* %16 to i8*
  %56 = bitcast %struct.TYPE_20__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 12, i1 false)
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %58 = load i64, i64* %57, align 4
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = bitcast { i64, i32 }* %17 to i8*
  %62 = bitcast %struct.TYPE_20__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 16 %62, i64 12, i1 false)
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %64 = load i64, i64* %63, align 16
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @VectorCopy(i64 %58, i32 %60, i64 %64, i32 %66)
  %68 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 1
  %69 = bitcast { i64, i32 }* %18 to i8*
  %70 = bitcast %struct.TYPE_20__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 12, i1 false)
  %71 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %72 = load i64, i64* %71, align 4
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = bitcast { i64, i32 }* %19 to i8*
  %76 = bitcast %struct.TYPE_20__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 12, i1 false)
  %77 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %78 = load i64, i64* %77, align 4
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @VectorCopy(i64 %72, i32 %74, i64 %78, i32 %80)
  %82 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 2
  %83 = bitcast { i64, i32 }* %20 to i8*
  %84 = bitcast %struct.TYPE_20__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 12, i1 false)
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %86 = load i64, i64* %85, align 4
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = bitcast { i64, i32 }* %21 to i8*
  %90 = bitcast %struct.TYPE_20__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 12, i1 false)
  %91 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @VectorCopy(i64 %86, i32 %88, i64 %92, i32 %94)
  %96 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 3
  %97 = bitcast { i64, i32 }* %22 to i8*
  %98 = bitcast %struct.TYPE_20__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 12, i1 false)
  %99 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %100 = load i64, i64* %99, align 4
  %101 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = bitcast { i64, i32 }* %23 to i8*
  %104 = bitcast %struct.TYPE_20__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 12, i1 false)
  %105 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %106 = load i64, i64* %105, align 4
  %107 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @VectorCopy(i64 %100, i32 %102, i64 %106, i32 %108)
  %110 = bitcast { i64, i32 }* %24 to i8*
  %111 = bitcast %struct.TYPE_20__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 12, i1 false)
  %112 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %113 = load i64, i64* %112, align 4
  %114 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = bitcast { i64, i32 }* %25 to i8*
  %117 = bitcast %struct.TYPE_20__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 12, i1 false)
  %118 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %119 = load i64, i64* %118, align 4
  %120 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = bitcast { i64, i32 }* %26 to i8*
  %123 = bitcast %struct.TYPE_20__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 12, i1 false)
  %124 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %125 = load i64, i64* %124, align 4
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @VectorSubtract(i64 %113, i32 %115, i64 %119, i32 %121, i64 %125, i32 %127)
  %129 = bitcast { i64, i32 }* %27 to i8*
  %130 = bitcast %struct.TYPE_20__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 12, i1 false)
  %131 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %132 = load i64, i64* %131, align 4
  %133 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @VectorNormalize(i64 %132, i32 %134)
  %136 = bitcast { i64, i32 }* %28 to i8*
  %137 = bitcast %struct.TYPE_20__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 12, i1 false)
  %138 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %139 = load i64, i64* %138, align 4
  %140 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = bitcast { i64, i32 }* %29 to i8*
  %143 = bitcast %struct.TYPE_20__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 12, i1 false)
  %144 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 0
  %145 = load i64, i64* %144, align 4
  %146 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call float @DotProduct(i64 %139, i32 %141, i64 %145, i32 %147)
  store float %148, float* %15, align 4
  %149 = load float, float* %15, align 4
  %150 = fpext float %149 to double
  %151 = fcmp ogt double %150, 0x3FEFAE147AE147AE
  br i1 %151, label %156, label %152

152:                                              ; preds = %5
  %153 = load float, float* %15, align 4
  %154 = fpext float %153 to double
  %155 = fcmp olt double %154, 0xBFEFAE147AE147AE
  br i1 %155, label %156, label %164

156:                                              ; preds = %152, %5
  %157 = bitcast { i64, i32 }* %30 to i8*
  %158 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 4 %158, i64 12, i1 false)
  %159 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 0
  %160 = load i64, i64* %159, align 4
  %161 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @VectorSet(i64 %160, i32 %162, i32 1, i32 0, i32 0)
  br label %184

164:                                              ; preds = %152
  %165 = bitcast { i64, i32 }* %31 to i8*
  %166 = bitcast %struct.TYPE_20__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 12, i1 false)
  %167 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 0
  %168 = load i64, i64* %167, align 4
  %169 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = bitcast { i64, i32 }* %32 to i8*
  %172 = bitcast %struct.TYPE_20__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 4 %172, i64 12, i1 false)
  %173 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 0
  %174 = load i64, i64* %173, align 4
  %175 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = bitcast { i64, i32 }* %33 to i8*
  %178 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 12, i1 false)
  %179 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 0
  %180 = load i64, i64* %179, align 4
  %181 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @CrossProduct(i64 %168, i32 %170, i64 %174, i32 %176, i64 %180, i32 %182)
  br label %184

184:                                              ; preds = %164, %156
  %185 = bitcast { i64, i32 }* %34 to i8*
  %186 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %185, i8* align 4 %186, i64 12, i1 false)
  %187 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %188 = load i64, i64* %187, align 4
  %189 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @VectorNormalize(i64 %188, i32 %190)
  %192 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 0
  %193 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 0
  %194 = bitcast { i64, i32 }* %35 to i8*
  %195 = bitcast %struct.TYPE_20__* %192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %194, i8* align 16 %195, i64 12, i1 false)
  %196 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %197 = load i64, i64* %196, align 16
  %198 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = bitcast { i64, i32 }* %36 to i8*
  %201 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %200, i8* align 4 %201, i64 12, i1 false)
  %202 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %203 = load i64, i64* %202, align 4
  %204 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @VectorMA(i64 %197, i32 %199, i32 2, i64 %203, i32 %205, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %193)
  %207 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 1
  %208 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 1
  %209 = bitcast { i64, i32 }* %37 to i8*
  %210 = bitcast %struct.TYPE_20__* %207 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %209, i8* align 4 %210, i64 12, i1 false)
  %211 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %212 = load i64, i64* %211, align 4
  %213 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = bitcast { i64, i32 }* %38 to i8*
  %216 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %215, i8* align 4 %216, i64 12, i1 false)
  %217 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %218 = load i64, i64* %217, align 4
  %219 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = bitcast %struct.TYPE_20__* %39 to i8*
  %222 = bitcast %struct.TYPE_20__* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %221, i8* align 4 %222, i64 12, i1 false)
  %223 = call i32 @VectorMA(i64 %212, i32 %214, i32 -2, i64 %218, i32 %220, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %39)
  %224 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 2
  %225 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 2
  %226 = bitcast { i64, i32 }* %40 to i8*
  %227 = bitcast %struct.TYPE_20__* %224 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %226, i8* align 8 %227, i64 12, i1 false)
  %228 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = bitcast { i64, i32 }* %41 to i8*
  %233 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %232, i8* align 4 %233, i64 12, i1 false)
  %234 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 0
  %235 = load i64, i64* %234, align 4
  %236 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @VectorMA(i64 %229, i32 %231, i32 -2, i64 %235, i32 %237, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %225)
  %239 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 3
  %240 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 3
  %241 = bitcast { i64, i32 }* %42 to i8*
  %242 = bitcast %struct.TYPE_20__* %239 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %241, i8* align 4 %242, i64 12, i1 false)
  %243 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 0
  %244 = load i64, i64* %243, align 4
  %245 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = bitcast { i64, i32 }* %43 to i8*
  %248 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %247, i8* align 4 %248, i64 12, i1 false)
  %249 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 0
  %250 = load i64, i64* %249, align 4
  %251 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = bitcast %struct.TYPE_20__* %44 to i8*
  %254 = bitcast %struct.TYPE_20__* %240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 4 %254, i64 12, i1 false)
  %255 = call i32 @VectorMA(i64 %244, i32 %246, i32 2, i64 %250, i32 %252, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %44)
  %256 = load i32, i32* %10, align 4
  %257 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %11, i64 0, i64 0
  %258 = call i32 @trap_DebugPolygonCreate(i32 %256, i32 4, %struct.TYPE_20__* %257)
  ret i32 %258
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VectorCopy(i64, i32, i64, i32) #2

declare dso_local i32 @VectorSubtract(i64, i32, i64, i32, i64, i32) #2

declare dso_local i32 @VectorNormalize(i64, i32) #2

declare dso_local float @DotProduct(i64, i32, i64, i32) #2

declare dso_local i32 @VectorSet(i64, i32, i32, i32, i32) #2

declare dso_local i32 @CrossProduct(i64, i32, i64, i32, i64, i32) #2

declare dso_local i32 @VectorMA(i64, i32, i32, i64, i32, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8) #2

declare dso_local i32 @trap_DebugPolygonCreate(i32, i32, %struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
