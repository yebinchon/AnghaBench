; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_machine_kexec.c_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_machine_kexec.c_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, i64, i64, i32 }

@IND_DONE = common dso_local global i64 0, align 8
@IND_SOURCE = common dso_local global i64 0, align 8
@IND_INDIRECTION = common dso_local global i64 0, align 8
@IND_DESTINATION = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@relocate_new_kernel = common dso_local global i32 0, align 4
@relocate_new_kernel_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_kexec(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32 (i64, i64, i64)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %9 = load %struct.kimage*, %struct.kimage** %2, align 8
  %10 = getelementptr inbounds %struct.kimage, %struct.kimage* %9, i32 0, i32 0
  store i64* %10, i64** %7, align 8
  br label %11

11:                                               ; preds = %61, %1
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @IND_DONE, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi i1 [ false, %11 ], [ %20, %15 ]
  br i1 %22, label %23, label %63

23:                                               ; preds = %21
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IND_SOURCE, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IND_INDIRECTION, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IND_DESTINATION, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35, %29, %23
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i64* @phys_to_virt(i64 %43)
  %45 = ptrtoint i64* %44 to i64
  %46 = load i64*, i64** %7, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @IND_INDIRECTION, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @PAGE_MASK, align 8
  %56 = and i64 %54, %55
  %57 = call i64* @phys_to_virt(i64 %56)
  br label %61

58:                                               ; preds = %48
  %59 = load i64*, i64** %7, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i64* [ %57, %53 ], [ %60, %58 ]
  store i64* %62, i64** %7, align 8
  br label %11

63:                                               ; preds = %21
  %64 = call i32 (...) @__ftrace_enabled_save()
  store i32 %64, i32* %8, align 4
  %65 = call i32 (...) @local_irq_disable()
  %66 = load %struct.kimage*, %struct.kimage** %2, align 8
  %67 = getelementptr inbounds %struct.kimage, %struct.kimage* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %3, align 8
  %69 = load %struct.kimage*, %struct.kimage** %2, align 8
  %70 = getelementptr inbounds %struct.kimage, %struct.kimage* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @page_address(i32 %71)
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load i32, i32* @relocate_new_kernel, align 4
  %76 = load i32, i32* @relocate_new_kernel_size, align 4
  %77 = call i32 @memcpy(i8* %74, i32 %75, i32 %76)
  %78 = load %struct.kimage*, %struct.kimage** %2, align 8
  %79 = call i32 @kexec_info(%struct.kimage* %78)
  %80 = call i32 (...) @flush_cache_all()
  %81 = call i32 (...) @sh_bios_vbr_reload()
  %82 = load i64, i64* %4, align 8
  %83 = inttoptr i64 %82 to i32 (i64, i64, i64)*
  store i32 (i64, i64, i64)* %83, i32 (i64, i64, i64)** %5, align 8
  %84 = load i32 (i64, i64, i64)*, i32 (i64, i64, i64)** %5, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.kimage*, %struct.kimage** %2, align 8
  %88 = getelementptr inbounds %struct.kimage, %struct.kimage* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64* @phys_to_virt(i64 %89)
  %91 = ptrtoint i64* %90 to i64
  %92 = call i32 %84(i64 %85, i64 %86, i64 %91)
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @__ftrace_enabled_restore(i32 %93)
  ret void
}

declare dso_local i64* @phys_to_virt(i64) #1

declare dso_local i32 @__ftrace_enabled_save(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @kexec_info(%struct.kimage*) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @sh_bios_vbr_reload(...) #1

declare dso_local i32 @__ftrace_enabled_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
