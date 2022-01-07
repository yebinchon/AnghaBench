; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-init.c_per_hub_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-init.c_per_hub_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hub_data = type { i32 }

@hub_init_mask = common dso_local global i32 0, align 4
@IIO_ICTP = common dso_local global i32 0, align 4
@IIO_ICTO = common dso_local global i32 0, align 4
@CKSEG0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @per_hub_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @per_hub_init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hub_data*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call %struct.hub_data* @hub_data(i64 %5)
  store %struct.hub_data* %6, %struct.hub_data** %3, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @COMPACT_TO_NASID_NODEID(i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @smp_processor_id()
  %10 = load %struct.hub_data*, %struct.hub_data** %3, align 8
  %11 = getelementptr inbounds %struct.hub_data, %struct.hub_data* %10, i32 0, i32 0
  %12 = call i32 @cpumask_set_cpu(i32 %9, i32* %11)
  %13 = load i64, i64* %2, align 8
  %14 = load i32, i32* @hub_init_mask, align 4
  %15 = call i64 @test_and_set_bit(i64 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %27

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IIO_ICTP, align 4
  %21 = call i32 @REMOTE_HUB_S(i32 %19, i32 %20, i32 2048)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IIO_ICTO, align 4
  %24 = call i32 @REMOTE_HUB_S(i32 %22, i32 %23, i32 255)
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @hub_rtc_init(i64 %25)
  br label %27

27:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.hub_data* @hub_data(i64) #1

declare dso_local i32 @COMPACT_TO_NASID_NODEID(i64) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @test_and_set_bit(i64, i32) #1

declare dso_local i32 @REMOTE_HUB_S(i32, i32, i32) #1

declare dso_local i32 @hub_rtc_init(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
