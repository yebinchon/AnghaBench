; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_punit_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_punit_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosf_mbi_pmic_access_mutex = common dso_local global i32 0, align 4
@iosf_mbi_pmic_i2c_access_count = common dso_local global i64 0, align 8
@iosf_mbi_pmic_access_waitq = common dso_local global i32 0, align 4
@iosf_mbi_pmic_punit_access_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iosf_mbi_punit_acquire() #0 {
  %1 = call i32 @mutex_lock(i32* @iosf_mbi_pmic_access_mutex)
  br label %2

2:                                                ; preds = %5, %0
  %3 = load i64, i64* @iosf_mbi_pmic_i2c_access_count, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = call i32 @mutex_unlock(i32* @iosf_mbi_pmic_access_mutex)
  %7 = load i32, i32* @iosf_mbi_pmic_access_waitq, align 4
  %8 = load i64, i64* @iosf_mbi_pmic_i2c_access_count, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @wait_event(i32 %7, i32 %10)
  %12 = call i32 @mutex_lock(i32* @iosf_mbi_pmic_access_mutex)
  br label %2

13:                                               ; preds = %2
  %14 = load i32, i32* @iosf_mbi_pmic_punit_access_count, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @iosf_mbi_pmic_punit_access_count, align 4
  %16 = call i32 @mutex_unlock(i32* @iosf_mbi_pmic_access_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
