; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_emit_const_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_emit_const_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@daddiu = common dso_local global i32 0, align 4
@MIPS_R_ZERO = common dso_local global i32 0, align 4
@lui = common dso_local global i32 0, align 4
@ori = common dso_local global i32 0, align 4
@dsll_safe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jit_ctx*, i32, i32)* @emit_const_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_const_to_reg(%struct.jit_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jit_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, -32768
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 32768
  br i1 %17, label %18, label %25

18:                                               ; preds = %14, %3
  %19 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %20 = load i32, i32* @daddiu, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MIPS_R_ZERO, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (%struct.jit_ctx*, i32, i32, i32, ...) @emit_instr(%struct.jit_ctx* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  br label %130

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 %27, -2147483648
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %30, -2147483648
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 65535
  br i1 %34, label %35, label %51

35:                                               ; preds = %32, %25
  %36 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %37 = load i32, i32* @lui, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 16
  %41 = sext i32 %40 to i64
  %42 = trunc i64 %41 to i32
  %43 = call i32 (%struct.jit_ctx*, i32, i32, i32, ...) @emit_instr(%struct.jit_ctx* %36, i32 %37, i32 %38, i32 %42)
  %44 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %45 = load i32, i32* @ori, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 65535
  %50 = call i32 (%struct.jit_ctx*, i32, i32, i32, ...) @emit_instr(%struct.jit_ctx* %44, i32 %45, i32 %46, i32 %47, i32 %49)
  br label %129

51:                                               ; preds = %32, %29
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %125, %51
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %128

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 3, %57
  %59 = mul nsw i32 16, %58
  %60 = ashr i32 %56, %59
  %61 = and i32 %60, 65535
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %80

73:                                               ; preds = %70, %67
  %74 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %75 = load i32, i32* @dsll_safe, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (%struct.jit_ctx*, i32, i32, i32, ...) @emit_instr(%struct.jit_ctx* %74, i32 %75, i32 %76, i32 %77, i32 %78)
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %73, %70, %64, %55
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 32768
  br i1 %94, label %95, label %103

95:                                               ; preds = %92, %83
  %96 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %97 = load i32, i32* @lui, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = trunc i64 %100 to i32
  %102 = call i32 (%struct.jit_ctx*, i32, i32, i32, ...) @emit_instr(%struct.jit_ctx* %96, i32 %97, i32 %98, i32 %101)
  store i32 -16, i32* %9, align 4
  br label %117

103:                                              ; preds = %92, %89, %86
  %104 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %105 = load i32, i32* @ori, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  br label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @MIPS_R_ZERO, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load i32, i32* %10, align 4
  %116 = call i32 (%struct.jit_ctx*, i32, i32, i32, ...) @emit_instr(%struct.jit_ctx* %104, i32 %105, i32 %106, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %95
  store i32 1, i32* %8, align 4
  br label %118

118:                                              ; preds = %117, %80
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 16
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %52

128:                                              ; preds = %52
  br label %129

129:                                              ; preds = %128, %35
  br label %130

130:                                              ; preds = %129, %18
  ret void
}

declare dso_local i32 @emit_instr(%struct.jit_ctx*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
