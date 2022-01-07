; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_machine_kexec.c_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_machine_kexec.c_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, i64, i64, i32 }

@reboot_code_buffer = common dso_local global i64 0, align 8
@kexec_start_address = common dso_local global i64 0, align 8
@KEXEC_TYPE_DEFAULT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@kexec_indirection_page = common dso_local global i64 0, align 8
@relocate_new_kernel = common dso_local global i64 0, align 8
@relocate_new_kernel_size = common dso_local global i32 0, align 4
@IND_DONE = common dso_local global i64 0, align 8
@IND_SOURCE = common dso_local global i64 0, align 8
@IND_INDIRECTION = common dso_local global i64 0, align 8
@IND_DESTINATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Will call new kernel at %08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Bye ...\0A\00", align 1
@kexec_ready_to_reboot = common dso_local global i32 0, align 4
@kexec_smp_wait = common dso_local global i64 0, align 8
@relocated_kexec_smp_wait = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_kexec(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %5 = load %struct.kimage*, %struct.kimage** %2, align 8
  %6 = getelementptr inbounds %struct.kimage, %struct.kimage* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @page_address(i32 %7)
  store i64 %8, i64* @reboot_code_buffer, align 8
  %9 = load %struct.kimage*, %struct.kimage** %2, align 8
  %10 = getelementptr inbounds %struct.kimage, %struct.kimage* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64* @phys_to_virt(i64 %11)
  %13 = ptrtoint i64* %12 to i64
  store i64 %13, i64* @kexec_start_address, align 8
  %14 = load %struct.kimage*, %struct.kimage** %2, align 8
  %15 = getelementptr inbounds %struct.kimage, %struct.kimage* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KEXEC_TYPE_DEFAULT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.kimage*, %struct.kimage** %2, align 8
  %21 = getelementptr inbounds %struct.kimage, %struct.kimage* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PAGE_MASK, align 8
  %24 = and i64 %22, %23
  %25 = call i64* @phys_to_virt(i64 %24)
  %26 = ptrtoint i64* %25 to i64
  store i64 %26, i64* @kexec_indirection_page, align 8
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.kimage*, %struct.kimage** %2, align 8
  %29 = getelementptr inbounds %struct.kimage, %struct.kimage* %28, i32 0, i32 2
  %30 = ptrtoint i64* %29 to i64
  store i64 %30, i64* @kexec_indirection_page, align 8
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i64, i64* @reboot_code_buffer, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load i64, i64* @relocate_new_kernel, align 8
  %35 = load i32, i32* @relocate_new_kernel_size, align 4
  %36 = call i32 @memcpy(i8* %33, i64 %34, i32 %35)
  %37 = load %struct.kimage*, %struct.kimage** %2, align 8
  %38 = getelementptr inbounds %struct.kimage, %struct.kimage* %37, i32 0, i32 2
  store i64* %38, i64** %4, align 8
  br label %39

39:                                               ; preds = %89, %31
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %3, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @IND_DONE, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi i1 [ false, %39 ], [ %48, %43 ]
  br i1 %50, label %51, label %91

51:                                               ; preds = %49
  %52 = load i64*, i64** %4, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IND_SOURCE, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load i64*, i64** %4, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IND_INDIRECTION, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i64*, i64** %4, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IND_DESTINATION, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63, %57, %51
  %70 = load i64*, i64** %4, align 8
  %71 = load i64, i64* %70, align 8
  %72 = call i64* @phys_to_virt(i64 %71)
  %73 = ptrtoint i64* %72 to i64
  %74 = load i64*, i64** %4, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @IND_INDIRECTION, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @PAGE_MASK, align 8
  %84 = and i64 %82, %83
  %85 = call i64* @phys_to_virt(i64 %84)
  br label %89

86:                                               ; preds = %76
  %87 = load i64*, i64** %4, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi i64* [ %85, %81 ], [ %88, %86 ]
  store i64* %90, i64** %4, align 8
  br label %39

91:                                               ; preds = %49
  %92 = call i32 (...) @smp_processor_id()
  %93 = call i32 @set_cpu_online(i32 %92, i32 0)
  %94 = call i32 (...) @local_irq_disable()
  %95 = load %struct.kimage*, %struct.kimage** %2, align 8
  %96 = getelementptr inbounds %struct.kimage, %struct.kimage* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %97)
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %100 = call i32 (...) @__flush_cache_all()
  %101 = call i32 (...) @kexec_reboot()
  ret void
}

declare dso_local i64 @page_address(i32) #1

declare dso_local i64* @phys_to_virt(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @set_cpu_online(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @__flush_cache_all(...) #1

declare dso_local i32 @kexec_reboot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
