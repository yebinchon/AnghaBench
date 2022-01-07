; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_machine_kexec.c_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_machine_kexec.c_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32, i32, i32 }

@relocate_new_kernel = common dso_local global i32 0, align 4
@relocate_new_kernel_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Will call new kernel at 0x%08lx. Bye...\0A\00", align 1
@m68k_cputype = common dso_local global i32 0, align 4
@m68k_mmutype = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_kexec(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %5 = load %struct.kimage*, %struct.kimage** %2, align 8
  %6 = getelementptr inbounds %struct.kimage, %struct.kimage* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @page_address(i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @relocate_new_kernel, align 4
  %11 = load i32, i32* @relocate_new_kernel_size, align 4
  %12 = call i32 @memcpy(i8* %9, i32 %10, i32 %11)
  %13 = call i32 (...) @local_irq_disable()
  %14 = load %struct.kimage*, %struct.kimage** %2, align 8
  %15 = getelementptr inbounds %struct.kimage, %struct.kimage* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 (...) @__flush_cache_all()
  %19 = load i32, i32* @m68k_cputype, align 4
  %20 = load i32, i32* @m68k_mmutype, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %19, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = bitcast i8* %24 to i32 (i32, i32, i64)*
  %26 = load %struct.kimage*, %struct.kimage** %2, align 8
  %27 = getelementptr inbounds %struct.kimage, %struct.kimage* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PAGE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.kimage*, %struct.kimage** %2, align 8
  %32 = getelementptr inbounds %struct.kimage, %struct.kimage* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 %25(i32 %30, i32 %33, i64 %34)
  ret void
}

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @__flush_cache_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
