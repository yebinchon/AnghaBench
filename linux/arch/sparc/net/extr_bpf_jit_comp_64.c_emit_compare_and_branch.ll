; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_compare_and_branch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_compare_and_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32*, i32, i64 }

@sparc64_elf_hwcap = common dso_local global i32 0, align 4
@AV_SPARC_CBCOND = common dso_local global i32 0, align 4
@bpf2sparc = common dso_local global i32* null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@BE = common dso_local global i32 0, align 4
@BGU = common dso_local global i32 0, align 4
@BLU = common dso_local global i32 0, align 4
@BGEU = common dso_local global i32 0, align 4
@BLEU = common dso_local global i32 0, align 4
@BNE = common dso_local global i32 0, align 4
@BG = common dso_local global i32 0, align 4
@BL = common dso_local global i32 0, align 4
@BGE = common dso_local global i32 0, align 4
@BLE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@CBCONDE = common dso_local global i32 0, align 4
@CBCONDGU = common dso_local global i32 0, align 4
@CBCONDLU = common dso_local global i32 0, align 4
@CBCONDGEU = common dso_local global i32 0, align 4
@CBCONDLEU = common dso_local global i32 0, align 4
@CBCONDNE = common dso_local global i32 0, align 4
@CBCONDG = common dso_local global i32 0, align 4
@CBCONDL = common dso_local global i32 0, align 4
@CBCONDGE = common dso_local global i32 0, align 4
@CBCONDLE = common dso_local global i32 0, align 4
@CBCOND_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, %struct.jit_ctx*)* @emit_compare_and_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_compare_and_branch(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.jit_ctx* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.jit_ctx*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.jit_ctx* %6, %struct.jit_ctx** %15, align 8
  %21 = load i32, i32* @sparc64_elf_hwcap, align 4
  %22 = load i32, i32* @AV_SPARC_CBCOND, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %16, align 4
  %26 = load i32*, i32** @bpf2sparc, align 8
  %27 = load i64, i64* @TMP_REG_1, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %31 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %40 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i32 @is_simm10(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %7
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @BPF_OP(i32 %46)
  %48 = icmp eq i32 %47, 132
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %7
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  store i32 1, i32* %18, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @is_simm5(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %60, %56
  br label %68

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @is_simm13(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %66, %62
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %73 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %77 = call i32 @emit_loadimm_sext(i32 %74, i32 %75, %struct.jit_ctx* %76)
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %71, %68
  br label %80

80:                                               ; preds = %79, %50
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %151, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @BPF_OP(i32 %84)
  %86 = icmp eq i32 %85, 132
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %94 = call i32 @emit_btsti(i32 %91, i32 %92, %struct.jit_ctx* %93)
  br label %100

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %99 = call i32 @emit_btst(i32 %96, i32 %97, %struct.jit_ctx* %98)
  br label %100

100:                                              ; preds = %95, %90
  br label %115

101:                                              ; preds = %83
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %108 = call i32 @emit_cmpi(i32 %105, i32 %106, %struct.jit_ctx* %107)
  br label %114

109:                                              ; preds = %101
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %113 = call i32 @emit_cmp(i32 %110, i32 %111, %struct.jit_ctx* %112)
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %100
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @BPF_OP(i32 %116)
  switch i32 %117, label %138 [
    i32 138, label %118
    i32 136, label %120
    i32 134, label %122
    i32 137, label %124
    i32 135, label %126
    i32 132, label %128
    i32 133, label %128
    i32 130, label %130
    i32 128, label %132
    i32 131, label %134
    i32 129, label %136
  ]

118:                                              ; preds = %115
  %119 = load i32, i32* @BE, align 4
  store i32 %119, i32* %19, align 4
  br label %141

120:                                              ; preds = %115
  %121 = load i32, i32* @BGU, align 4
  store i32 %121, i32* %19, align 4
  br label %141

122:                                              ; preds = %115
  %123 = load i32, i32* @BLU, align 4
  store i32 %123, i32* %19, align 4
  br label %141

124:                                              ; preds = %115
  %125 = load i32, i32* @BGEU, align 4
  store i32 %125, i32* %19, align 4
  br label %141

126:                                              ; preds = %115
  %127 = load i32, i32* @BLEU, align 4
  store i32 %127, i32* %19, align 4
  br label %141

128:                                              ; preds = %115, %115
  %129 = load i32, i32* @BNE, align 4
  store i32 %129, i32* %19, align 4
  br label %141

130:                                              ; preds = %115
  %131 = load i32, i32* @BG, align 4
  store i32 %131, i32* %19, align 4
  br label %141

132:                                              ; preds = %115
  %133 = load i32, i32* @BL, align 4
  store i32 %133, i32* %19, align 4
  br label %141

134:                                              ; preds = %115
  %135 = load i32, i32* @BGE, align 4
  store i32 %135, i32* %19, align 4
  br label %141

136:                                              ; preds = %115
  %137 = load i32, i32* @BLE, align 4
  store i32 %137, i32* %19, align 4
  br label %141

138:                                              ; preds = %115
  %139 = load i32, i32* @EFAULT, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %205

141:                                              ; preds = %136, %134, %132, %130, %128, %126, %124, %122, %120, %118
  %142 = load i32, i32* %19, align 4
  %143 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %144 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %148 = call i32 @emit_branch(i32 %142, i64 %145, i32 %146, %struct.jit_ctx* %147)
  %149 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %150 = call i32 @emit_nop(%struct.jit_ctx* %149)
  br label %204

151:                                              ; preds = %80
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @BPF_OP(i32 %152)
  switch i32 %153, label %174 [
    i32 138, label %154
    i32 136, label %156
    i32 134, label %158
    i32 137, label %160
    i32 135, label %162
    i32 133, label %164
    i32 130, label %166
    i32 128, label %168
    i32 131, label %170
    i32 129, label %172
  ]

154:                                              ; preds = %151
  %155 = load i32, i32* @CBCONDE, align 4
  store i32 %155, i32* %20, align 4
  br label %177

156:                                              ; preds = %151
  %157 = load i32, i32* @CBCONDGU, align 4
  store i32 %157, i32* %20, align 4
  br label %177

158:                                              ; preds = %151
  %159 = load i32, i32* @CBCONDLU, align 4
  store i32 %159, i32* %20, align 4
  br label %177

160:                                              ; preds = %151
  %161 = load i32, i32* @CBCONDGEU, align 4
  store i32 %161, i32* %20, align 4
  br label %177

162:                                              ; preds = %151
  %163 = load i32, i32* @CBCONDLEU, align 4
  store i32 %163, i32* %20, align 4
  br label %177

164:                                              ; preds = %151
  %165 = load i32, i32* @CBCONDNE, align 4
  store i32 %165, i32* %20, align 4
  br label %177

166:                                              ; preds = %151
  %167 = load i32, i32* @CBCONDG, align 4
  store i32 %167, i32* %20, align 4
  br label %177

168:                                              ; preds = %151
  %169 = load i32, i32* @CBCONDL, align 4
  store i32 %169, i32* %20, align 4
  br label %177

170:                                              ; preds = %151
  %171 = load i32, i32* @CBCONDGE, align 4
  store i32 %171, i32* %20, align 4
  br label %177

172:                                              ; preds = %151
  %173 = load i32, i32* @CBCONDLE, align 4
  store i32 %173, i32* %20, align 4
  br label %177

174:                                              ; preds = %151
  %175 = load i32, i32* @EFAULT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %8, align 4
  br label %205

177:                                              ; preds = %172, %170, %168, %166, %164, %162, %160, %158, %156, %154
  %178 = load i32, i32* @CBCOND_OP, align 4
  %179 = load i32, i32* %20, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %177
  %184 = load i32, i32* %20, align 4
  %185 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %186 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %192 = call i32 @emit_cbcondi(i32 %184, i64 %187, i32 %188, i32 %189, i32 %190, %struct.jit_ctx* %191)
  br label %203

193:                                              ; preds = %177
  %194 = load i32, i32* %20, align 4
  %195 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %196 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.jit_ctx*, %struct.jit_ctx** %15, align 8
  %202 = call i32 @emit_cbcond(i32 %194, i64 %197, i32 %198, i32 %199, i32 %200, %struct.jit_ctx* %201)
  br label %203

203:                                              ; preds = %193, %183
  br label %204

204:                                              ; preds = %203, %141
  store i32 0, i32* %8, align 4
  br label %205

205:                                              ; preds = %204, %174, %138
  %206 = load i32, i32* %8, align 4
  ret i32 %206
}

declare dso_local i32 @is_simm10(i64) #1

declare dso_local i32 @BPF_OP(i32) #1

declare dso_local i32 @is_simm5(i32) #1

declare dso_local i32 @is_simm13(i32) #1

declare dso_local i32 @emit_loadimm_sext(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_btsti(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_btst(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_cmpi(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_cmp(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_branch(i32, i64, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_nop(%struct.jit_ctx*) #1

declare dso_local i32 @emit_cbcondi(i32, i64, i32, i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_cbcond(i32, i64, i32, i32, i32, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
