; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_bpf_int_jit_compile.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_bpf_int_jit_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32, i8*, i64, i32 }
%struct.bpf_binary_header = type { i32 }
%struct.jit_ctx = type { i32, i32, i32, i32, i32*, i32*, i32*, i64, %struct.bpf_prog* }

@MIPS_ISA_REV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EBPF_SEEN_TC = common dso_local global i32 0, align 4
@EBPF_SAVE_RA = common dso_local global i32 0, align 4
@EBPF_SAVE_S4 = common dso_local global i32 0, align 4
@EBPF_TCC_IN_V1 = common dso_local global i32 0, align 4
@MIPS_R_RA = common dso_local global i32 0, align 4
@jit_fill_hole = common dso_local global i32 0, align 4
@bpf_jit_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca %struct.bpf_binary_header*, align 8
  %8 = alloca %struct.jit_ctx, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  %11 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %11, %struct.bpf_prog** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.bpf_binary_header* null, %struct.bpf_binary_header** %7, align 8
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @MIPS_ISA_REV, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %1
  %20 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %20, %struct.bpf_prog** %2, align 8
  br label %217

21:                                               ; preds = %16
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %23 = call %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog* %22)
  store %struct.bpf_prog* %23, %struct.bpf_prog** %6, align 8
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %25 = call i64 @IS_ERR(%struct.bpf_prog* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  store %struct.bpf_prog* %28, %struct.bpf_prog** %2, align 8
  br label %217

29:                                               ; preds = %21
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %31 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %32 = icmp ne %struct.bpf_prog* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  %34 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  store %struct.bpf_prog* %34, %struct.bpf_prog** %3, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = call i32 @memset(%struct.jit_ctx* %8, i32 0, i32 56)
  %37 = call i32 (...) @preempt_disable()
  %38 = call i32 (...) @current_cpu_type()
  switch i32 %38, label %41 [
    i32 131, label %39
    i32 128, label %39
    i32 130, label %39
    i32 129, label %39
  ]

39:                                               ; preds = %35, %35, %35, %35
  %40 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %43

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = call i32 (...) @preempt_enable()
  %45 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %46 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kcalloc(i64 %48, i32 4, i32 %49)
  %51 = bitcast i8* %50 to i32*
  %52 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 5
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %209

57:                                               ; preds = %43
  %58 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %59 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kcalloc(i64 %61, i32 4, i32 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 4
  store i32* %64, i32** %65, align 8
  %66 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %209

70:                                               ; preds = %57
  %71 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %72 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 8
  store %struct.bpf_prog* %71, %struct.bpf_prog** %72, align 8
  %73 = call i64 @reg_val_propagate(%struct.jit_ctx* %8)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %209

76:                                               ; preds = %70
  %77 = call i64 @build_int_body(%struct.jit_ctx* %8)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %209

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @EBPF_SEEN_TC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @EBPF_SAVE_RA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load i32, i32* @EBPF_SAVE_S4, align 4
  %94 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %102

97:                                               ; preds = %86
  %98 = load i32, i32* @EBPF_TCC_IN_V1, align 4
  %99 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %80
  br label %104

104:                                              ; preds = %121, %103
  %105 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 3
  store i32 1, i32* %106, align 4
  %107 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 7
  store i64 0, i64* %107, align 8
  %108 = call i64 @gen_int_prologue(%struct.jit_ctx* %8)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %209

111:                                              ; preds = %104
  %112 = call i64 @build_int_body(%struct.jit_ctx* %8)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %209

115:                                              ; preds = %111
  %116 = load i32, i32* @MIPS_R_RA, align 4
  %117 = call i64 @build_int_epilogue(%struct.jit_ctx* %8, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %209

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %104, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 4, %127
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @jit_fill_hole, align 4
  %131 = call %struct.bpf_binary_header* @bpf_jit_binary_alloc(i32 %129, i32** %10, i32 4, i32 %130)
  store %struct.bpf_binary_header* %131, %struct.bpf_binary_header** %7, align 8
  %132 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %7, align 8
  %133 = icmp eq %struct.bpf_binary_header* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %209

135:                                              ; preds = %125
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 6
  store i32* %136, i32** %137, align 8
  %138 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 2
  store i32 0, i32* %138, align 8
  %139 = call i64 @gen_int_prologue(%struct.jit_ctx* %8)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %209

142:                                              ; preds = %135
  %143 = call i64 @build_int_body(%struct.jit_ctx* %8)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %209

146:                                              ; preds = %142
  %147 = load i32, i32* @MIPS_R_RA, align 4
  %148 = call i64 @build_int_epilogue(%struct.jit_ctx* %8, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %209

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = ptrtoint i32* %153 to i64
  %155 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = ptrtoint i32* %160 to i64
  %162 = call i32 @flush_icache_range(i64 %154, i64 %161)
  %163 = load i32, i32* @bpf_jit_enable, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %173

165:                                              ; preds = %151
  %166 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %167 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 6
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @bpf_jit_dump(i64 %168, i32 %169, i32 2, i32* %171)
  br label %173

173:                                              ; preds = %165, %151
  %174 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %7, align 8
  %175 = call i32 @bpf_jit_binary_lock_ro(%struct.bpf_binary_header* %174)
  %176 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = bitcast i32* %177 to i8*
  %179 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %180 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %179, i32 0, i32 2
  store i8* %178, i8** %180, align 8
  %181 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %182 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %185 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %216, %173
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %186
  %190 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %191 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %192 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %193 = icmp eq %struct.bpf_prog* %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  br label %198

196:                                              ; preds = %189
  %197 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi %struct.bpf_prog* [ %195, %194 ], [ %197, %196 ]
  %200 = call i32 @bpf_jit_prog_release_other(%struct.bpf_prog* %190, %struct.bpf_prog* %199)
  br label %201

201:                                              ; preds = %198, %186
  %202 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @kfree(i32* %203)
  %205 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @kfree(i32* %206)
  %208 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %208, %struct.bpf_prog** %2, align 8
  br label %217

209:                                              ; preds = %150, %145, %141, %134, %119, %114, %110, %79, %75, %69, %56
  %210 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  store %struct.bpf_prog* %210, %struct.bpf_prog** %3, align 8
  %211 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %7, align 8
  %212 = icmp ne %struct.bpf_binary_header* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %7, align 8
  %215 = call i32 @bpf_jit_binary_free(%struct.bpf_binary_header* %214)
  br label %216

216:                                              ; preds = %213, %209
  br label %186

217:                                              ; preds = %201, %27, %19
  %218 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  ret %struct.bpf_prog* %218
}

declare dso_local %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @memset(%struct.jit_ctx*, i32, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i64 @reg_val_propagate(%struct.jit_ctx*) #1

declare dso_local i64 @build_int_body(%struct.jit_ctx*) #1

declare dso_local i64 @gen_int_prologue(%struct.jit_ctx*) #1

declare dso_local i64 @build_int_epilogue(%struct.jit_ctx*, i32) #1

declare dso_local %struct.bpf_binary_header* @bpf_jit_binary_alloc(i32, i32**, i32, i32) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

declare dso_local i32 @bpf_jit_dump(i64, i32, i32, i32*) #1

declare dso_local i32 @bpf_jit_binary_lock_ro(%struct.bpf_binary_header*) #1

declare dso_local i32 @bpf_jit_prog_release_other(%struct.bpf_prog*, %struct.bpf_prog*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bpf_jit_binary_free(%struct.bpf_binary_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
