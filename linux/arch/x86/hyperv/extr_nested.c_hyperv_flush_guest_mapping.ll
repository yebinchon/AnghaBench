; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_nested.c_hyperv_flush_guest_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_nested.c_hyperv_flush_guest_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_guest_mapping_flush = type { i32, i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@hv_hypercall_pg = common dso_local global i32 0, align 4
@hyperv_pcpu_input_arg = common dso_local global i32 0, align 4
@HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_SPACE = common dso_local global i32 0, align 4
@HV_HYPERCALL_RESULT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hyperv_flush_guest_mapping(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_guest_mapping_flush**, align 8
  %4 = alloca %struct.hv_guest_mapping_flush*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @ENOTSUPP, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @hv_hypercall_pg, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load i32, i32* @hyperv_pcpu_input_arg, align 4
  %17 = call i64 @this_cpu_ptr(i32 %16)
  %18 = inttoptr i64 %17 to %struct.hv_guest_mapping_flush**
  store %struct.hv_guest_mapping_flush** %18, %struct.hv_guest_mapping_flush*** %3, align 8
  %19 = load %struct.hv_guest_mapping_flush**, %struct.hv_guest_mapping_flush*** %3, align 8
  %20 = load %struct.hv_guest_mapping_flush*, %struct.hv_guest_mapping_flush** %19, align 8
  store %struct.hv_guest_mapping_flush* %20, %struct.hv_guest_mapping_flush** %4, align 8
  %21 = load %struct.hv_guest_mapping_flush*, %struct.hv_guest_mapping_flush** %4, align 8
  %22 = icmp ne %struct.hv_guest_mapping_flush* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @local_irq_restore(i64 %28)
  br label %47

30:                                               ; preds = %13
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.hv_guest_mapping_flush*, %struct.hv_guest_mapping_flush** %4, align 8
  %33 = getelementptr inbounds %struct.hv_guest_mapping_flush, %struct.hv_guest_mapping_flush* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hv_guest_mapping_flush*, %struct.hv_guest_mapping_flush** %4, align 8
  %35 = getelementptr inbounds %struct.hv_guest_mapping_flush, %struct.hv_guest_mapping_flush* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_SPACE, align 4
  %37 = load %struct.hv_guest_mapping_flush*, %struct.hv_guest_mapping_flush** %4, align 8
  %38 = call i32 @hv_do_hypercall(i32 %36, %struct.hv_guest_mapping_flush* %37, i32* null)
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @local_irq_restore(i64 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @HV_HYPERCALL_RESULT_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %30
  br label %47

47:                                               ; preds = %46, %27, %12
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @trace_hyperv_nested_flush_guest_mapping(i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @this_cpu_ptr(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @hv_do_hypercall(i32, %struct.hv_guest_mapping_flush*, i32*) #1

declare dso_local i32 @trace_hyperv_nested_flush_guest_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
