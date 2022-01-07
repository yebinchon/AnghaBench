; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cpuid-deps.c_clear_feature.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cpuid-deps.c_clear_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i64 }

@boot_cpu_data = common dso_local global i32 0, align 4
@cpu_caps_cleared = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*, i32)* @clear_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_feature(%struct.cpuinfo_x86* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuinfo_x86*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %6 = icmp ne %struct.cpuinfo_x86* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @clear_cpu_cap(i32* @boot_cpu_data, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* @cpu_caps_cleared, align 8
  %12 = inttoptr i64 %11 to i64*
  %13 = call i32 @set_bit(i32 %10, i64* %12)
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i64*
  %20 = call i32 @clear_bit(i32 %15, i64* %19)
  br label %21

21:                                               ; preds = %14, %7
  ret void
}

declare dso_local i32 @clear_cpu_cap(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
