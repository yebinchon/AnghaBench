; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_troubleshoot.c_show_ecr_verbose.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_troubleshoot.c_show_ecr_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.pt_regs = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"\0A[ECR   ]: 0x%08lx => \00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@ECR_V_DTLB_MISS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid %s @ 0x%08lx by insn @ 0x%08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"EX\00", align 1
@ECR_V_ITLB_MISS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Insn could not be fetched\0A\00", align 1
@ECR_V_MACH_CHK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Machine Check (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Double Fault\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Other Fatal Err\00", align 1
@ECR_V_PROTV = common dso_local global i32 0, align 4
@ECR_C_PROTV_INST_FETCH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Execute from Non-exec Page\0A\00", align 1
@ECR_C_PROTV_MISALIG_DATA = common dso_local global i32 0, align 4
@CONFIG_ISA_ARCOMPACT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Misaligned r/w from 0x%08lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"%s access not allowed on page\0A\00", align 1
@ECR_V_INSN_ERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"Illegal Insn\0A\00", align 1
@ECR_V_TRAP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"gcc generated __builtin_trap\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Check Programmer's Manual\0A\00", align 1
@ECR_V_MEM_ERR = common dso_local global i32 0, align 4
@ECR_V_MISALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @show_ecr_verbose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_ecr_verbose(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ECR_V_DTLB_MISS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %26 ], [ %31, %27 ]
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %33, i64 %34, i32 %37)
  br label %115

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ECR_V_ITLB_MISS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %114

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @ECR_V_MACH_CHK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)
  %54 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %53)
  br label %113

55:                                               ; preds = %45
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @ECR_V_PROTV, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @ECR_C_PROTV_INST_FETCH, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %89

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @ECR_C_PROTV_MISALIG_DATA, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32, i32* @CONFIG_ISA_ARCOMPACT, align 4
  %71 = call i64 @IS_ENABLED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i64, i64* %5, align 8
  %75 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %74)
  br label %88

76:                                               ; preds = %69, %65
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %85

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 2
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  br label %85

85:                                               ; preds = %80, %79
  %86 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %79 ], [ %84, %80 ]
  %87 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %73
  br label %89

89:                                               ; preds = %88, %63
  br label %112

90:                                               ; preds = %55
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @ECR_V_INSN_ERR, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %111

96:                                               ; preds = %90
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @ECR_V_TRAP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %102 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 5
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %100
  br label %110

108:                                              ; preds = %96
  %109 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %107
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %89
  br label %113

113:                                              ; preds = %112, %49
  br label %114

114:                                              ; preds = %113, %43
  br label %115

115:                                              ; preds = %114, %32
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
