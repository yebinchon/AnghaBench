; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-mips.c_mips_sc_is_activated.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-mips.c_mips_sc_is_activated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*)* @mips_sc_is_activated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_sc_is_activated(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuinfo_mips*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %3, align 8
  %6 = call i32 (...) @read_c0_config2()
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @current_cpu_type()
  switch i32 %7, label %14 [
    i32 135, label %8
    i32 134, label %8
    i32 137, label %8
    i32 136, label %8
    i32 132, label %8
    i32 129, label %8
    i32 131, label %8
    i32 133, label %8
    i32 128, label %8
    i32 130, label %8
  ]

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 4096
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %31

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i32, i32* %4, align 4
  %16 = lshr i32 %15, 4
  %17 = and i32 %16, 15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 0, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp ule i32 %21, 7
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 2, %24
  %26 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  br label %30

29:                                               ; preds = %20, %14
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @read_c0_config2(...) #1

declare dso_local i32 @current_cpu_type(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
