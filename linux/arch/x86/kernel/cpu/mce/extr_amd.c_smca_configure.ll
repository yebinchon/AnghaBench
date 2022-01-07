; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_smca_configure.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_smca_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, %struct.smca_hwid* }
%struct.smca_hwid = type { i32, i32 }

@smca_banks = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Failed to read MCA_IPID for bank %d\0A\00", align 1
@MCI_IPID_HWID = common dso_local global i32 0, align 4
@MCI_IPID_MCATYPE = common dso_local global i32 0, align 4
@smca_hwid_mcatypes = common dso_local global %struct.smca_hwid* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @smca_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smca_configure(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smca_hwid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @MSR_AMD64_SMCA_MCx_CONFIG(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = call i32 @rdmsr_safe(i32 %13, i32* %9, i32* %8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %2
  %17 = call i32 @BIT(i32 0)
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @BIT(i32 5)
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 5
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = call i32 @BIT(i32 5)
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %24, %16
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @wrmsr(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @smca_set_misc_banks_map(i32 %39, i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smca_banks, align 8
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load %struct.smca_hwid*, %struct.smca_hwid** %46, align 8
  %48 = icmp ne %struct.smca_hwid* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %110

50:                                               ; preds = %38
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @MSR_AMD64_SMCA_MCx_IPID(i32 %52)
  %54 = call i64 @rdmsr_safe_on_cpu(i32 %51, i32 %53, i32* %9, i32* %8)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %110

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @MCI_IPID_HWID, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MCI_IPID_MCATYPE, align 4
  %65 = and i32 %63, %64
  %66 = ashr i32 %65, 16
  %67 = call i32 @HWID_MCATYPE(i32 %62, i32 %66)
  store i32 %67, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %107, %59
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.smca_hwid*, %struct.smca_hwid** @smca_hwid_mcatypes, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.smca_hwid* %70)
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %68
  %74 = load %struct.smca_hwid*, %struct.smca_hwid** @smca_hwid_mcatypes, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.smca_hwid, %struct.smca_hwid* %74, i64 %76
  store %struct.smca_hwid* %77, %struct.smca_hwid** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.smca_hwid*, %struct.smca_hwid** %7, align 8
  %80 = getelementptr inbounds %struct.smca_hwid, %struct.smca_hwid* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %73
  %84 = load %struct.smca_hwid*, %struct.smca_hwid** %7, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smca_banks, align 8
  %86 = load i32, i32* %3, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store %struct.smca_hwid* %84, %struct.smca_hwid** %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smca_banks, align 8
  %92 = load i32, i32* %3, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 8
  %96 = load %struct.smca_hwid*, %struct.smca_hwid** %7, align 8
  %97 = getelementptr inbounds %struct.smca_hwid, %struct.smca_hwid* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = sext i32 %98 to i64
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smca_banks, align 8
  %102 = load i32, i32* %3, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i64 %100, i64* %105, align 8
  br label %110

106:                                              ; preds = %73
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %68

110:                                              ; preds = %49, %56, %83, %68
  ret void
}

declare dso_local i32 @MSR_AMD64_SMCA_MCx_CONFIG(i32) #1

declare dso_local i32 @rdmsr_safe(i32, i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @smca_set_misc_banks_map(i32, i32) #1

declare dso_local i64 @rdmsr_safe_on_cpu(i32, i32, i32*, i32*) #1

declare dso_local i32 @MSR_AMD64_SMCA_MCx_IPID(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @HWID_MCATYPE(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.smca_hwid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
