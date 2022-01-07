; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-crypto.c_octeon_crypto_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-crypto.c_octeon_crypto_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_cop2_state = type { i32 }

@ST0_CU2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_crypto_disable(%struct.octeon_cop2_state* %0, i64 %1) #0 {
  %3 = alloca %struct.octeon_cop2_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.octeon_cop2_state* %0, %struct.octeon_cop2_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @ST0_CU2, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.octeon_cop2_state*, %struct.octeon_cop2_state** %3, align 8
  %14 = call i32 @octeon_cop2_restore(%struct.octeon_cop2_state* %13)
  br label %21

15:                                               ; preds = %2
  %16 = call i64 (...) @read_c0_status()
  %17 = load i64, i64* @ST0_CU2, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  %20 = call i32 @write_c0_status(i64 %19)
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @local_irq_restore(i64 %22)
  %24 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @octeon_cop2_restore(%struct.octeon_cop2_state*) #1

declare dso_local i32 @write_c0_status(i64) #1

declare dso_local i64 @read_c0_status(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
