; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ptrace.c_ppc_set_hwdebug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ptrace.c_ppc_set_hwdebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { %struct.arch_hw_breakpoint, %struct.perf_event** }
%struct.arch_hw_breakpoint = type { i64, i32, i32 }
%struct.perf_event = type { i32 }
%struct.ppc_hw_breakpoint = type { i32, i32, i32, i32, i64, i32 }

@ENOTSUPP = common dso_local global i64 0, align 8
@PPC_BREAKPOINT_TRIGGER_RW = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_CONDITION_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@HW_BRK_TYPE_TRANSLATE = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_TRIGGER_READ = common dso_local global i32 0, align 4
@HW_BRK_TYPE_READ = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_TRIGGER_WRITE = common dso_local global i32 0, align 4
@HW_BRK_TYPE_WRITE = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_MODE_EXACT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@HW_BREAKPOINT_ALIGN = common dso_local global i64 0, align 8
@PPC_BREAKPOINT_CONDITION_BE_ALL = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_CONDITION_MODE = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_MODE_MASK = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_MODE_RANGE_INCLUSIVE = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_TRIGGER_EXECUTE = common dso_local global i32 0, align 4
@ptrace_triggered = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, %struct.ppc_hw_breakpoint*)* @ppc_set_hwdebug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ppc_set_hwdebug(%struct.task_struct* %0, %struct.ppc_hw_breakpoint* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.ppc_hw_breakpoint*, align 8
  %6 = alloca %struct.arch_hw_breakpoint, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.ppc_hw_breakpoint* %1, %struct.ppc_hw_breakpoint** %5, align 8
  %7 = load %struct.ppc_hw_breakpoint*, %struct.ppc_hw_breakpoint** %5, align 8
  %8 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* @ENOTSUPP, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %3, align 8
  br label %110

14:                                               ; preds = %2
  %15 = load %struct.ppc_hw_breakpoint*, %struct.ppc_hw_breakpoint** %5, align 8
  %16 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PPC_BREAKPOINT_TRIGGER_RW, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %14
  %22 = load %struct.ppc_hw_breakpoint*, %struct.ppc_hw_breakpoint** %5, align 8
  %23 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PPC_BREAKPOINT_TRIGGER_RW, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = load %struct.ppc_hw_breakpoint*, %struct.ppc_hw_breakpoint** %5, align 8
  %31 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PPC_BREAKPOINT_CONDITION_NONE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %21, %14
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %3, align 8
  br label %110

38:                                               ; preds = %29
  %39 = load %struct.ppc_hw_breakpoint*, %struct.ppc_hw_breakpoint** %5, align 8
  %40 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TASK_SIZE, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i64, i64* @EIO, align 8
  %46 = sub nsw i64 0, %45
  store i64 %46, i64* %3, align 8
  br label %110

47:                                               ; preds = %38
  %48 = load %struct.ppc_hw_breakpoint*, %struct.ppc_hw_breakpoint** %5, align 8
  %49 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = and i64 %50, -8
  %52 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %6, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* @HW_BRK_TYPE_TRANSLATE, align 4
  %54 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %6, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %6, i32 0, i32 1
  store i32 8, i32* %55, align 8
  %56 = load %struct.ppc_hw_breakpoint*, %struct.ppc_hw_breakpoint** %5, align 8
  %57 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PPC_BREAKPOINT_TRIGGER_READ, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = load i32, i32* @HW_BRK_TYPE_READ, align 4
  %64 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %6, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %47
  %68 = load %struct.ppc_hw_breakpoint*, %struct.ppc_hw_breakpoint** %5, align 8
  %69 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PPC_BREAKPOINT_TRIGGER_WRITE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* @HW_BRK_TYPE_WRITE, align 4
  %76 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %6, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.ppc_hw_breakpoint*, %struct.ppc_hw_breakpoint** %5, align 8
  %81 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PPC_BREAKPOINT_MODE_EXACT, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i64, i64* @EINVAL, align 8
  %87 = sub nsw i64 0, %86
  store i64 %87, i64* %3, align 8
  br label %110

88:                                               ; preds = %79
  %89 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %90 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i64, i64* @ENOSPC, align 8
  %97 = sub nsw i64 0, %96
  store i64 %97, i64* %3, align 8
  br label %110

98:                                               ; preds = %88
  %99 = call i32 (...) @ppc_breakpoint_available()
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* @ENODEV, align 8
  %103 = sub nsw i64 0, %102
  store i64 %103, i64* %3, align 8
  br label %110

104:                                              ; preds = %98
  %105 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %106 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %106, i32 0, i32 0
  %108 = bitcast %struct.arch_hw_breakpoint* %107 to i8*
  %109 = bitcast %struct.arch_hw_breakpoint* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 16, i1 false)
  store i64 1, i64* %3, align 8
  br label %110

110:                                              ; preds = %104, %101, %95, %85, %44, %35, %11
  %111 = load i64, i64* %3, align 8
  ret i64 %111
}

declare dso_local i32 @ppc_breakpoint_available(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
