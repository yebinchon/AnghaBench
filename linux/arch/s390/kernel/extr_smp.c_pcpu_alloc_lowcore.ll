; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_pcpu_alloc_lowcore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_pcpu_alloc_lowcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.lowcore* }
%struct.lowcore = type { i64, i64, i32, i32, i64, i32 }

@pcpu_devices = common dso_local global %struct.pcpu* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@LC_ORDER = common dso_local global i32 0, align 4
@THREAD_SIZE_ORDER = common dso_local global i32 0, align 4
@STACK_INIT_OFFSET = common dso_local global i64 0, align 8
@S390_lowcore = common dso_local global i32 0, align 4
@lowcore_ptr = common dso_local global %struct.lowcore** null, align 8
@SIGP_SET_PREFIX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcpu*, i32)* @pcpu_alloc_lowcore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcpu_alloc_lowcore(%struct.pcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lowcore*, align 8
  store %struct.pcpu* %0, %struct.pcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %10 = load %struct.pcpu*, %struct.pcpu** @pcpu_devices, align 8
  %11 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %10, i64 0
  %12 = icmp ne %struct.pcpu* %9, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @GFP_DMA, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @LC_ORDER, align 4
  %18 = call i64 @__get_free_pages(i32 %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.lowcore*
  %20 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %21 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %20, i32 0, i32 0
  store %struct.lowcore* %19, %struct.lowcore** %21, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @THREAD_SIZE_ORDER, align 4
  %24 = call i64 @__get_free_pages(i32 %22, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %26 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %25, i32 0, i32 0
  %27 = load %struct.lowcore*, %struct.lowcore** %26, align 8
  %28 = icmp ne %struct.lowcore* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %13
  br label %105

33:                                               ; preds = %29
  br label %42

34:                                               ; preds = %2
  %35 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %36 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %35, i32 0, i32 0
  %37 = load %struct.lowcore*, %struct.lowcore** %36, align 8
  %38 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @STACK_INIT_OFFSET, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %34, %33
  %43 = call i64 (...) @stack_alloc()
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %105

47:                                               ; preds = %42
  %48 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %49 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %48, i32 0, i32 0
  %50 = load %struct.lowcore*, %struct.lowcore** %49, align 8
  store %struct.lowcore* %50, %struct.lowcore** %8, align 8
  %51 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %52 = call i32 @memcpy(%struct.lowcore* %51, i32* @S390_lowcore, i32 512)
  %53 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %54 = bitcast %struct.lowcore* %53 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 512
  %56 = call i32 @memset(i8* %55, i32 0, i32 -472)
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @STACK_INIT_OFFSET, align 8
  %59 = add i64 %57, %58
  %60 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %61 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @STACK_INIT_OFFSET, align 8
  %64 = add i64 %62, %63
  %65 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %66 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %69 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @arch_spin_lockval(i32 %70)
  %72 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %73 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %75 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %77 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %76, i32 0, i32 3
  store i32 2033, i32* %77, align 4
  %78 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %79 = call i64 @nmi_alloc_per_cpu(%struct.lowcore* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %47
  br label %102

82:                                               ; preds = %47
  %83 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %84 = call i64 @vdso_alloc_per_cpu(%struct.lowcore* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %99

87:                                               ; preds = %82
  %88 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %89 = load %struct.lowcore**, %struct.lowcore*** @lowcore_ptr, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.lowcore*, %struct.lowcore** %89, i64 %91
  store %struct.lowcore* %88, %struct.lowcore** %92, align 8
  %93 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %94 = load i32, i32* @SIGP_SET_PREFIX, align 4
  %95 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %96 = ptrtoint %struct.lowcore* %95 to i64
  %97 = trunc i64 %96 to i32
  %98 = call i32 @pcpu_sigp_retry(%struct.pcpu* %93, i32 %94, i32 %97)
  store i32 0, i32* %3, align 4
  br label %123

99:                                               ; preds = %86
  %100 = load %struct.lowcore*, %struct.lowcore** %8, align 8
  %101 = call i32 @nmi_free_per_cpu(%struct.lowcore* %100)
  br label %102

102:                                              ; preds = %99, %81
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @stack_free(i64 %103)
  br label %105

105:                                              ; preds = %102, %46, %32
  %106 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %107 = load %struct.pcpu*, %struct.pcpu** @pcpu_devices, align 8
  %108 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %107, i64 0
  %109 = icmp ne %struct.pcpu* %106, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load i64, i64* %7, align 8
  %112 = load i32, i32* @THREAD_SIZE_ORDER, align 4
  %113 = call i32 @free_pages(i64 %111, i32 %112)
  %114 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %115 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %114, i32 0, i32 0
  %116 = load %struct.lowcore*, %struct.lowcore** %115, align 8
  %117 = ptrtoint %struct.lowcore* %116 to i64
  %118 = load i32, i32* @LC_ORDER, align 4
  %119 = call i32 @free_pages(i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %110, %105
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %120, %87
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i64 @stack_alloc(...) #1

declare dso_local i32 @memcpy(%struct.lowcore*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @arch_spin_lockval(i32) #1

declare dso_local i64 @nmi_alloc_per_cpu(%struct.lowcore*) #1

declare dso_local i64 @vdso_alloc_per_cpu(%struct.lowcore*) #1

declare dso_local i32 @pcpu_sigp_retry(%struct.pcpu*, i32, i32) #1

declare dso_local i32 @nmi_free_per_cpu(%struct.lowcore*) #1

declare dso_local i32 @stack_free(i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
