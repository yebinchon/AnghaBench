; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_set_segment_selector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_set_segment_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.x86_emulate_ctxt*, i32, %struct.desc_struct*, i32, i32)*, i32 (%struct.x86_emulate_ctxt*, i32*, %struct.desc_struct*, i32*, i32)* }
%struct.desc_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86_emulate_ctxt*, i32, i32)* @set_segment_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_segment_selector(%struct.x86_emulate_ctxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.desc_struct, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %11 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.x86_emulate_ctxt*, i32*, %struct.desc_struct*, i32*, i32)*, i32 (%struct.x86_emulate_ctxt*, i32*, %struct.desc_struct*, i32*, i32)** %13, align 8
  %15 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 %14(%struct.x86_emulate_ctxt* %15, i32* %7, %struct.desc_struct* %9, i32* %8, i32 %16)
  %18 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %19 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.x86_emulate_ctxt*, i32, %struct.desc_struct*, i32, i32)*, i32 (%struct.x86_emulate_ctxt*, i32, %struct.desc_struct*, i32, i32)** %21, align 8
  %23 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %22(%struct.x86_emulate_ctxt* %23, i32 %24, %struct.desc_struct* %9, i32 %25, i32 %26)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
