; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ia64_poke.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ia64_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.switch_stack = type { i32 }
%struct.pt_regs = type { i64 }

@IA64_RBS_OFFSET = common dso_local global i32 0, align 4
@FOLL_FORCE = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ia64_poke(%struct.task_struct* %0, %struct.switch_stack* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.switch_stack*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.switch_stack* %1, %struct.switch_stack** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %16, align 8
  %20 = load i64, i64* %10, align 8
  %21 = inttoptr i64 %20 to i64*
  store i64* %21, i64** %15, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %23 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %22)
  store %struct.pt_regs* %23, %struct.pt_regs** %17, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %17, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i64*
  store i64* %27, i64** %12, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %29 = bitcast %struct.task_struct* %28 to i64*
  %30 = load i32, i32* @IA64_RBS_OFFSET, align 4
  %31 = sdiv i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  store i64* %33, i64** %13, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = ptrtoint i64* %35 to i64
  %37 = load i64*, i64** %16, align 8
  %38 = ptrtoint i64* %37 to i64
  %39 = call i64 @on_kernel_rbs(i64 %34, i64 %36, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %5
  %42 = load i64*, i64** %15, align 8
  %43 = call i64 @ia64_rse_is_rnat_slot(i64* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %47 = load %struct.switch_stack*, %struct.switch_stack** %8, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = load i64*, i64** %15, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64*, i64** %16, align 8
  %52 = call i32 @put_rnat(%struct.task_struct* %46, %struct.switch_stack* %47, i64* %48, i64* %49, i64 %50, i64* %51)
  br label %66

53:                                               ; preds = %41
  %54 = load i64*, i64** %15, align 8
  %55 = load i64*, i64** %16, align 8
  %56 = icmp ult i64* %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i64*, i64** %12, align 8
  %59 = load i64*, i64** %15, align 8
  %60 = call i64 @ia64_rse_num_regs(i64* %58, i64* %59)
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64*, i64** %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i64* @ia64_rse_skip_regs(i64* %62, i64 %63)
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %57, %53
  br label %66

66:                                               ; preds = %65, %45
  br label %80

67:                                               ; preds = %5
  %68 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* @FOLL_FORCE, align 4
  %71 = load i32, i32* @FOLL_WRITE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @access_process_vm(%struct.task_struct* %68, i64 %69, i64* %11, i32 8, i32 %72)
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 8
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i64, i64* @EIO, align 8
  %78 = sub nsw i64 0, %77
  store i64 %78, i64* %6, align 8
  br label %81

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %66
  store i64 0, i64* %6, align 8
  br label %81

81:                                               ; preds = %80, %76
  %82 = load i64, i64* %6, align 8
  ret i64 %82
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @on_kernel_rbs(i64, i64, i64) #1

declare dso_local i64 @ia64_rse_is_rnat_slot(i64*) #1

declare dso_local i32 @put_rnat(%struct.task_struct*, %struct.switch_stack*, i64*, i64*, i64, i64*) #1

declare dso_local i64 @ia64_rse_num_regs(i64*, i64*) #1

declare dso_local i64* @ia64_rse_skip_regs(i64*, i64) #1

declare dso_local i32 @access_process_vm(%struct.task_struct*, i64, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
