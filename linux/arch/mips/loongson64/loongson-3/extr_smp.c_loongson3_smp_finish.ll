; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_smp.c_loongson3_smp_finish.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_smp.c_loongson3_smp_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mips_hpt_frequency = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ipi_mailbox_buf = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"CPU#%d finished, CP0_ST=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @loongson3_smp_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loongson3_smp_finish() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @smp_processor_id()
  store i32 %2, i32* %1, align 4
  %3 = call i64 (...) @read_c0_count()
  %4 = load i32, i32* @mips_hpt_frequency, align 4
  %5 = load i32, i32* @HZ, align 4
  %6 = sdiv i32 %4, %5
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %3, %7
  %9 = call i32 @write_c0_compare(i64 %8)
  %10 = call i32 (...) @local_irq_enable()
  %11 = load i64*, i64** @ipi_mailbox_buf, align 8
  %12 = load i32, i32* %1, align 4
  %13 = call i64 @cpu_logical_map(i32 %12)
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 0
  %17 = call i32 @loongson3_ipi_write64(i32 0, i64 %16)
  %18 = call i32 (...) @smp_processor_id()
  %19 = call i32 (...) @read_c0_status()
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @write_c0_compare(i64) #1

declare dso_local i64 @read_c0_count(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @loongson3_ipi_write64(i32, i64) #1

declare dso_local i64 @cpu_logical_map(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @read_c0_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
