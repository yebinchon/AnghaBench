; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_fpu__exception_code.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_fpu__exception_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i16, i16, i16 }
%struct.TYPE_4__ = type { i64, i64 }

@X86_TRAP_MF = common dso_local global i32 0, align 4
@X86_FEATURE_FXSR = common dso_local global i32 0, align 4
@MXCSR_DEFAULT = common dso_local global i16 0, align 2
@X86_FEATURE_XMM = common dso_local global i32 0, align 4
@FPE_FLTINV = common dso_local global i32 0, align 4
@FPE_FLTDIV = common dso_local global i32 0, align 4
@FPE_FLTOVF = common dso_local global i32 0, align 4
@FPE_FLTUND = common dso_local global i32 0, align 4
@FPE_FLTRES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu__exception_code(%struct.fpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.fpu* %0, %struct.fpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @X86_TRAP_MF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = load i32, i32* @X86_FEATURE_FXSR, align 4
  %15 = call i64 @boot_cpu_has(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.fpu*, %struct.fpu** %4, align 8
  %19 = getelementptr inbounds %struct.fpu, %struct.fpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 8
  store i16 %22, i16* %7, align 2
  %23 = load %struct.fpu*, %struct.fpu** %4, align 8
  %24 = getelementptr inbounds %struct.fpu, %struct.fpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %8, align 2
  br label %41

28:                                               ; preds = %13
  %29 = load %struct.fpu*, %struct.fpu** %4, align 8
  %30 = getelementptr inbounds %struct.fpu, %struct.fpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i16
  store i16 %34, i16* %7, align 2
  %35 = load %struct.fpu*, %struct.fpu** %4, align 8
  %36 = getelementptr inbounds %struct.fpu, %struct.fpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i16
  store i16 %40, i16* %8, align 2
  br label %41

41:                                               ; preds = %28, %17
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = xor i32 %45, -1
  %47 = and i32 %43, %46
  store i32 %47, i32* %6, align 4
  br label %67

48:                                               ; preds = %2
  %49 = load i16, i16* @MXCSR_DEFAULT, align 2
  store i16 %49, i16* %9, align 2
  %50 = load i32, i32* @X86_FEATURE_XMM, align 4
  %51 = call i64 @boot_cpu_has(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.fpu*, %struct.fpu** %4, align 8
  %55 = getelementptr inbounds %struct.fpu, %struct.fpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i16, i16* %57, align 4
  store i16 %58, i16* %9, align 2
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i16, i16* %9, align 2
  %61 = zext i16 %60 to i32
  %62 = ashr i32 %61, 7
  %63 = xor i32 %62, -1
  %64 = load i16, i16* %9, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %63, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %59, %41
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @FPE_FLTINV, align 4
  store i32 %72, i32* %3, align 4
  br label %102

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @FPE_FLTDIV, align 4
  store i32 %78, i32* %3, align 4
  br label %102

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @FPE_FLTOVF, align 4
  store i32 %84, i32* %3, align 4
  br label %102

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 18
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @FPE_FLTUND, align 4
  store i32 %90, i32* %3, align 4
  br label %102

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @FPE_FLTRES, align 4
  store i32 %96, i32* %3, align 4
  br label %102

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %95, %89, %83, %77, %71
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @boot_cpu_has(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
