; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_access_elf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_access_elf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.unw_frame_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.unw_frame_info*, i64, i64*, i32)* @access_elf_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_elf_reg(%struct.task_struct* %0, %struct.unw_frame_info* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.unw_frame_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.unw_frame_info* %1, %struct.unw_frame_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* %9, align 8
  %13 = call i64 @ELF_GR_OFFSET(i32 1)
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %5
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @ELF_GR_OFFSET(i32 15)
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %21 = load %struct.unw_frame_info*, %struct.unw_frame_info** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @access_elf_gpreg(%struct.task_struct* %20, %struct.unw_frame_info* %21, i64 %22, i64* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %48

26:                                               ; preds = %15, %5
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @ELF_BR_OFFSET(i32 0)
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @ELF_BR_OFFSET(i32 7)
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %36 = load %struct.unw_frame_info*, %struct.unw_frame_info** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @access_elf_breg(%struct.task_struct* %35, %struct.unw_frame_info* %36, i64 %37, i64* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %48

41:                                               ; preds = %30, %26
  %42 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %43 = load %struct.unw_frame_info*, %struct.unw_frame_info** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @access_elf_areg(%struct.task_struct* %42, %struct.unw_frame_info* %43, i64 %44, i64* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %41, %34, %19
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @ELF_GR_OFFSET(i32) #1

declare dso_local i32 @access_elf_gpreg(%struct.task_struct*, %struct.unw_frame_info*, i64, i64*, i32) #1

declare dso_local i64 @ELF_BR_OFFSET(i32) #1

declare dso_local i32 @access_elf_breg(%struct.task_struct*, %struct.unw_frame_info*, i64, i64*, i32) #1

declare dso_local i32 @access_elf_areg(%struct.task_struct*, %struct.unw_frame_info*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
