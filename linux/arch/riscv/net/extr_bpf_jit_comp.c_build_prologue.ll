; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_build_prologue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_build_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rv_jit_context = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RV_REG_RA = common dso_local global i32 0, align 4
@RV_REG_S1 = common dso_local global i32 0, align 4
@RV_REG_S2 = common dso_local global i32 0, align 4
@RV_REG_S3 = common dso_local global i32 0, align 4
@RV_REG_S4 = common dso_local global i32 0, align 4
@RV_REG_S5 = common dso_local global i32 0, align 4
@RV_REG_S6 = common dso_local global i32 0, align 4
@RV_REG_TCC = common dso_local global i32 0, align 4
@RV_REG_ZERO = common dso_local global i32 0, align 4
@MAX_TAIL_CALL_CNT = common dso_local global i32 0, align 4
@RV_REG_SP = common dso_local global i32 0, align 4
@RV_REG_FP = common dso_local global i32 0, align 4
@RV_REG_TCC_SAVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rv_jit_context*)* @build_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_prologue(%struct.rv_jit_context* %0) #0 {
  %2 = alloca %struct.rv_jit_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rv_jit_context* %0, %struct.rv_jit_context** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @RV_REG_RA, align 4
  %7 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %8 = call i64 @seen_reg(i32 %6, %struct.rv_jit_context* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 8
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 8
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @RV_REG_S1, align 4
  %17 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %18 = call i64 @seen_reg(i32 %16, %struct.rv_jit_context* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 8
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* @RV_REG_S2, align 4
  %25 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %26 = call i64 @seen_reg(i32 %24, %struct.rv_jit_context* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 8
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* @RV_REG_S3, align 4
  %33 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %34 = call i64 @seen_reg(i32 %32, %struct.rv_jit_context* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 8
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* @RV_REG_S4, align 4
  %41 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %42 = call i64 @seen_reg(i32 %40, %struct.rv_jit_context* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 8
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* @RV_REG_S5, align 4
  %49 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %50 = call i64 @seen_reg(i32 %48, %struct.rv_jit_context* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 8
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* @RV_REG_S6, align 4
  %57 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %58 = call i64 @seen_reg(i32 %56, %struct.rv_jit_context* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 8
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @round_up(i32 %64, i32 16)
  store i32 %65, i32* %3, align 4
  %66 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %67 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @round_up(i32 %72, i32 16)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = sub nsw i32 %77, 8
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @RV_REG_TCC, align 4
  %80 = load i32, i32* @RV_REG_ZERO, align 4
  %81 = load i32, i32* @MAX_TAIL_CALL_CNT, align 4
  %82 = call i32 @rv_addi(i32 %79, i32 %80, i32 %81)
  %83 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %84 = call i32 @emit(i32 %82, %struct.rv_jit_context* %83)
  %85 = load i32, i32* @RV_REG_SP, align 4
  %86 = load i32, i32* @RV_REG_SP, align 4
  %87 = load i32, i32* %3, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @rv_addi(i32 %85, i32 %86, i32 %88)
  %90 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %91 = call i32 @emit(i32 %89, %struct.rv_jit_context* %90)
  %92 = load i32, i32* @RV_REG_RA, align 4
  %93 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %94 = call i64 @seen_reg(i32 %92, %struct.rv_jit_context* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %63
  %97 = load i32, i32* @RV_REG_SP, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @RV_REG_RA, align 4
  %100 = call i32 @rv_sd(i32 %97, i32 %98, i32 %99)
  %101 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %102 = call i32 @emit(i32 %100, %struct.rv_jit_context* %101)
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %103, 8
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %96, %63
  %106 = load i32, i32* @RV_REG_SP, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @RV_REG_FP, align 4
  %109 = call i32 @rv_sd(i32 %106, i32 %107, i32 %108)
  %110 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %111 = call i32 @emit(i32 %109, %struct.rv_jit_context* %110)
  %112 = load i32, i32* %4, align 4
  %113 = sub nsw i32 %112, 8
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* @RV_REG_S1, align 4
  %115 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %116 = call i64 @seen_reg(i32 %114, %struct.rv_jit_context* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %105
  %119 = load i32, i32* @RV_REG_SP, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @RV_REG_S1, align 4
  %122 = call i32 @rv_sd(i32 %119, i32 %120, i32 %121)
  %123 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %124 = call i32 @emit(i32 %122, %struct.rv_jit_context* %123)
  %125 = load i32, i32* %4, align 4
  %126 = sub nsw i32 %125, 8
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %118, %105
  %128 = load i32, i32* @RV_REG_S2, align 4
  %129 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %130 = call i64 @seen_reg(i32 %128, %struct.rv_jit_context* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load i32, i32* @RV_REG_SP, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @RV_REG_S2, align 4
  %136 = call i32 @rv_sd(i32 %133, i32 %134, i32 %135)
  %137 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %138 = call i32 @emit(i32 %136, %struct.rv_jit_context* %137)
  %139 = load i32, i32* %4, align 4
  %140 = sub nsw i32 %139, 8
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %132, %127
  %142 = load i32, i32* @RV_REG_S3, align 4
  %143 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %144 = call i64 @seen_reg(i32 %142, %struct.rv_jit_context* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load i32, i32* @RV_REG_SP, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @RV_REG_S3, align 4
  %150 = call i32 @rv_sd(i32 %147, i32 %148, i32 %149)
  %151 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %152 = call i32 @emit(i32 %150, %struct.rv_jit_context* %151)
  %153 = load i32, i32* %4, align 4
  %154 = sub nsw i32 %153, 8
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %146, %141
  %156 = load i32, i32* @RV_REG_S4, align 4
  %157 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %158 = call i64 @seen_reg(i32 %156, %struct.rv_jit_context* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load i32, i32* @RV_REG_SP, align 4
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @RV_REG_S4, align 4
  %164 = call i32 @rv_sd(i32 %161, i32 %162, i32 %163)
  %165 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %166 = call i32 @emit(i32 %164, %struct.rv_jit_context* %165)
  %167 = load i32, i32* %4, align 4
  %168 = sub nsw i32 %167, 8
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %160, %155
  %170 = load i32, i32* @RV_REG_S5, align 4
  %171 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %172 = call i64 @seen_reg(i32 %170, %struct.rv_jit_context* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %169
  %175 = load i32, i32* @RV_REG_SP, align 4
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @RV_REG_S5, align 4
  %178 = call i32 @rv_sd(i32 %175, i32 %176, i32 %177)
  %179 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %180 = call i32 @emit(i32 %178, %struct.rv_jit_context* %179)
  %181 = load i32, i32* %4, align 4
  %182 = sub nsw i32 %181, 8
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %174, %169
  %184 = load i32, i32* @RV_REG_S6, align 4
  %185 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %186 = call i64 @seen_reg(i32 %184, %struct.rv_jit_context* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load i32, i32* @RV_REG_SP, align 4
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @RV_REG_S6, align 4
  %192 = call i32 @rv_sd(i32 %189, i32 %190, i32 %191)
  %193 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %194 = call i32 @emit(i32 %192, %struct.rv_jit_context* %193)
  %195 = load i32, i32* %4, align 4
  %196 = sub nsw i32 %195, 8
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %188, %183
  %198 = load i32, i32* @RV_REG_FP, align 4
  %199 = load i32, i32* @RV_REG_SP, align 4
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @rv_addi(i32 %198, i32 %199, i32 %200)
  %202 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %203 = call i32 @emit(i32 %201, %struct.rv_jit_context* %202)
  %204 = load i32, i32* %5, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %197
  %207 = load i32, i32* @RV_REG_S5, align 4
  %208 = load i32, i32* @RV_REG_SP, align 4
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @rv_addi(i32 %207, i32 %208, i32 %209)
  %211 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %212 = call i32 @emit(i32 %210, %struct.rv_jit_context* %211)
  br label %213

213:                                              ; preds = %206, %197
  %214 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %215 = call i64 @seen_tail_call(%struct.rv_jit_context* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %219 = call i64 @seen_call(%struct.rv_jit_context* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %217
  %222 = load i32, i32* @RV_REG_TCC_SAVED, align 4
  %223 = load i32, i32* @RV_REG_TCC, align 4
  %224 = call i32 @rv_addi(i32 %222, i32 %223, i32 0)
  %225 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %226 = call i32 @emit(i32 %224, %struct.rv_jit_context* %225)
  br label %227

227:                                              ; preds = %221, %217, %213
  %228 = load i32, i32* %3, align 4
  %229 = load %struct.rv_jit_context*, %struct.rv_jit_context** %2, align 8
  %230 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  ret void
}

declare dso_local i64 @seen_reg(i32, %struct.rv_jit_context*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @emit(i32, %struct.rv_jit_context*) #1

declare dso_local i32 @rv_addi(i32, i32, i32) #1

declare dso_local i32 @rv_sd(i32, i32, i32) #1

declare dso_local i64 @seen_tail_call(%struct.rv_jit_context*) #1

declare dso_local i64 @seen_call(%struct.rv_jit_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
