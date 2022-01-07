; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_cgu_gate_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_cgu_gate_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_cgu = type { i64 }
%struct.ingenic_cgu_gate_info = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_cgu*, %struct.ingenic_cgu_gate_info*)* @ingenic_cgu_gate_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_cgu_gate_get(%struct.ingenic_cgu* %0, %struct.ingenic_cgu_gate_info* %1) #0 {
  %3 = alloca %struct.ingenic_cgu*, align 8
  %4 = alloca %struct.ingenic_cgu_gate_info*, align 8
  store %struct.ingenic_cgu* %0, %struct.ingenic_cgu** %3, align 8
  store %struct.ingenic_cgu_gate_info* %1, %struct.ingenic_cgu_gate_info** %4, align 8
  %5 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %3, align 8
  %6 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.ingenic_cgu_gate_info*, %struct.ingenic_cgu_gate_info** %4, align 8
  %9 = getelementptr inbounds %struct.ingenic_cgu_gate_info, %struct.ingenic_cgu_gate_info* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = call i32 @readl(i64 %11)
  %13 = load %struct.ingenic_cgu_gate_info*, %struct.ingenic_cgu_gate_info** %4, align 8
  %14 = getelementptr inbounds %struct.ingenic_cgu_gate_info, %struct.ingenic_cgu_gate_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.ingenic_cgu_gate_info*, %struct.ingenic_cgu_gate_info** %4, align 8
  %23 = getelementptr inbounds %struct.ingenic_cgu_gate_info, %struct.ingenic_cgu_gate_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = xor i32 %21, %24
  ret i32 %25
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
