; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_msr-smp.c___wrmsr_on_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_msr-smp.c___wrmsr_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_info = type { i32, %struct.msr, i64 }
%struct.msr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__wrmsr_on_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wrmsr_on_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msr_info*, align 8
  %4 = alloca %struct.msr*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.msr_info*
  store %struct.msr_info* %7, %struct.msr_info** %3, align 8
  %8 = call i32 (...) @raw_smp_processor_id()
  store i32 %8, i32* %5, align 4
  %9 = load %struct.msr_info*, %struct.msr_info** %3, align 8
  %10 = getelementptr inbounds %struct.msr_info, %struct.msr_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.msr_info*, %struct.msr_info** %3, align 8
  %15 = getelementptr inbounds %struct.msr_info, %struct.msr_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.msr* @per_cpu_ptr(i64 %16, i32 %17)
  store %struct.msr* %18, %struct.msr** %4, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.msr_info*, %struct.msr_info** %3, align 8
  %21 = getelementptr inbounds %struct.msr_info, %struct.msr_info* %20, i32 0, i32 1
  store %struct.msr* %21, %struct.msr** %4, align 8
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.msr_info*, %struct.msr_info** %3, align 8
  %24 = getelementptr inbounds %struct.msr_info, %struct.msr_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.msr*, %struct.msr** %4, align 8
  %27 = getelementptr inbounds %struct.msr, %struct.msr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.msr*, %struct.msr** %4, align 8
  %30 = getelementptr inbounds %struct.msr, %struct.msr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @wrmsr(i32 %25, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.msr* @per_cpu_ptr(i64, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
