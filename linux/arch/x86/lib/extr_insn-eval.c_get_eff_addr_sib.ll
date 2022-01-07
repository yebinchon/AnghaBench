; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_eff_addr_sib.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_eff_addr_sib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pt_regs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_TYPE_BASE = common dso_local global i32 0, align 4
@REG_TYPE_INDEX = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*, %struct.pt_regs*, i32*, i64*)* @get_eff_addr_sib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_eff_addr_sib(%struct.insn* %0, %struct.pt_regs* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.insn*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.insn* %0, %struct.insn** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.insn*, %struct.insn** %6, align 8
  %17 = getelementptr inbounds %struct.insn, %struct.insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 8
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.insn*, %struct.insn** %6, align 8
  %22 = getelementptr inbounds %struct.insn, %struct.insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %160

28:                                               ; preds = %20, %4
  %29 = load %struct.insn*, %struct.insn** %6, align 8
  %30 = call i32 @insn_get_modrm(%struct.insn* %29)
  %31 = load %struct.insn*, %struct.insn** %6, align 8
  %32 = getelementptr inbounds %struct.insn, %struct.insn* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %160

39:                                               ; preds = %28
  %40 = load %struct.insn*, %struct.insn** %6, align 8
  %41 = getelementptr inbounds %struct.insn, %struct.insn* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @X86_MODRM_MOD(i32 %43)
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %160

49:                                               ; preds = %39
  %50 = load %struct.insn*, %struct.insn** %6, align 8
  %51 = call i32 @insn_get_sib(%struct.insn* %50)
  %52 = load %struct.insn*, %struct.insn** %6, align 8
  %53 = getelementptr inbounds %struct.insn, %struct.insn* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %160

60:                                               ; preds = %49
  %61 = load %struct.insn*, %struct.insn** %6, align 8
  %62 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %63 = load i32, i32* @REG_TYPE_BASE, align 4
  %64 = call i32 @get_reg_offset(%struct.insn* %61, %struct.pt_regs* %62, i32 %63)
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.insn*, %struct.insn** %6, align 8
  %67 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %68 = load i32, i32* @REG_TYPE_INDEX, align 4
  %69 = call i32 @get_reg_offset(%struct.insn* %66, %struct.pt_regs* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EDOM, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  store i64 0, i64* %10, align 8
  br label %89

76:                                               ; preds = %60
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %160

83:                                               ; preds = %76
  %84 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @regs_get_register(%struct.pt_regs* %84, i32 %86)
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @EDOM, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i64 0, i64* %11, align 8
  br label %106

95:                                               ; preds = %89
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %160

101:                                              ; preds = %95
  %102 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @regs_get_register(%struct.pt_regs* %102, i32 %103)
  store i64 %104, i64* %11, align 8
  br label %105

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %94
  %107 = load %struct.insn*, %struct.insn** %6, align 8
  %108 = getelementptr inbounds %struct.insn, %struct.insn* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %111, label %139

111:                                              ; preds = %106
  %112 = load i64, i64* %10, align 8
  %113 = and i64 %112, 4294967295
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %14, align 4
  %115 = load i64, i64* %11, align 8
  %116 = and i64 %115, 4294967295
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.insn*, %struct.insn** %6, align 8
  %121 = getelementptr inbounds %struct.insn, %struct.insn* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @X86_SIB_SCALE(i32 %123)
  %125 = shl i32 1, %124
  %126 = mul nsw i32 %119, %125
  %127 = add nsw i32 %118, %126
  store i32 %127, i32* %13, align 4
  %128 = load %struct.insn*, %struct.insn** %6, align 8
  %129 = getelementptr inbounds %struct.insn, %struct.insn* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64*, i64** %9, align 8
  store i64 %137, i64* %138, align 8
  br label %159

139:                                              ; preds = %106
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load %struct.insn*, %struct.insn** %6, align 8
  %143 = getelementptr inbounds %struct.insn, %struct.insn* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @X86_SIB_SCALE(i32 %145)
  %147 = shl i32 1, %146
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %141, %148
  %150 = add nsw i64 %140, %149
  %151 = load i64*, i64** %9, align 8
  store i64 %150, i64* %151, align 8
  %152 = load %struct.insn*, %struct.insn** %6, align 8
  %153 = getelementptr inbounds %struct.insn, %struct.insn* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** %9, align 8
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %155
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %139, %111
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %159, %98, %80, %57, %46, %36, %25
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @insn_get_modrm(%struct.insn*) #1

declare dso_local i32 @X86_MODRM_MOD(i32) #1

declare dso_local i32 @insn_get_sib(%struct.insn*) #1

declare dso_local i32 @get_reg_offset(%struct.insn*, %struct.pt_regs*, i32) #1

declare dso_local i64 @regs_get_register(%struct.pt_regs*, i32) #1

declare dso_local i32 @X86_SIB_SCALE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
