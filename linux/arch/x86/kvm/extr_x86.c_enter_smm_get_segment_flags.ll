; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_enter_smm_get_segment_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_enter_smm_get_segment_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_segment*)* @enter_smm_get_segment_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enter_smm_get_segment_flags(%struct.kvm_segment* %0) #0 {
  %2 = alloca %struct.kvm_segment*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_segment* %0, %struct.kvm_segment** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 23
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 22
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 21
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %23 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 20
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 15
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %35 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 13
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %41 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 12
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %47 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
