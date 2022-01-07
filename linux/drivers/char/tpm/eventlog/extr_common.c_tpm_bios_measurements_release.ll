; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_common.c_tpm_bios_measurements_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_common.c_tpm_bios_measurements_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.seq_file = type { i64 }
%struct.tpm_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tpm_bios_measurements_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_bios_measurements_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.tpm_chip*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.seq_file*
  store %struct.seq_file* %10, %struct.seq_file** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.tpm_chip*
  store %struct.tpm_chip* %14, %struct.tpm_chip** %6, align 8
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %16 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %15, i32 0, i32 0
  %17 = call i32 @put_device(i32* %16)
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call i32 @seq_release(%struct.inode* %18, %struct.file* %19)
  ret i32 %20
}

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @seq_release(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
