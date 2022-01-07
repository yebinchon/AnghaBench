; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_eff_addr_modrm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_eff_addr_modrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pt_regs = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@REG_TYPE_RM = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*, %struct.pt_regs*, i32*, i64*)* @get_eff_addr_modrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_eff_addr_modrm(%struct.insn* %0, %struct.pt_regs* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.insn*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.insn* %0, %struct.insn** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.insn*, %struct.insn** %6, align 8
  %13 = getelementptr inbounds %struct.insn, %struct.insn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 8
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.insn*, %struct.insn** %6, align 8
  %18 = getelementptr inbounds %struct.insn, %struct.insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %110

24:                                               ; preds = %16, %4
  %25 = load %struct.insn*, %struct.insn** %6, align 8
  %26 = call i32 @insn_get_modrm(%struct.insn* %25)
  %27 = load %struct.insn*, %struct.insn** %6, align 8
  %28 = getelementptr inbounds %struct.insn, %struct.insn* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %110

35:                                               ; preds = %24
  %36 = load %struct.insn*, %struct.insn** %6, align 8
  %37 = getelementptr inbounds %struct.insn, %struct.insn* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @X86_MODRM_MOD(i32 %39)
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %110

45:                                               ; preds = %35
  %46 = load %struct.insn*, %struct.insn** %6, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %48 = load i32, i32* @REG_TYPE_RM, align 4
  %49 = call i32 @get_reg_offset(%struct.insn* %46, %struct.pt_regs* %47, i32 %48)
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EDOM, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %45
  %57 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %58 = call i64 @user_64bit_mode(%struct.pt_regs* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.insn*, %struct.insn** %6, align 8
  %65 = getelementptr inbounds %struct.insn, %struct.insn* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  store i64 %67, i64* %10, align 8
  br label %69

68:                                               ; preds = %56
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %68, %60
  br label %83

70:                                               ; preds = %45
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %110

77:                                               ; preds = %70
  %78 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @regs_get_register(%struct.pt_regs* %78, i32 %80)
  store i64 %81, i64* %10, align 8
  br label %82

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.insn*, %struct.insn** %6, align 8
  %85 = getelementptr inbounds %struct.insn, %struct.insn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load i64, i64* %10, align 8
  %90 = and i64 %89, 4294967295
  %91 = trunc i64 %90 to i32
  %92 = load %struct.insn*, %struct.insn** %6, align 8
  %93 = getelementptr inbounds %struct.insn, %struct.insn* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %91, %95
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = load i64*, i64** %9, align 8
  store i64 %98, i64* %99, align 8
  br label %109

100:                                              ; preds = %83
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.insn*, %struct.insn** %6, align 8
  %103 = getelementptr inbounds %struct.insn, %struct.insn* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %101, %106
  %108 = load i64*, i64** %9, align 8
  store i64 %107, i64* %108, align 8
  br label %109

109:                                              ; preds = %100, %88
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %74, %42, %32, %21
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @insn_get_modrm(%struct.insn*) #1

declare dso_local i32 @X86_MODRM_MOD(i32) #1

declare dso_local i32 @get_reg_offset(%struct.insn*, %struct.pt_regs*, i32) #1

declare dso_local i64 @user_64bit_mode(%struct.pt_regs*) #1

declare dso_local i64 @regs_get_register(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
