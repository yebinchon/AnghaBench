; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate.c_arch_hibernation_header_restore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate.c_arch_hibernation_header_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.restore_data_record = type { i64, i32, i32, i32, i32 }

@RESTORE_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Unrecognized hibernate image header format!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@restore_jump_address = common dso_local global i32 0, align 4
@jump_address_phys = common dso_local global i32 0, align 4
@restore_cr3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Hibernate inconsistent memory map detected!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_hibernation_header_restore(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.restore_data_record*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.restore_data_record*
  store %struct.restore_data_record* %6, %struct.restore_data_record** %4, align 8
  %7 = load %struct.restore_data_record*, %struct.restore_data_record** %4, align 8
  %8 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RESTORE_MAGIC, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.restore_data_record*, %struct.restore_data_record** %4, align 8
  %18 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @restore_jump_address, align 4
  %20 = load %struct.restore_data_record*, %struct.restore_data_record** %4, align 8
  %21 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* @jump_address_phys, align 4
  %23 = load %struct.restore_data_record*, %struct.restore_data_record** %4, align 8
  %24 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @restore_cr3, align 4
  %26 = load %struct.restore_data_record*, %struct.restore_data_record** %4, align 8
  %27 = getelementptr inbounds %struct.restore_data_record, %struct.restore_data_record* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @hibernation_e820_mismatch(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = call i32 @pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %31, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i64 @hibernation_e820_mismatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
