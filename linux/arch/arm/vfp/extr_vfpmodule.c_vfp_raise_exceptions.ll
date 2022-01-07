; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_raise_exceptions.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_raise_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"VFP: raising exceptions %08x\0A\00", align 1
@VFP_EXCEPTION_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"unhandled bounce\00", align 1
@FPE_FLTINV = common dso_local global i32 0, align 4
@FPSCR_N = common dso_local global i32 0, align 4
@FPSCR_Z = common dso_local global i32 0, align 4
@FPSCR_C = common dso_local global i32 0, align 4
@FPSCR_V = common dso_local global i32 0, align 4
@FPSCR = common dso_local global i32 0, align 4
@FPSCR_DZC = common dso_local global i32 0, align 4
@FPSCR_DZE = common dso_local global i32 0, align 4
@FPE_FLTDIV = common dso_local global i32 0, align 4
@FPSCR_IXC = common dso_local global i32 0, align 4
@FPSCR_IXE = common dso_local global i32 0, align 4
@FPE_FLTRES = common dso_local global i32 0, align 4
@FPSCR_UFC = common dso_local global i32 0, align 4
@FPSCR_UFE = common dso_local global i32 0, align 4
@FPE_FLTUND = common dso_local global i32 0, align 4
@FPSCR_OFC = common dso_local global i32 0, align 4
@FPSCR_OFE = common dso_local global i32 0, align 4
@FPE_FLTOVF = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@FPSCR_IOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.pt_regs*)* @vfp_raise_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfp_raise_exceptions(i32 %0, i32 %1, i32 %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VFP_EXCEPTION_ERROR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @vfp_panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @FPE_FLTINV, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %20 = call i32 @vfp_raise_sigfpe(i32 %18, %struct.pt_regs* %19)
  br label %116

21:                                               ; preds = %4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @FPSCR_N, align 4
  %24 = load i32, i32* @FPSCR_Z, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FPSCR_C, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FPSCR_V, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %22, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %21
  %33 = load i32, i32* @FPSCR_N, align 4
  %34 = load i32, i32* @FPSCR_Z, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FPSCR_C, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @FPSCR_V, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %32, %21
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @FPSCR, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @fmxr(i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @FPSCR_DZC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @FPSCR_DZE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @FPE_FLTDIV, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %54, %43
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @FPSCR_IXC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @FPSCR_IXE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @FPE_FLTRES, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %66, %61
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @FPSCR_UFC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @FPSCR_UFE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @FPE_FLTUND, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %78, %73
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @FPSCR_OFC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @FPSCR_OFE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @FPE_FLTOVF, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %95, %90, %85
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @FPSCR_IOC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @FPSCR_IOE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @FPE_FLTINV, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %107, %102, %97
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %115 = call i32 @vfp_raise_sigfpe(i32 %113, %struct.pt_regs* %114)
  br label %116

116:                                              ; preds = %15, %112, %109
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @vfp_panic(i8*, i32) #1

declare dso_local i32 @vfp_raise_sigfpe(i32, %struct.pt_regs*) #1

declare dso_local i32 @fmxr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
