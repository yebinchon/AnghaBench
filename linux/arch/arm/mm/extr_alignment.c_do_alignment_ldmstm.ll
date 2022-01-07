; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_do_alignment_ldmstm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_do_alignment_ldmstm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64* }

@ai_multi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"LDMSTM: PC = %08lx, instr = %08x, addr = %08lx, eaddr = %08lx\0A\00", align 1
@TYPE_DONE = common dso_local global i32 0, align 4
@TYPE_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Alignment trap: not handling ldm with s-bit set\0A\00", align 1
@TYPE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @do_alignment_ldmstm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_alignment_ldmstm(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @LDM_S_BIT(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %216

22:                                               ; preds = %3
  store i32 4, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @ai_multi, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @ai_multi, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @REGMASK_BITS(i32 %30)
  %32 = call i32 @hweight16(i32 %31)
  %33 = mul nsw i32 %32, 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @RN_BITS(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %13, align 8
  store i64 %42, i64* %14, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @LDST_U_BIT(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %22
  %47 = load i32, i32* %11, align 4
  %48 = sub i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %22
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %14, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @LDST_U_BIT(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %14, align 8
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %57, %49
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @LDST_P_EQ_U(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %72 = call i32 @instruction_pointer(%struct.pt_regs* %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73, i64 %74, i64 %75)
  %77 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %78 = call i32 @show_regs(%struct.pt_regs* %77)
  br label %79

79:                                               ; preds = %70, %66
  %80 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %81 = call i64 @user_mode(%struct.pt_regs* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %133

83:                                               ; preds = %79
  %84 = call i32 (...) @uaccess_save_and_enable()
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @REGMASK_BITS(i32 %85)
  store i32 %86, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %125, %83
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %130

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @LDST_L_BIT(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i32, i32* %16, align 4
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @get32t_unaligned_check(i32 %99, i64 %100)
  %102 = load i32, i32* %16, align 4
  %103 = zext i32 %102 to i64
  %104 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %105 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  store i64 %103, i64* %109, align 8
  br label %121

110:                                              ; preds = %94
  %111 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %112 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @put32t_unaligned_check(i32 %118, i64 %119)
  br label %121

121:                                              ; preds = %110, %98
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %13, align 8
  br label %124

124:                                              ; preds = %121, %90
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %12, align 4
  %127 = lshr i32 %126, 1
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %8, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %87

130:                                              ; preds = %87
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @uaccess_restore(i32 %131)
  br label %180

133:                                              ; preds = %79
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @REGMASK_BITS(i32 %134)
  store i32 %135, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %174, %133
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %179

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  %145 = call i64 @LDST_L_BIT(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load i32, i32* %17, align 4
  %149 = load i64, i64* %13, align 8
  %150 = call i32 @get32_unaligned_check(i32 %148, i64 %149)
  %151 = load i32, i32* %17, align 4
  %152 = zext i32 %151 to i64
  %153 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %154 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64 %152, i64* %158, align 8
  br label %170

159:                                              ; preds = %143
  %160 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %161 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = load i64, i64* %13, align 8
  %169 = call i32 @put32_unaligned_check(i32 %167, i64 %168)
  br label %170

170:                                              ; preds = %159, %147
  %171 = load i64, i64* %13, align 8
  %172 = add i64 %171, 4
  store i64 %172, i64* %13, align 8
  br label %173

173:                                              ; preds = %170, %139
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %12, align 4
  %176 = lshr i32 %175, 1
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %8, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %136

179:                                              ; preds = %136
  br label %180

180:                                              ; preds = %179, %130
  %181 = load i32, i32* %6, align 4
  %182 = call i64 @LDST_W_BIT(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load i64, i64* %14, align 8
  %186 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %187 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  store i64 %185, i64* %191, align 8
  br label %192

192:                                              ; preds = %184, %180
  %193 = load i32, i32* %6, align 4
  %194 = call i64 @LDST_L_BIT(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @REGMASK_BITS(i32 %197)
  %199 = and i32 %198, 32768
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %196, %192
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %204 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sub i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %196
  %208 = load i32, i32* @TYPE_DONE, align 4
  store i32 %208, i32* %4, align 4
  br label %219

209:                                              ; No predecessors!
  %210 = load i32, i32* %10, align 4
  %211 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %212 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sub i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load i32, i32* @TYPE_FAULT, align 4
  store i32 %215, i32* %4, align 4
  br label %219

216:                                              ; preds = %21
  %217 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %218 = load i32, i32* @TYPE_ERROR, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %216, %209, %207
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i64 @LDM_S_BIT(i32) #1

declare dso_local i32 @hweight16(i32) #1

declare dso_local i32 @REGMASK_BITS(i32) #1

declare dso_local i32 @RN_BITS(i32) #1

declare dso_local i32 @LDST_U_BIT(i32) #1

declare dso_local i64 @LDST_P_EQ_U(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @uaccess_save_and_enable(...) #1

declare dso_local i64 @LDST_L_BIT(i32) #1

declare dso_local i32 @get32t_unaligned_check(i32, i64) #1

declare dso_local i32 @put32t_unaligned_check(i32, i64) #1

declare dso_local i32 @uaccess_restore(i32) #1

declare dso_local i32 @get32_unaligned_check(i32, i64) #1

declare dso_local i32 @put32_unaligned_check(i32, i64) #1

declare dso_local i64 @LDST_W_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
