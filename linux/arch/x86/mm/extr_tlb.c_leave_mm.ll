; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_leave_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_leave_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mm_struct = type { i32 }

@cpu_tlbstate = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leave_mm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mm_struct*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_tlbstate, i32 0, i32 1), align 4
  %5 = call %struct.mm_struct* @this_cpu_read(i32 %4)
  store %struct.mm_struct* %5, %struct.mm_struct** %3, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %7 = icmp eq %struct.mm_struct* %6, @init_mm
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %17

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_tlbstate, i32 0, i32 0), align 4
  %11 = call %struct.mm_struct* @this_cpu_read(i32 %10)
  %12 = icmp ne %struct.mm_struct* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = call i32 @switch_mm(i32* null, %struct.mm_struct* @init_mm, i32* null)
  br label %17

17:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.mm_struct* @this_cpu_read(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @switch_mm(i32*, %struct.mm_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
