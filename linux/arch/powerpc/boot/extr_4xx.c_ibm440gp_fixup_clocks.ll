; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm440gp_fixup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm440gp_fixup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCRN_CPC0_SYS0 = common dso_local global i32 0, align 4
@DCRN_CPC0_CR0 = common dso_local global i32 0, align 4
@CPC0_SYS0_BYPASS = common dso_local global i32 0, align 4
@CPC0_SYS0_EXTSL = common dso_local global i32 0, align 4
@CPC0_CR0_U0EC = common dso_local global i32 0, align 4
@CPC0_CR0_U1EC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PPC440GP: SysClk = %dMHz (%x)\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/plb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/plb/opb\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"/plb/opb/ebc\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@40000200\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@40000300\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibm440gp_fixup_clocks(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* @DCRN_CPC0_SYS0, align 4
  %18 = call i32 @mfdcr(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @DCRN_CPC0_CR0, align 4
  %20 = call i32 @mfdcr(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @CPC0_SYS0_OPDV(i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @CPC0_SYS0_EPDV(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CPC0_SYS0_BYPASS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %8, align 4
  store i32 %30, i32* %7, align 4
  br label %62

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CPC0_SYS0_EXTSL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @CPC0_SYS0_FWDVB(i32 %37)
  %39 = load i32, i32* %15, align 4
  %40 = mul i32 %38, %39
  %41 = load i32, i32* %16, align 4
  %42 = mul i32 %40, %41
  store i32 %42, i32* %14, align 4
  br label %49

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @CPC0_SYS0_FBDV(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @CPC0_SYS0_FWDVA(i32 %46)
  %48 = mul i32 %45, %47
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %43, %36
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %14, align 4
  %52 = mul i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @CPC0_SYS0_FWDVA(i32 %53)
  %55 = udiv i32 %52, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %14, align 4
  %58 = mul i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @CPC0_SYS0_FWDVB(i32 %59)
  %61 = udiv i32 %58, %60
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %49, %29
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %16, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %10, align 4
  %69 = call i32 (...) @mfpvr()
  %70 = and i32 %69, -268431361
  %71 = icmp eq i32 %70, 1073742912
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %3, align 4
  store i32 %73, i32* %11, align 4
  br label %76

74:                                               ; preds = %62
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @CPC0_CR0_U0EC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %12, align 4
  br label %88

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @CPC0_CR0_UDIV(i32 %85)
  %87 = sdiv i32 %84, %86
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %83, %81
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @CPC0_CR0_U1EC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %13, align 4
  br label %100

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @CPC0_CR0_UDIV(i32 %97)
  %99 = sdiv i32 %96, %98
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %95, %93
  %101 = load i32, i32* %3, align 4
  %102 = add i32 %101, 500000
  %103 = udiv i32 %102, 1000000
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @dt_fixup_cpu_clocks(i32 %106, i32 %107, i32 0)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  ret void
}

declare dso_local i32 @mfdcr(i32) #1

declare dso_local i32 @CPC0_SYS0_OPDV(i32) #1

declare dso_local i32 @CPC0_SYS0_EPDV(i32) #1

declare dso_local i32 @CPC0_SYS0_FWDVB(i32) #1

declare dso_local i32 @CPC0_SYS0_FBDV(i32) #1

declare dso_local i32 @CPC0_SYS0_FWDVA(i32) #1

declare dso_local i32 @mfpvr(...) #1

declare dso_local i32 @CPC0_CR0_UDIV(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i32, i32) #1

declare dso_local i32 @dt_fixup_clock(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
