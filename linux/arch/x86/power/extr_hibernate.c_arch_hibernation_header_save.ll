; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate.c_arch_hibernation_header_save.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate.c_arch_hibernation_header_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.restore_data_record = type { i64, i32, i32, i32, i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@RESTORE_MAGIC = common dso_local global i32 0, align 4
@restore_registers = common dso_local global i64 0, align 8
@restore_cr3 = common dso_local global i32 0, align 4
@CR3_PCID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_hibernation_header_save(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.restore_data_record*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.restore_data_record*
  store %struct.restore_data_record* %8, %struct.restore_data_record** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %10, 24
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EOVERFLOW, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* @RESTORE_MAGIC, align 4
  %17 = load %struct.restore_data_record*, %struct.restore_data_record** %6, align 8
  %18 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* @restore_registers, align 8
  %20 = load %struct.restore_data_record*, %struct.restore_data_record** %6, align 8
  %21 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* @restore_registers, align 8
  %23 = call i32 @__pa_symbol(i64 %22)
  %24 = load %struct.restore_data_record*, %struct.restore_data_record** %6, align 8
  %25 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @restore_cr3, align 4
  %27 = load i32, i32* @CR3_PCID_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load %struct.restore_data_record*, %struct.restore_data_record** %6, align 8
  %31 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.restore_data_record*, %struct.restore_data_record** %6, align 8
  %33 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @hibernation_e820_save(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %15, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @__pa_symbol(i64) #1

declare dso_local i32 @hibernation_e820_save(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
