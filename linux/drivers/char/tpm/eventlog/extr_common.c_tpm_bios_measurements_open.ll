; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_common.c_tpm_bios_measurements_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_common.c_tpm_bios_measurements_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.tpm_chip* }
%struct.tpm_chip = type { i32 }
%struct.tpm_chip_seqops = type { %struct.tpm_chip*, %struct.seq_operations* }
%struct.seq_operations = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tpm_bios_measurements_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_bios_measurements_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca %struct.tpm_chip_seqops*, align 8
  %9 = alloca %struct.seq_operations*, align 8
  %10 = alloca %struct.tpm_chip*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @inode_lock(%struct.inode* %11)
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @inode_unlock(%struct.inode* %18)
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.tpm_chip_seqops*
  store %struct.tpm_chip_seqops* %26, %struct.tpm_chip_seqops** %8, align 8
  %27 = load %struct.tpm_chip_seqops*, %struct.tpm_chip_seqops** %8, align 8
  %28 = getelementptr inbounds %struct.tpm_chip_seqops, %struct.tpm_chip_seqops* %27, i32 0, i32 1
  %29 = load %struct.seq_operations*, %struct.seq_operations** %28, align 8
  store %struct.seq_operations* %29, %struct.seq_operations** %9, align 8
  %30 = load %struct.tpm_chip_seqops*, %struct.tpm_chip_seqops** %8, align 8
  %31 = getelementptr inbounds %struct.tpm_chip_seqops, %struct.tpm_chip_seqops* %30, i32 0, i32 0
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %31, align 8
  store %struct.tpm_chip* %32, %struct.tpm_chip** %10, align 8
  %33 = load %struct.tpm_chip*, %struct.tpm_chip** %10, align 8
  %34 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %33, i32 0, i32 0
  %35 = call i32 @get_device(i32* %34)
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @inode_unlock(%struct.inode* %36)
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = load %struct.seq_operations*, %struct.seq_operations** %9, align 8
  %40 = call i32 @seq_open(%struct.file* %38, %struct.seq_operations* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %22
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load %struct.seq_file*, %struct.seq_file** %45, align 8
  store %struct.seq_file* %46, %struct.seq_file** %7, align 8
  %47 = load %struct.tpm_chip*, %struct.tpm_chip** %10, align 8
  %48 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %49 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %48, i32 0, i32 0
  store %struct.tpm_chip* %47, %struct.tpm_chip** %49, align 8
  br label %50

50:                                               ; preds = %43, %22
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @seq_open(%struct.file*, %struct.seq_operations*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
