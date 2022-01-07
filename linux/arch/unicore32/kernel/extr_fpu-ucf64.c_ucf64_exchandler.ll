; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_fpu-ucf64.c_ucf64_exchandler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_fpu-ucf64.c_ucf64_exchandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@F64_EXCEPTION_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"UniCore-F64: instruction %08x fpscr %08x\0A\00", align 1
@FPSCR_CMPINSTR_BIT = common dso_local global i32 0, align 4
@FPSCR_CON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"UniCore-F64 Error: unhandled exceptions\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"UniCore-F64 FPSCR 0x%08x INST 0x%08x\0A\00", align 1
@FPSCR = common dso_local global i32 0, align 4
@FPSCR_TRAP = common dso_local global i32 0, align 4
@FPSCR_IOS = common dso_local global i32 0, align 4
@FPSCR_OFS = common dso_local global i32 0, align 4
@FPSCR_UFS = common dso_local global i32 0, align 4
@FPSCR_IXS = common dso_local global i32 0, align 4
@FPSCR_HIS = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@FPSCR_OFC = common dso_local global i32 0, align 4
@FPSCR_UFC = common dso_local global i32 0, align 4
@FPSCR_IXC = common dso_local global i32 0, align 4
@FPSCR_HIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucf64_exchandler(i32 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @F64_EXCEPTION_ERROR, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @FPSCR_CMPINSTR_BIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @FPSCR_CON, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @FPSCR_CON, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %20
  %30 = load i32, i32* @FPSCR_CON, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* @FPSCR_CMPINSTR_BIT, align 4
  %36 = load i32, i32* @FPSCR_CON, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %49

41:                                               ; preds = %3
  %42 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @FPSCR, align 4
  %44 = call i32 @cff(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %48 = call i32 @ucf64_raise_sigfpe(%struct.pt_regs* %47)
  br label %80

49:                                               ; preds = %34
  %50 = load i32, i32* @FPSCR_TRAP, align 4
  %51 = load i32, i32* @FPSCR_IOS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FPSCR_OFS, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FPSCR_UFS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FPSCR_IXS, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FPSCR_HIS, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @FPSCR_IOC, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @FPSCR_OFC, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @FPSCR_UFC, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FPSCR_IXC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @FPSCR_HIC, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @FPSCR, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @ctf(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %49, %41
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @cff(i32) #1

declare dso_local i32 @ucf64_raise_sigfpe(%struct.pt_regs*) #1

declare dso_local i32 @ctf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
