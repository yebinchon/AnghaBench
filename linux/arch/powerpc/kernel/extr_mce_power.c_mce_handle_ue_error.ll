; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c_mce_handle_ue_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c_mce_handle_ue_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.pt_regs*)* }
%struct.pt_regs = type { i32 }
%struct.mce_error_info = type { i32 }
%struct.exception_table_entry = type { i32 }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pt_regs*, %struct.mce_error_info*)* @mce_handle_ue_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mce_handle_ue_error(%struct.pt_regs* %0, %struct.mce_error_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.mce_error_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.exception_table_entry*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store %struct.mce_error_info* %1, %struct.mce_error_info** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.exception_table_entry* @search_kernel_exception_table(i32 %10)
  store %struct.exception_table_entry* %11, %struct.exception_table_entry** %7, align 8
  %12 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %13 = icmp ne %struct.exception_table_entry* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.mce_error_info*, %struct.mce_error_info** %5, align 8
  %16 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %18 = call i32 @extable_fixup(%struct.exception_table_entry* %17)
  %19 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i64 1, i64* %3, align 8
  br label %33

21:                                               ; preds = %2
  %22 = load i64 (%struct.pt_regs*)*, i64 (%struct.pt_regs*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %23 = icmp ne i64 (%struct.pt_regs*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i64 (%struct.pt_regs*)*, i64 (%struct.pt_regs*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %27 = call i64 %25(%struct.pt_regs* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i64 1, i64* %6, align 8
  br label %30

30:                                               ; preds = %29, %24
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %31, %14
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local %struct.exception_table_entry* @search_kernel_exception_table(i32) #1

declare dso_local i32 @extable_fixup(%struct.exception_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
