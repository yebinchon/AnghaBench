; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_64.c_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_64.c_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, i32, i32, i64, i32, i32 }

@PAGES_NR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KEXEC_CONTROL_CODE_MAX_SIZE = common dso_local global i32 0, align 4
@PA_CONTROL_PAGE = common dso_local global i64 0, align 8
@VA_CONTROL_PAGE = common dso_local global i64 0, align 8
@PA_TABLE_PAGE = common dso_local global i64 0, align 8
@KEXEC_TYPE_DEFAULT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PA_SWAP_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_kexec(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %7 = load i32, i32* @PAGES_NR, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i64, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = call i32 (...) @__ftrace_enabled_save()
  store i32 %11, i32* %6, align 4
  %12 = call i32 (...) @local_irq_disable()
  %13 = call i32 (...) @hw_breakpoint_disable()
  %14 = load %struct.kimage*, %struct.kimage** %2, align 8
  %15 = getelementptr inbounds %struct.kimage, %struct.kimage* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.kimage*, %struct.kimage** %2, align 8
  %21 = getelementptr inbounds %struct.kimage, %struct.kimage* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @page_address(i32 %22)
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %23, i64 %25
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @KEXEC_CONTROL_CODE_MAX_SIZE, align 4
  %29 = call i32 @memcpy(i8* %27, i32 (i64, i64, i32, i32, i32)* @relocate_kernel, i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @virt_to_phys(i8* %30)
  %32 = load i64, i64* @PA_CONTROL_PAGE, align 8
  %33 = getelementptr inbounds i64, i64* %10, i64 %32
  store i64 %31, i64* %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64, i64* @VA_CONTROL_PAGE, align 8
  %37 = getelementptr inbounds i64, i64* %10, i64 %36
  store i64 %35, i64* %37, align 8
  %38 = load %struct.kimage*, %struct.kimage** %2, align 8
  %39 = getelementptr inbounds %struct.kimage, %struct.kimage* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @page_address(i32 %40)
  %42 = call i64 @__pa(i8* %41)
  %43 = load i64, i64* @PA_TABLE_PAGE, align 8
  %44 = getelementptr inbounds i64, i64* %10, i64 %43
  store i64 %42, i64* %44, align 8
  %45 = load %struct.kimage*, %struct.kimage** %2, align 8
  %46 = getelementptr inbounds %struct.kimage, %struct.kimage* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @KEXEC_TYPE_DEFAULT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %19
  %51 = load %struct.kimage*, %struct.kimage** %2, align 8
  %52 = getelementptr inbounds %struct.kimage, %struct.kimage* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @page_to_pfn(i32 %53)
  %55 = load i64, i64* @PAGE_SHIFT, align 8
  %56 = shl i64 %54, %55
  %57 = load i64, i64* @PA_SWAP_PAGE, align 8
  %58 = getelementptr inbounds i64, i64* %10, i64 %57
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %50, %19
  %60 = call i32 (...) @load_segments()
  %61 = call i32 @phys_to_virt(i32 0)
  %62 = call i32 @set_gdt(i32 %61, i32 0)
  %63 = call i32 @phys_to_virt(i32 0)
  %64 = call i32 @set_idt(i32 %63, i32 0)
  %65 = load %struct.kimage*, %struct.kimage** %2, align 8
  %66 = getelementptr inbounds %struct.kimage, %struct.kimage* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = ptrtoint i64* %10 to i64
  %69 = load %struct.kimage*, %struct.kimage** %2, align 8
  %70 = getelementptr inbounds %struct.kimage, %struct.kimage* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.kimage*, %struct.kimage** %2, align 8
  %73 = getelementptr inbounds %struct.kimage, %struct.kimage* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (...) @sme_active()
  %76 = call i32 @relocate_kernel(i64 %67, i64 %68, i32 %71, i32 %74, i32 %75)
  %77 = load %struct.kimage*, %struct.kimage** %2, align 8
  %78 = getelementptr inbounds %struct.kimage, %struct.kimage* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @__ftrace_enabled_restore(i32 %79)
  %81 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__ftrace_enabled_save(...) #2

declare dso_local i32 @local_irq_disable(...) #2

declare dso_local i32 @hw_breakpoint_disable(...) #2

declare dso_local i8* @page_address(i32) #2

declare dso_local i32 @memcpy(i8*, i32 (i64, i64, i32, i32, i32)*, i32) #2

declare dso_local i32 @relocate_kernel(i64, i64, i32, i32, i32) #2

declare dso_local i64 @virt_to_phys(i8*) #2

declare dso_local i64 @__pa(i8*) #2

declare dso_local i64 @page_to_pfn(i32) #2

declare dso_local i32 @load_segments(...) #2

declare dso_local i32 @set_gdt(i32, i32) #2

declare dso_local i32 @phys_to_virt(i32) #2

declare dso_local i32 @set_idt(i32, i32) #2

declare dso_local i32 @sme_active(...) #2

declare dso_local i32 @__ftrace_enabled_restore(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
