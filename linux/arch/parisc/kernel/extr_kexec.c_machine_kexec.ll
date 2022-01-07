; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kexec.c_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kexec.c_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.kimage = type { i64, i64, %struct.kimage_arch, i32 }
%struct.kimage_arch = type { i64, i64, i64 }

@FIX_TEXT_KEXEC = common dso_local global i32 0, align 4
@relocate_new_kernel = common dso_local global i32 0, align 4
@relocate_new_kernel_size = common dso_local global i32 0, align 4
@kexec_cmdline_offset = common dso_local global i32 0, align 4
@kexec_initrd_start_offset = common dso_local global i32 0, align 4
@kexec_initrd_end_offset = common dso_local global i32 0, align 4
@PAGE0 = common dso_local global %struct.TYPE_4__* null, align 8
@kexec_free_mem_offset = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_kexec(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca void (i64, i64, i64)*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kimage_arch*, align 8
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %7 = load %struct.kimage*, %struct.kimage** %2, align 8
  %8 = getelementptr inbounds %struct.kimage, %struct.kimage* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @page_to_phys(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @FIX_TEXT_KEXEC, align 4
  %12 = call i64 @__fix_to_virt(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %5, align 8
  %14 = load %struct.kimage*, %struct.kimage** %2, align 8
  %15 = getelementptr inbounds %struct.kimage, %struct.kimage* %14, i32 0, i32 2
  store %struct.kimage_arch* %15, %struct.kimage_arch** %6, align 8
  %16 = load i32, i32* @FIX_TEXT_KEXEC, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @set_fixmap(i32 %16, i64 %17)
  %19 = call i32 (...) @flush_cache_all()
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to void (i64, i64, i64)*
  store void (i64, i64, i64)* %21, void (i64, i64, i64)** %3, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @relocate_new_kernel, align 4
  %24 = call i32 @dereference_function_descriptor(i32 %23)
  %25 = load i32, i32* @relocate_new_kernel_size, align 4
  %26 = call i32 @memcpy(i8* %22, i32 %24, i32 %25)
  %27 = load %struct.kimage_arch*, %struct.kimage_arch** %6, align 8
  %28 = getelementptr inbounds %struct.kimage_arch, %struct.kimage_arch* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @kexec_cmdline_offset, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = bitcast i8* %33 to i64*
  store i64 %29, i64* %34, align 8
  %35 = load %struct.kimage_arch*, %struct.kimage_arch** %6, align 8
  %36 = getelementptr inbounds %struct.kimage_arch, %struct.kimage_arch* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @kexec_initrd_start_offset, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %38, i64 %40
  %42 = bitcast i8* %41 to i64*
  store i64 %37, i64* %42, align 8
  %43 = load %struct.kimage_arch*, %struct.kimage_arch** %6, align 8
  %44 = getelementptr inbounds %struct.kimage_arch, %struct.kimage_arch* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @kexec_initrd_end_offset, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = bitcast i8* %49 to i64*
  store i64 %45, i64* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PAGE0, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* @kexec_free_mem_offset, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = bitcast i8* %57 to i64*
  store i64 %53, i64* %58, align 8
  %59 = call i32 (...) @flush_cache_all()
  %60 = call i32 (...) @flush_tlb_all()
  %61 = call i32 (...) @local_irq_disable()
  %62 = load void (i64, i64, i64)*, void (i64, i64, i64)** %3, align 8
  %63 = load %struct.kimage*, %struct.kimage** %2, align 8
  %64 = getelementptr inbounds %struct.kimage, %struct.kimage* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PAGE_MASK, align 8
  %67 = and i64 %65, %66
  %68 = load %struct.kimage*, %struct.kimage** %2, align 8
  %69 = getelementptr inbounds %struct.kimage, %struct.kimage* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %4, align 8
  call void %62(i64 %67, i64 %70, i64 %71)
  ret void
}

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i64 @__fix_to_virt(i32) #1

declare dso_local i32 @set_fixmap(i32, i64) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @dereference_function_descriptor(i32) #1

declare dso_local i32 @flush_tlb_all(...) #1

declare dso_local i32 @local_irq_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
