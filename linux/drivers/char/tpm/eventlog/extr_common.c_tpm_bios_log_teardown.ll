; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_common.c_tpm_bios_log_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_common.c_tpm_bios_log_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i64* }
%struct.inode = type { i32* }

@TPM_NUM_EVENT_LOG_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm_bios_log_teardown(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %5 = load i32, i32* @TPM_NUM_EVENT_LOG_FILES, align 4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %7
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %10
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %21 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.inode* @d_inode(i64 %26)
  store %struct.inode* %27, %struct.inode** %4, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @inode_lock(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i32 @inode_unlock(%struct.inode* %32)
  %34 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %35 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @securityfs_remove(i64 %40)
  br label %42

42:                                               ; preds = %19, %10
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %3, align 4
  br label %7

46:                                               ; preds = %7
  ret void
}

declare dso_local %struct.inode* @d_inode(i64) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @securityfs_remove(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
