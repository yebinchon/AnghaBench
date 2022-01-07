; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_measure_residency_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_measure_residency_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32 }
%struct.pseudo_lock_region = type { i32, i32, i32, i32 }
%struct.residency_counts = type { i8*, i8*, i8*, i8* }
%struct.perf_event = type { i32 }

@MSR_MISC_FEATURE_CONTROL = common dso_local global i32 0, align 4
@prefetch_disable_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event_attr*, %struct.perf_event_attr*, %struct.pseudo_lock_region*, %struct.residency_counts*)* @measure_residency_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @measure_residency_fn(%struct.perf_event_attr* %0, %struct.perf_event_attr* %1, %struct.pseudo_lock_region* %2, %struct.residency_counts* %3) #0 {
  %5 = alloca %struct.perf_event_attr*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  %7 = alloca %struct.pseudo_lock_region*, align 8
  %8 = alloca %struct.residency_counts*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.perf_event*, align 8
  %14 = alloca %struct.perf_event*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %5, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %6, align 8
  store %struct.pseudo_lock_region* %2, %struct.pseudo_lock_region** %7, align 8
  store %struct.residency_counts* %3, %struct.residency_counts** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %22 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %23 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %7, align 8
  %24 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr* %22, i32 %25, i32* null, i32* null, i32* null)
  store %struct.perf_event* %26, %struct.perf_event** %13, align 8
  %27 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %28 = call i64 @IS_ERR(%struct.perf_event* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %122

31:                                               ; preds = %4
  %32 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %33 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %7, align 8
  %34 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr* %32, i32 %35, i32* null, i32* null, i32* null)
  store %struct.perf_event* %36, %struct.perf_event** %14, align 8
  %37 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %38 = call i64 @IS_ERR(%struct.perf_event* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %119

41:                                               ; preds = %31
  %42 = call i32 (...) @local_irq_disable()
  %43 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %44 = call i64 @perf_event_read_local(%struct.perf_event* %43, i8** %21, i32* null, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (...) @local_irq_enable()
  br label %116

48:                                               ; preds = %41
  %49 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %50 = call i64 @perf_event_read_local(%struct.perf_event* %49, i8** %21, i32* null, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (...) @local_irq_enable()
  br label %116

54:                                               ; preds = %48
  %55 = load i32, i32* @MSR_MISC_FEATURE_CONTROL, align 4
  %56 = load i32, i32* @prefetch_disable_bits, align 4
  %57 = call i32 @wrmsr(i32 %55, i32 %56, i32 0)
  %58 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %59 = call i32 @x86_perf_rdpmc_index(%struct.perf_event* %58)
  store i32 %59, i32* %16, align 4
  %60 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %61 = call i32 @x86_perf_rdpmc_index(%struct.perf_event* %60)
  store i32 %61, i32* %15, align 4
  %62 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %7, align 8
  %63 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @READ_ONCE(i32 %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %17, align 4
  %67 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %7, align 8
  %68 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @READ_ONCE(i32 %69)
  store i8* %70, i8** %20, align 8
  %71 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %7, align 8
  %72 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @READ_ONCE(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @rdpmcl(i32 %76, i8* %77)
  %79 = load i32, i32* %16, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @rdpmcl(i32 %79, i8* %80)
  %82 = call i32 (...) @rmb()
  %83 = load i32, i32* %15, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @rdpmcl(i32 %83, i8* %84)
  %86 = load i32, i32* %16, align 4
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @rdpmcl(i32 %86, i8* %87)
  %89 = call i32 (...) @rmb()
  store i64 0, i64* %19, align 8
  br label %90

90:                                               ; preds = %99, %54
  %91 = load i64, i64* %19, align 8
  %92 = load i32, i32* %18, align 4
  %93 = zext i32 %92 to i64
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = call i32 (...) @rmb()
  %97 = load i8*, i8** %20, align 8
  %98 = load i64, i64* %19, align 8
  call void asm sideeffect "mov ($0,$1,1), %eax\0A\09", "r,r,~{eax},~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %97, i64 %98) #2, !srcloc !2
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %17, align 4
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* %19, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %19, align 8
  br label %90

104:                                              ; preds = %90
  %105 = call i32 (...) @rmb()
  %106 = load i32, i32* %15, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @rdpmcl(i32 %106, i8* %107)
  %109 = load i32, i32* %16, align 4
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @rdpmcl(i32 %109, i8* %110)
  %112 = call i32 (...) @rmb()
  %113 = load i32, i32* @MSR_MISC_FEATURE_CONTROL, align 4
  %114 = call i32 @wrmsr(i32 %113, i32 0, i32 0)
  %115 = call i32 (...) @local_irq_enable()
  br label %116

116:                                              ; preds = %104, %52, %46
  %117 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %118 = call i32 @perf_event_release_kernel(%struct.perf_event* %117)
  br label %119

119:                                              ; preds = %116, %40
  %120 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %121 = call i32 @perf_event_release_kernel(%struct.perf_event* %120)
  br label %122

122:                                              ; preds = %119, %30
  %123 = load i8*, i8** %11, align 8
  %124 = load %struct.residency_counts*, %struct.residency_counts** %8, align 8
  %125 = getelementptr inbounds %struct.residency_counts, %struct.residency_counts* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = load %struct.residency_counts*, %struct.residency_counts** %8, align 8
  %128 = getelementptr inbounds %struct.residency_counts, %struct.residency_counts* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = load %struct.residency_counts*, %struct.residency_counts** %8, align 8
  %131 = getelementptr inbounds %struct.residency_counts, %struct.residency_counts* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = load %struct.residency_counts*, %struct.residency_counts** %8, align 8
  %134 = getelementptr inbounds %struct.residency_counts, %struct.residency_counts* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  ret i32 0
}

declare dso_local %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i64 @perf_event_read_local(%struct.perf_event*, i8**, i32*, i32*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @x86_perf_rdpmc_index(%struct.perf_event*) #1

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i32 @rdpmcl(i32, i8*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @perf_event_release_kernel(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2453, i32 2476}
