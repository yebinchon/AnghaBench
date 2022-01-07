; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_umip.c_identify_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_umip.c_identify_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@UMIP_INST_SGDT = common dso_local global i32 0, align 4
@UMIP_INST_SIDT = common dso_local global i32 0, align 4
@UMIP_INST_SMSW = common dso_local global i32 0, align 4
@UMIP_INST_SLDT = common dso_local global i32 0, align 4
@UMIP_INST_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*)* @identify_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @identify_insn(%struct.insn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.insn*, align 8
  store %struct.insn* %0, %struct.insn** %3, align 8
  %4 = load %struct.insn*, %struct.insn** %3, align 8
  %5 = call i32 @insn_get_modrm(%struct.insn* %4)
  %6 = load %struct.insn*, %struct.insn** %3, align 8
  %7 = getelementptr inbounds %struct.insn, %struct.insn* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %80

14:                                               ; preds = %1
  %15 = load %struct.insn*, %struct.insn** %3, align 8
  %16 = getelementptr inbounds %struct.insn, %struct.insn* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 15
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %80

25:                                               ; preds = %14
  %26 = load %struct.insn*, %struct.insn** %3, align 8
  %27 = getelementptr inbounds %struct.insn, %struct.insn* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %48

33:                                               ; preds = %25
  %34 = load %struct.insn*, %struct.insn** %3, align 8
  %35 = getelementptr inbounds %struct.insn, %struct.insn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @X86_MODRM_REG(i32 %37)
  switch i32 %38, label %45 [
    i32 0, label %39
    i32 1, label %41
    i32 4, label %43
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* @UMIP_INST_SGDT, align 4
  store i32 %40, i32* %2, align 4
  br label %80

41:                                               ; preds = %33
  %42 = load i32, i32* @UMIP_INST_SIDT, align 4
  store i32 %42, i32* %2, align 4
  br label %80

43:                                               ; preds = %33
  %44 = load i32, i32* @UMIP_INST_SMSW, align 4
  store i32 %44, i32* %2, align 4
  br label %80

45:                                               ; preds = %33
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %80

48:                                               ; preds = %25
  %49 = load %struct.insn*, %struct.insn** %3, align 8
  %50 = getelementptr inbounds %struct.insn, %struct.insn* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %48
  %57 = load %struct.insn*, %struct.insn** %3, align 8
  %58 = getelementptr inbounds %struct.insn, %struct.insn* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @X86_MODRM_REG(i32 %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @UMIP_INST_SLDT, align 4
  store i32 %64, i32* %2, align 4
  br label %80

65:                                               ; preds = %56
  %66 = load %struct.insn*, %struct.insn** %3, align 8
  %67 = getelementptr inbounds %struct.insn, %struct.insn* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @X86_MODRM_REG(i32 %69)
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @UMIP_INST_STR, align 4
  store i32 %73, i32* %2, align 4
  br label %80

74:                                               ; preds = %65
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %80

77:                                               ; preds = %48
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %77, %74, %72, %63, %45, %43, %41, %39, %22, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @insn_get_modrm(%struct.insn*) #1

declare dso_local i32 @X86_MODRM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
