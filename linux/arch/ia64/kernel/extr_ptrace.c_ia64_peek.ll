; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ia64_peek.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ia64_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.switch_stack = type { i32 }
%struct.pt_regs = type { i64 }

@IA64_RBS_OFFSET = common dso_local global i32 0, align 4
@FOLL_FORCE = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ia64_peek(%struct.task_struct* %0, %struct.switch_stack* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.switch_stack*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.pt_regs*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.switch_stack* %1, %struct.switch_stack** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %16, align 8
  %23 = load i64, i64* %10, align 8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %15, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %26 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %25)
  store %struct.pt_regs* %26, %struct.pt_regs** %18, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %18, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i64*
  store i64* %30, i64** %12, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %32 = bitcast %struct.task_struct* %31 to i64*
  %33 = load i32, i32* @IA64_RBS_OFFSET, align 4
  %34 = sdiv i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  store i64* %36, i64** %13, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64*, i64** %12, align 8
  %39 = ptrtoint i64* %38 to i64
  %40 = load i64*, i64** %16, align 8
  %41 = ptrtoint i64* %40 to i64
  %42 = call i64 @on_kernel_rbs(i64 %37, i64 %39, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %82

44:                                               ; preds = %5
  %45 = load i64*, i64** %15, align 8
  %46 = call i64* @ia64_rse_rnat_addr(i64* %45)
  store i64* %46, i64** %17, align 8
  %47 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %48 = load %struct.switch_stack*, %struct.switch_stack** %8, align 8
  %49 = load i64*, i64** %13, align 8
  %50 = load i64*, i64** %17, align 8
  %51 = load i64*, i64** %16, align 8
  %52 = call i64 @get_rnat(%struct.task_struct* %47, %struct.switch_stack* %48, i64* %49, i64* %50, i64* %51)
  store i64 %52, i64* %20, align 8
  %53 = load i64*, i64** %15, align 8
  %54 = load i64*, i64** %17, align 8
  %55 = icmp eq i64* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i64, i64* %20, align 8
  %58 = load i64*, i64** %11, align 8
  store i64 %57, i64* %58, align 8
  store i64 0, i64* %6, align 8
  br label %95

59:                                               ; preds = %44
  %60 = load i64*, i64** %15, align 8
  %61 = call i64 @ia64_rse_slot_num(i64* %60)
  %62 = shl i64 1, %61
  %63 = load i64, i64* %20, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i64*, i64** %11, align 8
  store i64 0, i64* %67, align 8
  store i64 0, i64* %6, align 8
  br label %95

68:                                               ; preds = %59
  %69 = load i64*, i64** %15, align 8
  %70 = load i64*, i64** %16, align 8
  %71 = icmp ult i64* %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i64*, i64** %12, align 8
  %74 = load i64*, i64** %15, align 8
  %75 = call i64 @ia64_rse_num_regs(i64* %73, i64* %74)
  store i64 %75, i64* %14, align 8
  %76 = load i64*, i64** %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = call i64* @ia64_rse_skip_regs(i64* %76, i64 %77)
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %11, align 8
  store i64 %79, i64* %80, align 8
  store i64 0, i64* %6, align 8
  br label %95

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %5
  %83 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* @FOLL_FORCE, align 4
  %86 = call i64 @access_process_vm(%struct.task_struct* %83, i64 %84, i64* %20, i32 8, i32 %85)
  store i64 %86, i64* %19, align 8
  %87 = load i64, i64* %19, align 8
  %88 = icmp ne i64 %87, 8
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i64, i64* @EIO, align 8
  %91 = sub nsw i64 0, %90
  store i64 %91, i64* %6, align 8
  br label %95

92:                                               ; preds = %82
  %93 = load i64, i64* %20, align 8
  %94 = load i64*, i64** %11, align 8
  store i64 %93, i64* %94, align 8
  store i64 0, i64* %6, align 8
  br label %95

95:                                               ; preds = %92, %89, %72, %66, %56
  %96 = load i64, i64* %6, align 8
  ret i64 %96
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @on_kernel_rbs(i64, i64, i64) #1

declare dso_local i64* @ia64_rse_rnat_addr(i64*) #1

declare dso_local i64 @get_rnat(%struct.task_struct*, %struct.switch_stack*, i64*, i64*, i64*) #1

declare dso_local i64 @ia64_rse_slot_num(i64*) #1

declare dso_local i64 @ia64_rse_num_regs(i64*, i64*) #1

declare dso_local i64* @ia64_rse_skip_regs(i64*, i64) #1

declare dso_local i64 @access_process_vm(%struct.task_struct*, i64, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
