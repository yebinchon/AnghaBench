; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_nested.c_hyperv_flush_guest_mapping_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_nested.c_hyperv_flush_guest_mapping_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_guest_mapping_flush_list = type { i32, i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@hv_hypercall_pg = common dso_local global i32 0, align 4
@hyperv_pcpu_input_arg = common dso_local global i32 0, align 4
@HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_LIST = common dso_local global i32 0, align 4
@HV_HYPERCALL_RESULT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hyperv_flush_guest_mapping_range(i32 %0, i32 (%struct.hv_guest_mapping_flush_list*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.hv_guest_mapping_flush_list*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hv_guest_mapping_flush_list**, align 8
  %8 = alloca %struct.hv_guest_mapping_flush_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 (%struct.hv_guest_mapping_flush_list*, i8*)* %1, i32 (%struct.hv_guest_mapping_flush_list*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @ENOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @hv_hypercall_pg, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32 (%struct.hv_guest_mapping_flush_list*, i8*)*, i32 (%struct.hv_guest_mapping_flush_list*, i8*)** %5, align 8
  %19 = icmp ne i32 (%struct.hv_guest_mapping_flush_list*, i8*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  br label %68

21:                                               ; preds = %17
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  %24 = load i32, i32* @hyperv_pcpu_input_arg, align 4
  %25 = call i64 @this_cpu_ptr(i32 %24)
  %26 = inttoptr i64 %25 to %struct.hv_guest_mapping_flush_list**
  store %struct.hv_guest_mapping_flush_list** %26, %struct.hv_guest_mapping_flush_list*** %7, align 8
  %27 = load %struct.hv_guest_mapping_flush_list**, %struct.hv_guest_mapping_flush_list*** %7, align 8
  %28 = load %struct.hv_guest_mapping_flush_list*, %struct.hv_guest_mapping_flush_list** %27, align 8
  store %struct.hv_guest_mapping_flush_list* %28, %struct.hv_guest_mapping_flush_list** %8, align 8
  %29 = load %struct.hv_guest_mapping_flush_list*, %struct.hv_guest_mapping_flush_list** %8, align 8
  %30 = icmp ne %struct.hv_guest_mapping_flush_list* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  br label %68

38:                                               ; preds = %21
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.hv_guest_mapping_flush_list*, %struct.hv_guest_mapping_flush_list** %8, align 8
  %41 = getelementptr inbounds %struct.hv_guest_mapping_flush_list, %struct.hv_guest_mapping_flush_list* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.hv_guest_mapping_flush_list*, %struct.hv_guest_mapping_flush_list** %8, align 8
  %43 = getelementptr inbounds %struct.hv_guest_mapping_flush_list, %struct.hv_guest_mapping_flush_list* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32 (%struct.hv_guest_mapping_flush_list*, i8*)*, i32 (%struct.hv_guest_mapping_flush_list*, i8*)** %5, align 8
  %45 = load %struct.hv_guest_mapping_flush_list*, %struct.hv_guest_mapping_flush_list** %8, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 %44(%struct.hv_guest_mapping_flush_list* %45, i8* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @local_irq_restore(i64 %51)
  br label %68

53:                                               ; preds = %38
  %54 = load i32, i32* @HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_LIST, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.hv_guest_mapping_flush_list*, %struct.hv_guest_mapping_flush_list** %8, align 8
  %57 = call i32 @hv_do_rep_hypercall(i32 %54, i32 %55, i32 0, %struct.hv_guest_mapping_flush_list* %56, i32* null)
  store i32 %57, i32* %9, align 4
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @local_irq_restore(i64 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @HV_HYPERCALL_RESULT_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %64
  br label %68

68:                                               ; preds = %67, %50, %35, %20
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @trace_hyperv_nested_flush_guest_mapping_range(i32 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @this_cpu_ptr(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @hv_do_rep_hypercall(i32, i32, i32, %struct.hv_guest_mapping_flush_list*, i32*) #1

declare dso_local i32 @trace_hyperv_nested_flush_guest_mapping_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
