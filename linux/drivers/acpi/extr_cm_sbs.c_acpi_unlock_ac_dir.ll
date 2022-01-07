; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_cm_sbs.c_acpi_unlock_ac_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_cm_sbs.c_acpi_unlock_ac_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }

@cm_sbs_mutex = common dso_local global i32 0, align 4
@lock_ac_dir_cnt = common dso_local global i64 0, align 8
@acpi_ac_dir = common dso_local global i32* null, align 8
@ACPI_AC_CLASS = common dso_local global i32 0, align 4
@acpi_root_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_unlock_ac_dir(%struct.proc_dir_entry* %0) #0 {
  %2 = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %2, align 8
  %3 = call i32 @mutex_lock(i32* @cm_sbs_mutex)
  %4 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %5 = icmp ne %struct.proc_dir_entry* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, i64* @lock_ac_dir_cnt, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* @lock_ac_dir_cnt, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i64, i64* @lock_ac_dir_cnt, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %14 = icmp ne %struct.proc_dir_entry* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32*, i32** @acpi_ac_dir, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @ACPI_AC_CLASS, align 4
  %20 = load i32, i32* @acpi_root_dir, align 4
  %21 = call i32 @remove_proc_entry(i32 %19, i32 %20)
  store i32* null, i32** @acpi_ac_dir, align 8
  br label %22

22:                                               ; preds = %18, %15, %12, %9
  %23 = call i32 @mutex_unlock(i32* @cm_sbs_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @remove_proc_entry(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
