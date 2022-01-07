; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_idle.c_enabled_wait.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_idle.c_enabled_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_idle_data = type { i64, i64, i64, i32, i32 }

@s390_idle = common dso_local global i32 0, align 4
@PSW_KERNEL_BITS = common dso_local global i64 0, align 8
@PSW_MASK_WAIT = common dso_local global i64 0, align 8
@PSW_MASK_DAT = common dso_local global i64 0, align 8
@PSW_MASK_IO = common dso_local global i64 0, align 8
@PSW_MASK_EXT = common dso_local global i64 0, align 8
@PSW_MASK_MCHECK = common dso_local global i64 0, align 8
@CIF_NOHZ_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enabled_wait() #0 {
  %1 = alloca %struct.s390_idle_data*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call %struct.s390_idle_data* @this_cpu_ptr(i32* @s390_idle)
  store %struct.s390_idle_data* %4, %struct.s390_idle_data** %1, align 8
  %5 = call i32 (...) @trace_hardirqs_on()
  %6 = load i64, i64* @PSW_KERNEL_BITS, align 8
  %7 = load i64, i64* @PSW_MASK_WAIT, align 8
  %8 = or i64 %6, %7
  %9 = load i64, i64* @PSW_MASK_DAT, align 8
  %10 = or i64 %8, %9
  %11 = load i64, i64* @PSW_MASK_IO, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @PSW_MASK_EXT, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @PSW_MASK_MCHECK, align 8
  %16 = or i64 %14, %15
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* @CIF_NOHZ_DELAY, align 4
  %18 = call i32 @clear_cpu_flag(i32 %17)
  %19 = load %struct.s390_idle_data*, %struct.s390_idle_data** %1, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @psw_idle(%struct.s390_idle_data* %19, i64 %20)
  %22 = call i32 (...) @trace_hardirqs_off()
  %23 = load %struct.s390_idle_data*, %struct.s390_idle_data** %1, align 8
  %24 = getelementptr inbounds %struct.s390_idle_data, %struct.s390_idle_data* %23, i32 0, i32 3
  %25 = call i32 @write_seqcount_begin(i32* %24)
  %26 = load %struct.s390_idle_data*, %struct.s390_idle_data** %1, align 8
  %27 = getelementptr inbounds %struct.s390_idle_data, %struct.s390_idle_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.s390_idle_data*, %struct.s390_idle_data** %1, align 8
  %30 = getelementptr inbounds %struct.s390_idle_data, %struct.s390_idle_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %28, %31
  store i64 %32, i64* %2, align 8
  %33 = load %struct.s390_idle_data*, %struct.s390_idle_data** %1, align 8
  %34 = getelementptr inbounds %struct.s390_idle_data, %struct.s390_idle_data* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.s390_idle_data*, %struct.s390_idle_data** %1, align 8
  %36 = getelementptr inbounds %struct.s390_idle_data, %struct.s390_idle_data* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* %2, align 8
  %38 = load %struct.s390_idle_data*, %struct.s390_idle_data** %1, align 8
  %39 = getelementptr inbounds %struct.s390_idle_data, %struct.s390_idle_data* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.s390_idle_data*, %struct.s390_idle_data** %1, align 8
  %43 = getelementptr inbounds %struct.s390_idle_data, %struct.s390_idle_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load i64, i64* %2, align 8
  %47 = call i32 @cputime_to_nsecs(i64 %46)
  %48 = call i32 @account_idle_time(i32 %47)
  %49 = load %struct.s390_idle_data*, %struct.s390_idle_data** %1, align 8
  %50 = getelementptr inbounds %struct.s390_idle_data, %struct.s390_idle_data* %49, i32 0, i32 3
  %51 = call i32 @write_seqcount_end(i32* %50)
  ret void
}

declare dso_local %struct.s390_idle_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @trace_hardirqs_on(...) #1

declare dso_local i32 @clear_cpu_flag(i32) #1

declare dso_local i32 @psw_idle(%struct.s390_idle_data*, i64) #1

declare dso_local i32 @trace_hardirqs_off(...) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @account_idle_time(i32) #1

declare dso_local i32 @cputime_to_nsecs(i64) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
