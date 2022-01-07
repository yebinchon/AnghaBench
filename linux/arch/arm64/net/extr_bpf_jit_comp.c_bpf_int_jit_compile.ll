; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_bpf_int_jit_compile.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_bpf_int_jit_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32, %struct.TYPE_2__*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.arm64_jit_data* }
%struct.arm64_jit_data = type { %struct.bpf_binary_header*, i32*, %struct.jit_ctx }
%struct.bpf_binary_header = type { i32 }
%struct.jit_ctx = type { i32, i32, %struct.arm64_jit_data*, i32*, %struct.bpf_prog* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@jit_fill_hole = common dso_local global i32 0, align 4
@bpf_jit_enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"multi-func JIT bug %d != %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.bpf_binary_header*, align 8
  %7 = alloca %struct.arm64_jit_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.jit_ctx, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  %14 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %14, %struct.bpf_prog** %5, align 8
  %15 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %16 = call i32 @bpf_prog_was_classic(%struct.bpf_prog* %15)
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %22, %struct.bpf_prog** %2, align 8
  br label %264

23:                                               ; preds = %1
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %25 = call %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog* %24)
  store %struct.bpf_prog* %25, %struct.bpf_prog** %4, align 8
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %27 = call i64 @IS_ERR(%struct.bpf_prog* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %30, %struct.bpf_prog** %2, align 8
  br label %264

31:                                               ; preds = %23
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %34 = icmp ne %struct.bpf_prog* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  %36 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  store %struct.bpf_prog* %36, %struct.bpf_prog** %3, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %39 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %41, align 8
  store %struct.arm64_jit_data* %42, %struct.arm64_jit_data** %7, align 8
  %43 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %44 = icmp ne %struct.arm64_jit_data* %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.arm64_jit_data* @kzalloc(i32 48, i32 %46)
  store %struct.arm64_jit_data* %47, %struct.arm64_jit_data** %7, align 8
  %48 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %49 = icmp ne %struct.arm64_jit_data* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %51, %struct.bpf_prog** %3, align 8
  br label %247

52:                                               ; preds = %45
  %53 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %54 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %55 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.arm64_jit_data* %53, %struct.arm64_jit_data** %57, align 8
  br label %58

58:                                               ; preds = %52, %37
  %59 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %60 = getelementptr inbounds %struct.arm64_jit_data, %struct.arm64_jit_data* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %60, i32 0, i32 2
  %62 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %61, align 8
  %63 = icmp ne %struct.arm64_jit_data* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %66 = getelementptr inbounds %struct.arm64_jit_data, %struct.arm64_jit_data* %65, i32 0, i32 2
  %67 = bitcast %struct.jit_ctx* %11 to i8*
  %68 = bitcast %struct.jit_ctx* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 32, i1 false)
  %69 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %70 = getelementptr inbounds %struct.arm64_jit_data, %struct.arm64_jit_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %13, align 8
  %72 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %73 = getelementptr inbounds %struct.arm64_jit_data, %struct.arm64_jit_data* %72, i32 0, i32 0
  %74 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %73, align 8
  store %struct.bpf_binary_header* %74, %struct.bpf_binary_header** %6, align 8
  store i32 1, i32* %10, align 4
  %75 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %12, align 4
  br label %127

80:                                               ; preds = %58
  %81 = call i32 @memset(%struct.jit_ctx* %11, i32 0, i32 32)
  %82 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %83 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 4
  store %struct.bpf_prog* %82, %struct.bpf_prog** %83, align 8
  %84 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %85 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.arm64_jit_data* @kcalloc(i32 %86, i32 4, i32 %87)
  %89 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 2
  store %struct.arm64_jit_data* %88, %struct.arm64_jit_data** %89, align 8
  %90 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 2
  %91 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %90, align 8
  %92 = icmp eq %struct.arm64_jit_data* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %94, %struct.bpf_prog** %3, align 8
  br label %236

95:                                               ; preds = %80
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @build_body(%struct.jit_ctx* %11, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %100, %struct.bpf_prog** %3, align 8
  br label %236

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = call i64 @build_prologue(%struct.jit_ctx* %11, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %106, %struct.bpf_prog** %3, align 8
  br label %236

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = call i32 @build_epilogue(%struct.jit_ctx* %11)
  %112 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @jit_fill_hole, align 4
  %119 = call %struct.bpf_binary_header* @bpf_jit_binary_alloc(i32 %117, i32** %13, i32 4, i32 %118)
  store %struct.bpf_binary_header* %119, %struct.bpf_binary_header** %6, align 8
  %120 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %121 = icmp eq %struct.bpf_binary_header* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %107
  %123 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %123, %struct.bpf_prog** %3, align 8
  br label %236

124:                                              ; preds = %107
  %125 = load i32*, i32** %13, align 8
  %126 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 3
  store i32* %125, i32** %126, align 8
  br label %127

127:                                              ; preds = %124, %64
  %128 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i64 @build_prologue(%struct.jit_ctx* %11, i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = call i64 @build_body(%struct.jit_ctx* %11, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %136 = call i32 @bpf_jit_binary_free(%struct.bpf_binary_header* %135)
  %137 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %137, %struct.bpf_prog** %3, align 8
  br label %236

138:                                              ; preds = %127
  %139 = call i32 @build_epilogue(%struct.jit_ctx* %11)
  %140 = call i64 @validate_code(%struct.jit_ctx* %11)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %144 = call i32 @bpf_jit_binary_free(%struct.bpf_binary_header* %143)
  %145 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %145, %struct.bpf_prog** %3, align 8
  br label %236

146:                                              ; preds = %138
  %147 = load i32, i32* @bpf_jit_enable, align 4
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %151 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @bpf_jit_dump(i32 %152, i32 %153, i32 2, i32* %155)
  br label %157

157:                                              ; preds = %149, %146
  %158 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %159 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = call i32 @bpf_flush_icache(%struct.bpf_binary_header* %158, i32* %164)
  %166 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %167 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %157
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %170, %157
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %198

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %180 = getelementptr inbounds %struct.arm64_jit_data, %struct.arm64_jit_data* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %178, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %176
  %185 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %188 = getelementptr inbounds %struct.arm64_jit_data, %struct.arm64_jit_data* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @pr_err_once(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %186, i32 %190)
  %192 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %193 = call i32 @bpf_jit_binary_free(%struct.bpf_binary_header* %192)
  %194 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %195 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %194, i32 0, i32 4
  store i32* null, i32** %195, align 8
  %196 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %197 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  br label %236

198:                                              ; preds = %176, %173
  %199 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %200 = call i32 @bpf_jit_binary_lock_ro(%struct.bpf_binary_header* %199)
  br label %212

201:                                              ; preds = %170
  %202 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %203 = getelementptr inbounds %struct.arm64_jit_data, %struct.arm64_jit_data* %202, i32 0, i32 2
  %204 = bitcast %struct.jit_ctx* %203 to i8*
  %205 = bitcast %struct.jit_ctx* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 32, i1 false)
  %206 = load i32*, i32** %13, align 8
  %207 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %208 = getelementptr inbounds %struct.arm64_jit_data, %struct.arm64_jit_data* %207, i32 0, i32 1
  store i32* %206, i32** %208, align 8
  %209 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %210 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %211 = getelementptr inbounds %struct.arm64_jit_data, %struct.arm64_jit_data* %210, i32 0, i32 0
  store %struct.bpf_binary_header* %209, %struct.bpf_binary_header** %211, align 8
  br label %212

212:                                              ; preds = %201, %198
  %213 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = bitcast i32* %214 to i8*
  %216 = bitcast i8* %215 to i32*
  %217 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %218 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %217, i32 0, i32 4
  store i32* %216, i32** %218, align 8
  %219 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %220 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %219, i32 0, i32 0
  store i32 1, i32* %220, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %223 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %225 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %212
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %228, %212
  %232 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %233 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 2
  %234 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %233, align 8
  %235 = call i32 @bpf_prog_fill_jited_linfo(%struct.bpf_prog* %232, %struct.arm64_jit_data* %234)
  br label %236

236:                                              ; preds = %231, %184, %142, %134, %122, %105, %99, %93
  %237 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %11, i32 0, i32 2
  %238 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %237, align 8
  %239 = call i32 @kfree(%struct.arm64_jit_data* %238)
  %240 = load %struct.arm64_jit_data*, %struct.arm64_jit_data** %7, align 8
  %241 = call i32 @kfree(%struct.arm64_jit_data* %240)
  %242 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %243 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %242, i32 0, i32 2
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  store %struct.arm64_jit_data* null, %struct.arm64_jit_data** %245, align 8
  br label %246

246:                                              ; preds = %236, %228
  br label %247

247:                                              ; preds = %246, %50
  %248 = load i32, i32* %9, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %247
  %251 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %252 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %253 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %254 = icmp eq %struct.bpf_prog* %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  br label %259

257:                                              ; preds = %250
  %258 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi %struct.bpf_prog* [ %256, %255 ], [ %258, %257 ]
  %261 = call i32 @bpf_jit_prog_release_other(%struct.bpf_prog* %251, %struct.bpf_prog* %260)
  br label %262

262:                                              ; preds = %259, %247
  %263 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %263, %struct.bpf_prog** %2, align 8
  br label %264

264:                                              ; preds = %262, %29, %21
  %265 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  ret %struct.bpf_prog* %265
}

declare dso_local i32 @bpf_prog_was_classic(%struct.bpf_prog*) #1

declare dso_local %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local %struct.arm64_jit_data* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.jit_ctx*, i32, i32) #1

declare dso_local %struct.arm64_jit_data* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @build_body(%struct.jit_ctx*, i32) #1

declare dso_local i64 @build_prologue(%struct.jit_ctx*, i32) #1

declare dso_local i32 @build_epilogue(%struct.jit_ctx*) #1

declare dso_local %struct.bpf_binary_header* @bpf_jit_binary_alloc(i32, i32**, i32, i32) #1

declare dso_local i32 @bpf_jit_binary_free(%struct.bpf_binary_header*) #1

declare dso_local i64 @validate_code(%struct.jit_ctx*) #1

declare dso_local i32 @bpf_jit_dump(i32, i32, i32, i32*) #1

declare dso_local i32 @bpf_flush_icache(%struct.bpf_binary_header*, i32*) #1

declare dso_local i32 @pr_err_once(i8*, i32, i32) #1

declare dso_local i32 @bpf_jit_binary_lock_ro(%struct.bpf_binary_header*) #1

declare dso_local i32 @bpf_prog_fill_jited_linfo(%struct.bpf_prog*, %struct.arm64_jit_data*) #1

declare dso_local i32 @kfree(%struct.arm64_jit_data*) #1

declare dso_local i32 @bpf_jit_prog_release_other(%struct.bpf_prog*, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
