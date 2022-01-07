; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_pcpu_ec_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_pcpu_ec_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i32, i32 }

@SIGP_EXTERNAL_CALL = common dso_local global i32 0, align 4
@SIGP_EMERGENCY_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcpu*, i32)* @pcpu_ec_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcpu_ec_call(%struct.pcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.pcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcpu* %0, %struct.pcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %8 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %7, i32 0, i32 1
  %9 = call i64 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %14 = call i64 @pcpu_running(%struct.pcpu* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @SIGP_EXTERNAL_CALL, align 4
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @SIGP_EMERGENCY_SIGNAL, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %5, align 4
  %22 = call i32 (...) @get_tod_clock_fast()
  %23 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %24 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pcpu_sigp_retry(%struct.pcpu* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %20, %11
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @pcpu_running(%struct.pcpu*) #1

declare dso_local i32 @get_tod_clock_fast(...) #1

declare dso_local i32 @pcpu_sigp_retry(%struct.pcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
