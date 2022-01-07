; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pad.c_exit_round_robin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pad.c_exit_round_robin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@pad_busy_cpus_bits = common dso_local global i32 0, align 4
@tsk_in_cpu = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @exit_round_robin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_round_robin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpumask*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @pad_busy_cpus_bits, align 4
  %5 = call %struct.cpumask* @to_cpumask(i32 %4)
  store %struct.cpumask* %5, %struct.cpumask** %3, align 8
  %6 = load i32*, i32** @tsk_in_cpu, align 8
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %12 = call i32 @cpumask_clear_cpu(i32 %10, %struct.cpumask* %11)
  %13 = load i32*, i32** @tsk_in_cpu, align 8
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 -1, i32* %16, align 4
  ret void
}

declare dso_local %struct.cpumask* @to_cpumask(i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
