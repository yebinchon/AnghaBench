; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_emulator_check_intercept.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_emulator_check_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.x86_emulate_ctxt*, %struct.x86_instruction_info*, i32)* }
%struct.x86_instruction_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32, i32)* @emulator_check_intercept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_check_intercept(%struct.x86_emulate_ctxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.x86_instruction_info, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 1
  %11 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %12 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 2
  %15 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %16 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 3
  %19 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %20 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %18, align 4
  %23 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 4
  %24 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %25 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 5
  %29 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %30 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %28, align 4
  %33 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 6
  %34 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %35 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %33, align 4
  %38 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 7
  %39 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %40 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %38, align 4
  %42 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 8
  %43 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %44 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 4
  %46 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 9
  %47 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %48 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.x86_instruction_info, %struct.x86_instruction_info* %7, i32 0, i32 10
  %51 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %52 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %50, align 4
  %54 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %55 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32 (%struct.x86_emulate_ctxt*, %struct.x86_instruction_info*, i32)*, i32 (%struct.x86_emulate_ctxt*, %struct.x86_instruction_info*, i32)** %57, align 8
  %59 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 %58(%struct.x86_emulate_ctxt* %59, %struct.x86_instruction_info* %7, i32 %60)
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
