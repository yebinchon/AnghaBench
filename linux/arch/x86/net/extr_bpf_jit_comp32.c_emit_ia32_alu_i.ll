; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_alu_i.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_alu_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_EAX = common dso_local global i32 0, align 4
@IA32_EDX = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32**)* @emit_ia32_alu_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_alu_i(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32** %6, i32*** %14, align 8
  %19 = load i32**, i32*** %14, align 8
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* @IA32_EAX, align 4
  br label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %11, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* @IA32_EDX, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @IA32_EBP, align 4
  %34 = load i32, i32* @IA32_EAX, align 4
  %35 = call i32 @add_2reg(i32 64, i32 %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @STACK_VAR(i32 %36)
  %38 = call i32 @EMIT3(i32 139, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @is_imm8(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @IA32_EDX, align 4
  %45 = call i32 @add_1reg(i32 192, i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @EMIT2_off32(i32 199, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %173 [
    i32 133, label %50
    i32 129, label %87
    i32 130, label %124
    i32 132, label %139
    i32 128, label %154
    i32 131, label %169
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @is_imm8(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @add_1reg(i32 208, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @EMIT3(i32 131, i32 %62, i32 %63)
  br label %70

65:                                               ; preds = %56
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @add_2reg(i32 192, i32 %66, i32 %67)
  %69 = call i32 @EMIT2(i32 17, i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  br label %86

71:                                               ; preds = %53, %50
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @is_imm8(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @add_1reg(i32 192, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @EMIT3(i32 131, i32 %77, i32 %78)
  br label %85

80:                                               ; preds = %71
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @add_2reg(i32 192, i32 %81, i32 %82)
  %84 = call i32 @EMIT2(i32 1, i32 %83)
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85, %70
  br label %173

87:                                               ; preds = %48
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @is_imm8(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @add_1reg(i32 216, i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @EMIT3(i32 131, i32 %99, i32 %100)
  br label %107

102:                                              ; preds = %93
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @add_2reg(i32 192, i32 %103, i32 %104)
  %106 = call i32 @EMIT2(i32 25, i32 %105)
  br label %107

107:                                              ; preds = %102, %97
  br label %123

108:                                              ; preds = %90, %87
  %109 = load i32, i32* %12, align 4
  %110 = call i64 @is_imm8(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @add_1reg(i32 232, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @EMIT3(i32 131, i32 %114, i32 %115)
  br label %122

117:                                              ; preds = %108
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @add_2reg(i32 192, i32 %118, i32 %119)
  %121 = call i32 @EMIT2(i32 41, i32 %120)
  br label %122

122:                                              ; preds = %117, %112
  br label %123

123:                                              ; preds = %122, %107
  br label %173

124:                                              ; preds = %48
  %125 = load i32, i32* %12, align 4
  %126 = call i64 @is_imm8(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @add_1reg(i32 200, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @EMIT3(i32 131, i32 %130, i32 %131)
  br label %138

133:                                              ; preds = %124
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @add_2reg(i32 192, i32 %134, i32 %135)
  %137 = call i32 @EMIT2(i32 9, i32 %136)
  br label %138

138:                                              ; preds = %133, %128
  br label %173

139:                                              ; preds = %48
  %140 = load i32, i32* %12, align 4
  %141 = call i64 @is_imm8(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @add_1reg(i32 224, i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @EMIT3(i32 131, i32 %145, i32 %146)
  br label %153

148:                                              ; preds = %139
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %18, align 4
  %151 = call i32 @add_2reg(i32 192, i32 %149, i32 %150)
  %152 = call i32 @EMIT2(i32 33, i32 %151)
  br label %153

153:                                              ; preds = %148, %143
  br label %173

154:                                              ; preds = %48
  %155 = load i32, i32* %12, align 4
  %156 = call i64 @is_imm8(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @add_1reg(i32 240, i32 %159)
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @EMIT3(i32 131, i32 %160, i32 %161)
  br label %168

163:                                              ; preds = %154
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @add_2reg(i32 192, i32 %164, i32 %165)
  %167 = call i32 @EMIT2(i32 49, i32 %166)
  br label %168

168:                                              ; preds = %163, %158
  br label %173

169:                                              ; preds = %48
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @add_1reg(i32 216, i32 %170)
  %172 = call i32 @EMIT2(i32 247, i32 %171)
  br label %173

173:                                              ; preds = %48, %169, %168, %153, %138, %123, %86
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load i32, i32* @IA32_EBP, align 4
  %178 = load i32, i32* %17, align 4
  %179 = call i32 @add_2reg(i32 64, i32 %177, i32 %178)
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @STACK_VAR(i32 %180)
  %182 = call i32 @EMIT3(i32 137, i32 %179, i32 %181)
  br label %183

183:                                              ; preds = %176, %173
  %184 = load i32*, i32** %15, align 8
  %185 = load i32**, i32*** %14, align 8
  store i32* %184, i32** %185, align 8
  ret void
}

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

declare dso_local i32 @STACK_VAR(i32) #1

declare dso_local i64 @is_imm8(i32) #1

declare dso_local i32 @EMIT2_off32(i32, i32, i32) #1

declare dso_local i32 @add_1reg(i32, i32) #1

declare dso_local i32 @EMIT2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
