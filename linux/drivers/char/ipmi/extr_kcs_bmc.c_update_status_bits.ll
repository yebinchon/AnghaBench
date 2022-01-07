; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_update_status_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_update_status_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcs_bmc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcs_bmc*, i32, i32)* @update_status_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_status_bits(%struct.kcs_bmc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kcs_bmc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kcs_bmc* %0, %struct.kcs_bmc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kcs_bmc*, %struct.kcs_bmc** %4, align 8
  %9 = call i32 @read_status(%struct.kcs_bmc* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load %struct.kcs_bmc*, %struct.kcs_bmc** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @write_status(%struct.kcs_bmc* %19, i32 %20)
  ret void
}

declare dso_local i32 @read_status(%struct.kcs_bmc*) #1

declare dso_local i32 @write_status(%struct.kcs_bmc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
