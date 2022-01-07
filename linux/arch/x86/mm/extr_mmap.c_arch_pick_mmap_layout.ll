; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_mmap.c_arch_pick_mmap_layout.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_mmap.c_arch_pick_mmap_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32, i32, i32, i32 }
%struct.rlimit = type { i32 }

@arch_get_unmapped_area = common dso_local global i32 0, align 4
@arch_get_unmapped_area_topdown = common dso_local global i32 0, align 4
@mmap64_rnd_bits = common dso_local global i32 0, align 4
@mmap32_rnd_bits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_pick_mmap_layout(%struct.mm_struct* %0, %struct.rlimit* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.rlimit*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.rlimit* %1, %struct.rlimit** %4, align 8
  %5 = call i64 (...) @mmap_is_legacy()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* @arch_get_unmapped_area, align 4
  %9 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @arch_get_unmapped_area_topdown, align 4
  %13 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %11, %7
  %16 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 3
  %18 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 2
  %20 = load i32, i32* @mmap64_rnd_bits, align 4
  %21 = call i32 @arch_rnd(i32 %20)
  %22 = call i32 @task_size_64bit(i32 0)
  %23 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %24 = call i32 @arch_pick_mmap_base(i32* %17, i32* %19, i32 %21, i32 %22, %struct.rlimit* %23)
  ret void
}

declare dso_local i64 @mmap_is_legacy(...) #1

declare dso_local i32 @arch_pick_mmap_base(i32*, i32*, i32, i32, %struct.rlimit*) #1

declare dso_local i32 @arch_rnd(i32) #1

declare dso_local i32 @task_size_64bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
