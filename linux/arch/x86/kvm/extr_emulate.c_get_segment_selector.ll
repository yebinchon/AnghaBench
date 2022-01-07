; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_get_segment_selector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_get_segment_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.x86_emulate_ctxt*, i32*, %struct.desc_struct*, i32*, i32)* }
%struct.desc_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32)* @get_segment_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_segment_selector(%struct.x86_emulate_ctxt* %0, i32 %1) #0 {
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.desc_struct, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %8 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.x86_emulate_ctxt*, i32*, %struct.desc_struct*, i32*, i32)*, i32 (%struct.x86_emulate_ctxt*, i32*, %struct.desc_struct*, i32*, i32)** %10, align 8
  %12 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 %11(%struct.x86_emulate_ctxt* %12, i32* %5, %struct.desc_struct* %6, i32* null, i32 %13)
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
