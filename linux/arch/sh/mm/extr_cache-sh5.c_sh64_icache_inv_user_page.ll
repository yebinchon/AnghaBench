; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh5.c_sh64_icache_inv_user_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh5.c_sh64_icache_inv_user_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64)* @sh64_icache_inv_user_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh64_icache_inv_user_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = call i64 (...) @get_asid()
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @cpu_asid(i32 %17, i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @local_irq_save(i64 %26)
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @switch_and_save_asid(i64 %28)
  br label %30

30:                                               ; preds = %25, %2
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  call void asm sideeffect "icbi $0,  0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %36) #2, !srcloc !2
  %37 = load i64, i64* %6, align 8
  call void asm sideeffect "icbi $0, 32", "r,~{dirflag},~{fpsr},~{flags}"(i64 %37) #2, !srcloc !3
  %38 = load i64, i64* %6, align 8
  call void asm sideeffect "icbi $0, 64", "r,~{dirflag},~{fpsr},~{flags}"(i64 %38) #2, !srcloc !4
  %39 = load i64, i64* %6, align 8
  call void asm sideeffect "icbi $0, 96", "r,~{dirflag},~{fpsr},~{flags}"(i64 %39) #2, !srcloc !5
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 128
  store i64 %41, i64* %6, align 8
  br label %31

42:                                               ; preds = %31
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @switch_and_save_asid(i64 %47)
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @local_irq_restore(i64 %49)
  br label %51

51:                                               ; preds = %46, %42
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @get_asid(...) #1

declare dso_local i64 @cpu_asid(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @switch_and_save_asid(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 958}
!3 = !{i32 1012}
!4 = !{i32 1066}
!5 = !{i32 1120}
