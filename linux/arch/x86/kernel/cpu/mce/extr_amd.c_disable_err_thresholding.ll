; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_disable_err_thresholding.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_disable_err_thresholding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }

@NR_BLOCKS = common dso_local global i32 0, align 4
@SMCA_IF = common dso_local global i64 0, align 8
@MSR_K7_HWCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_err_thresholding(%struct.cpuinfo_x86* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuinfo_x86*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @NR_BLOCKS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 21
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 1043, i32* %24, align 16
  %25 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 -1073740792, i32* %25, align 4
  store i32 2, i32* %6, align 4
  br label %53

26:                                               ; preds = %20, %2
  %27 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %28 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 23
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %33 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 16
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %38 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 47
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @smca_get_bank_type(i32 %42)
  %44 = load i64, i64* @SMCA_IF, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  br label %93

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @MSR_AMD64_SMCA_MCx_MISC(i32 %48)
  %50 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %49, i32* %50, align 16
  store i32 1, i32* %6, align 4
  br label %52

51:                                               ; preds = %36, %31, %26
  store i32 1, i32* %11, align 4
  br label %93

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %23
  %54 = load i32, i32* @MSR_K7_HWCR, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @rdmsrl(i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @BIT(i32 18)
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load i32, i32* @MSR_K7_HWCR, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @BIT(i32 18)
  %69 = or i32 %67, %68
  %70 = call i32 @wrmsrl(i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %53
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %82, %71
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %15, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @msr_clear_bit(i32 %80, i32 62)
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %72

85:                                               ; preds = %72
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @MSR_K7_HWCR, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @wrmsrl(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %92, %51, %46
  %94 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %11, align 4
  switch i32 %95, label %97 [
    i32 0, label %96
    i32 1, label %96
  ]

96:                                               ; preds = %93, %93
  ret void

97:                                               ; preds = %93
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @smca_get_bank_type(i32) #2

declare dso_local i32 @MSR_AMD64_SMCA_MCx_MISC(i32) #2

declare dso_local i32 @rdmsrl(i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @wrmsrl(i32, i32) #2

declare dso_local i32 @msr_clear_bit(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
