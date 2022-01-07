; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_irq.c_uv_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_irq.c_uv_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_alloc_info = type { i32, i32, i64, i8*, i32 }
%struct.irq_domain = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@X86_IRQ_ALLOC_TYPE_UV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_setup_irq(i8* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.irq_alloc_info, align 8
  %13 = alloca %struct.irq_domain*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call %struct.irq_domain* (...) @uv_get_irq_domain()
  store %struct.irq_domain* %14, %struct.irq_domain** %13, align 8
  %15 = load %struct.irq_domain*, %struct.irq_domain** %13, align 8
  %16 = icmp ne %struct.irq_domain* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %38

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @cpumask_of(i32 %21)
  %23 = call i32 @init_irq_alloc_info(%struct.irq_alloc_info* %12, i32 %22)
  %24 = load i32, i32* @X86_IRQ_ALLOC_TYPE_UV, align 4
  %25 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %12, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %12, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %12, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %12, i32 0, i32 2
  store i64 %30, i64* %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %12, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = load %struct.irq_domain*, %struct.irq_domain** %13, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @uv_blade_to_memory_nid(i32 %35)
  %37 = call i32 @irq_domain_alloc_irqs(%struct.irq_domain* %34, i32 1, i32 %36, %struct.irq_alloc_info* %12)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %20, %17
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.irq_domain* @uv_get_irq_domain(...) #1

declare dso_local i32 @init_irq_alloc_info(%struct.irq_alloc_info*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @irq_domain_alloc_irqs(%struct.irq_domain*, i32, i32, %struct.irq_alloc_info*) #1

declare dso_local i32 @uv_blade_to_memory_nid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
