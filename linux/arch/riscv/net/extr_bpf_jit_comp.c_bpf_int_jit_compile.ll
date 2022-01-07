; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_bpf_int_jit_compile.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_bpf_int_jit_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32, %struct.TYPE_2__*, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { %struct.rv_jit_data* }
%struct.rv_jit_data = type { i32, i64, %struct.rv_jit_context }
%struct.rv_jit_context = type { i32, i32, %struct.rv_jit_data*, i32*, %struct.bpf_prog* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@bpf_fill_ill_insns = common dso_local global i32 0, align 4
@bpf_jit_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca %struct.rv_jit_data*, align 8
  %9 = alloca %struct.rv_jit_context*, align 8
  %10 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %11, %struct.bpf_prog** %7, align 8
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  store %struct.bpf_prog* %17, %struct.bpf_prog** %2, align 8
  br label %217

18:                                               ; preds = %1
  %19 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %20 = call %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog* %19)
  store %struct.bpf_prog* %20, %struct.bpf_prog** %6, align 8
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %22 = call i64 @IS_ERR(%struct.bpf_prog* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  store %struct.bpf_prog* %25, %struct.bpf_prog** %2, align 8
  br label %217

26:                                               ; preds = %18
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %29 = icmp ne %struct.bpf_prog* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  %31 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  store %struct.bpf_prog* %31, %struct.bpf_prog** %3, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %34 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.rv_jit_data*, %struct.rv_jit_data** %36, align 8
  store %struct.rv_jit_data* %37, %struct.rv_jit_data** %8, align 8
  %38 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %39 = icmp ne %struct.rv_jit_data* %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.rv_jit_data* @kzalloc(i32 48, i32 %41)
  store %struct.rv_jit_data* %42, %struct.rv_jit_data** %8, align 8
  %43 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %44 = icmp ne %struct.rv_jit_data* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  store %struct.bpf_prog* %46, %struct.bpf_prog** %3, align 8
  br label %200

47:                                               ; preds = %40
  %48 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %49 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %50 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.rv_jit_data* %48, %struct.rv_jit_data** %52, align 8
  br label %53

53:                                               ; preds = %47, %32
  %54 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %55 = getelementptr inbounds %struct.rv_jit_data, %struct.rv_jit_data* %54, i32 0, i32 2
  store %struct.rv_jit_context* %55, %struct.rv_jit_context** %9, align 8
  %56 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %57 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %56, i32 0, i32 2
  %58 = load %struct.rv_jit_data*, %struct.rv_jit_data** %57, align 8
  %59 = icmp ne %struct.rv_jit_data* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  %61 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %62 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %10, align 4
  br label %127

67:                                               ; preds = %53
  %68 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %69 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %70 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %69, i32 0, i32 4
  store %struct.bpf_prog* %68, %struct.bpf_prog** %70, align 8
  %71 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %72 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.rv_jit_data* @kcalloc(i32 %73, i32 4, i32 %74)
  %76 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %77 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %76, i32 0, i32 2
  store %struct.rv_jit_data* %75, %struct.rv_jit_data** %77, align 8
  %78 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %79 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %78, i32 0, i32 2
  %80 = load %struct.rv_jit_data*, %struct.rv_jit_data** %79, align 8
  %81 = icmp ne %struct.rv_jit_data* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %67
  %83 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  store %struct.bpf_prog* %83, %struct.bpf_prog** %3, align 8
  br label %188

84:                                               ; preds = %67
  %85 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @build_body(%struct.rv_jit_context* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  store %struct.bpf_prog* %90, %struct.bpf_prog** %3, align 8
  br label %188

91:                                               ; preds = %84
  %92 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %93 = call i32 @build_prologue(%struct.rv_jit_context* %92)
  %94 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %95 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %98 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %100 = call i32 @build_epilogue(%struct.rv_jit_context* %99)
  %101 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %102 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %109 = getelementptr inbounds %struct.rv_jit_data, %struct.rv_jit_data* %108, i32 0, i32 1
  %110 = load i32, i32* @bpf_fill_ill_insns, align 4
  %111 = call i32 @bpf_jit_binary_alloc(i32 %107, i64* %109, i32 4, i32 %110)
  %112 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %113 = getelementptr inbounds %struct.rv_jit_data, %struct.rv_jit_data* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %115 = getelementptr inbounds %struct.rv_jit_data, %struct.rv_jit_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %91
  %119 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  store %struct.bpf_prog* %119, %struct.bpf_prog** %3, align 8
  br label %188

120:                                              ; preds = %91
  %121 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %122 = getelementptr inbounds %struct.rv_jit_data, %struct.rv_jit_data* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  %125 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %126 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %125, i32 0, i32 3
  store i32* %124, i32** %126, align 8
  br label %127

127:                                              ; preds = %120, %60
  %128 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %129 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %131 = call i32 @build_prologue(%struct.rv_jit_context* %130)
  %132 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i64 @build_body(%struct.rv_jit_context* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %127
  %137 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %138 = getelementptr inbounds %struct.rv_jit_data, %struct.rv_jit_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @bpf_jit_binary_free(i32 %139)
  %141 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  store %struct.bpf_prog* %141, %struct.bpf_prog** %3, align 8
  br label %188

142:                                              ; preds = %127
  %143 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %144 = call i32 @build_epilogue(%struct.rv_jit_context* %143)
  %145 = load i32, i32* @bpf_jit_enable, align 4
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %149 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %153 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @bpf_jit_dump(i32 %150, i32 %151, i32 2, i32* %154)
  br label %156

156:                                              ; preds = %147, %142
  %157 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %158 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = bitcast i32* %159 to i8*
  %161 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %162 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %164 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %167 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %169 = getelementptr inbounds %struct.rv_jit_data, %struct.rv_jit_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %172 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %175 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = call i32 @bpf_flush_icache(i32 %170, i32* %178)
  %180 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %181 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %156
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %184, %156
  br label %188

188:                                              ; preds = %187, %136, %118, %89, %82
  %189 = load %struct.rv_jit_context*, %struct.rv_jit_context** %9, align 8
  %190 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %189, i32 0, i32 2
  %191 = load %struct.rv_jit_data*, %struct.rv_jit_data** %190, align 8
  %192 = call i32 @kfree(%struct.rv_jit_data* %191)
  %193 = load %struct.rv_jit_data*, %struct.rv_jit_data** %8, align 8
  %194 = call i32 @kfree(%struct.rv_jit_data* %193)
  %195 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %196 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %195, i32 0, i32 2
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  store %struct.rv_jit_data* null, %struct.rv_jit_data** %198, align 8
  br label %199

199:                                              ; preds = %188, %184
  br label %200

200:                                              ; preds = %199, %45
  %201 = load i32, i32* %4, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %200
  %204 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %205 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %206 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %207 = icmp eq %struct.bpf_prog* %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  br label %212

210:                                              ; preds = %203
  %211 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi %struct.bpf_prog* [ %209, %208 ], [ %211, %210 ]
  %214 = call i32 @bpf_jit_prog_release_other(%struct.bpf_prog* %204, %struct.bpf_prog* %213)
  br label %215

215:                                              ; preds = %212, %200
  %216 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %216, %struct.bpf_prog** %2, align 8
  br label %217

217:                                              ; preds = %215, %24, %16
  %218 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  ret %struct.bpf_prog* %218
}

declare dso_local %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local %struct.rv_jit_data* @kzalloc(i32, i32) #1

declare dso_local %struct.rv_jit_data* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @build_body(%struct.rv_jit_context*, i32) #1

declare dso_local i32 @build_prologue(%struct.rv_jit_context*) #1

declare dso_local i32 @build_epilogue(%struct.rv_jit_context*) #1

declare dso_local i32 @bpf_jit_binary_alloc(i32, i64*, i32, i32) #1

declare dso_local i32 @bpf_jit_binary_free(i32) #1

declare dso_local i32 @bpf_jit_dump(i32, i32, i32, i32*) #1

declare dso_local i32 @bpf_flush_icache(i32, i32*) #1

declare dso_local i32 @kfree(%struct.rv_jit_data*) #1

declare dso_local i32 @bpf_jit_prog_release_other(%struct.bpf_prog*, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
