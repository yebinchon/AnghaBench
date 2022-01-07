; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_machine_check.c_machine_check_440A.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_machine_check.c_machine_check_440A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"Machine check in kernel mode.\0A\00", align 1
@ESR_IMCP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Instruction Synchronous Machine Check exception\0A\00", align 1
@SPRN_ESR = common dso_local global i32 0, align 4
@SPRN_MCSR = common dso_local global i32 0, align 4
@MCSR_IB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Instruction Read PLB Error\0A\00", align 1
@MCSR_DRB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Data Read PLB Error\0A\00", align 1
@MCSR_DWB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Data Write PLB Error\0A\00", align 1
@MCSR_TLBP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"TLB Parity Error\0A\00", align 1
@MCSR_ICP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"I-Cache Parity Error\0A\00", align 1
@MCSR_DCSP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"D-Cache Search Parity Error\0A\00", align 1
@MCSR_DCFP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"D-Cache Flush Parity Error\0A\00", align 1
@MCSR_IMPE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"Machine Check exception is imprecise\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_check_440A(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @ESR_IMCP, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @SPRN_ESR, align 4
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @ESR_IMCP, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @mtspr(i32 %15, i32 %20)
  br label %85

22:                                               ; preds = %1
  %23 = load i32, i32* @SPRN_MCSR, align 4
  %24 = call i32 @mfspr(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MCSR_IB, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MCSR_DRB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MCSR_DWB, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MCSR_TLBP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MCSR_ICP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = call i32 (...) @flush_instruction_cache()
  %59 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @MCSR_DCSP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @MCSR_DCFP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @MCSR_IMPE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* @SPRN_MCSR, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @mtspr(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %13
  ret i32 0
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @flush_instruction_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
