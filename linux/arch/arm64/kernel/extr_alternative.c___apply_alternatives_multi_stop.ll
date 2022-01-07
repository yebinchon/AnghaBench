; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_alternative.c___apply_alternatives_multi_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_alternative.c___apply_alternatives_multi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alt_region = type { %struct.alt_instr*, %struct.alt_instr* }
%struct.alt_instr = type { i32 }

@__alt_instructions_end = common dso_local global i64 0, align 8
@__alt_instructions = common dso_local global i64 0, align 8
@all_alternatives_applied = common dso_local global i32 0, align 4
@remaining_capabilities = common dso_local global i32 0, align 4
@ARM64_NPATCHABLE = common dso_local global i32 0, align 4
@boot_capabilities = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__apply_alternatives_multi_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__apply_alternatives_multi_stop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.alt_region, align 8
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds %struct.alt_region, %struct.alt_region* %3, i32 0, i32 0
  %5 = load i64, i64* @__alt_instructions_end, align 8
  %6 = inttoptr i64 %5 to %struct.alt_instr*
  store %struct.alt_instr* %6, %struct.alt_instr** %4, align 8
  %7 = getelementptr inbounds %struct.alt_region, %struct.alt_region* %3, i32 0, i32 1
  %8 = load i64, i64* @__alt_instructions, align 8
  %9 = inttoptr i64 %8 to %struct.alt_instr*
  store %struct.alt_instr* %9, %struct.alt_instr** %7, align 8
  %10 = call i64 (...) @smp_processor_id()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %18, %12
  %14 = load i32, i32* @all_alternatives_applied, align 4
  %15 = call i32 @READ_ONCE(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (...) @cpu_relax()
  br label %13

20:                                               ; preds = %13
  %21 = call i32 (...) @isb()
  br label %36

22:                                               ; preds = %1
  %23 = load i32, i32* @remaining_capabilities, align 4
  %24 = load i32, i32* @ARM64_NPATCHABLE, align 4
  %25 = call i32 @DECLARE_BITMAP(i32 %23, i32 %24)
  %26 = load i32, i32* @remaining_capabilities, align 4
  %27 = load i32, i32* @boot_capabilities, align 4
  %28 = load i32, i32* @ARM64_NPATCHABLE, align 4
  %29 = call i32 @bitmap_complement(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @all_alternatives_applied, align 4
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* @remaining_capabilities, align 4
  %33 = call i32 @__apply_alternatives(%struct.alt_region* %3, i32 0, i32 %32)
  %34 = load i32, i32* @all_alternatives_applied, align 4
  %35 = call i32 @WRITE_ONCE(i32 %34, i32 1)
  br label %36

36:                                               ; preds = %22, %20
  ret i32 0
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @bitmap_complement(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__apply_alternatives(%struct.alt_region*, i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
