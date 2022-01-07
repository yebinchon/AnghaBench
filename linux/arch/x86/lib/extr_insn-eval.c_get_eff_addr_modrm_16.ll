; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_eff_addr_modrm_16.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_eff_addr_modrm_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pt_regs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*, %struct.pt_regs*, i32*, i16*)* @get_eff_addr_modrm_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_eff_addr_modrm_16(%struct.insn* %0, %struct.pt_regs* %1, i32* %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.insn*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store %struct.insn* %0, %struct.insn** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i32* %2, i32** %8, align 8
  store i16* %3, i16** %9, align 8
  store i16 0, i16* %13, align 2
  store i16 0, i16* %14, align 2
  %16 = load %struct.insn*, %struct.insn** %6, align 8
  %17 = getelementptr inbounds %struct.insn, %struct.insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %94

23:                                               ; preds = %4
  %24 = load %struct.insn*, %struct.insn** %6, align 8
  %25 = call i32 @insn_get_modrm(%struct.insn* %24)
  %26 = load %struct.insn*, %struct.insn** %6, align 8
  %27 = getelementptr inbounds %struct.insn, %struct.insn* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %94

34:                                               ; preds = %23
  %35 = load %struct.insn*, %struct.insn** %6, align 8
  %36 = getelementptr inbounds %struct.insn, %struct.insn* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @X86_MODRM_MOD(i32 %38)
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %94

44:                                               ; preds = %34
  %45 = load %struct.insn*, %struct.insn** %6, align 8
  %46 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %47 = call i32 @get_reg_offset_16(%struct.insn* %45, %struct.pt_regs* %46, i32* %10, i32* %11)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %94

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @EDOM, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @regs_get_register(%struct.pt_regs* %59, i32 %60)
  %62 = and i32 %61, 65535
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %13, align 2
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @EDOM, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @regs_get_register(%struct.pt_regs* %70, i32 %71)
  %73 = and i32 %72, 65535
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %14, align 2
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.insn*, %struct.insn** %6, align 8
  %77 = getelementptr inbounds %struct.insn, %struct.insn* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 65535
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %15, align 2
  %82 = load i16, i16* %13, align 2
  %83 = sext i16 %82 to i32
  %84 = load i16, i16* %14, align 2
  %85 = sext i16 %84 to i32
  %86 = add nsw i32 %83, %85
  %87 = load i16, i16* %15, align 2
  %88 = sext i16 %87 to i32
  %89 = add nsw i32 %86, %88
  %90 = trunc i32 %89 to i16
  %91 = load i16*, i16** %9, align 8
  store i16 %90, i16* %91, align 2
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %75, %50, %41, %31, %20
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @insn_get_modrm(%struct.insn*) #1

declare dso_local i32 @X86_MODRM_MOD(i32) #1

declare dso_local i32 @get_reg_offset_16(%struct.insn*, %struct.pt_regs*, i32*, i32*) #1

declare dso_local i32 @regs_get_register(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
