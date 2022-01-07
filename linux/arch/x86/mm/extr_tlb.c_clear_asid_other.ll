; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_clear_asid_other.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_clear_asid_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@X86_FEATURE_PTI = common dso_local global i32 0, align 4
@TLB_NR_DYN_ASIDS = common dso_local global i64 0, align 8
@cpu_tlbstate = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clear_asid_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_asid_other() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @X86_FEATURE_PTI, align 4
  %3 = call i32 @static_cpu_has(i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 @WARN_ON_ONCE(i32 1)
  br label %31

7:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %8

8:                                                ; preds = %25, %7
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @TLB_NR_DYN_ASIDS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i64, i64* %1, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpu_tlbstate, i32 0, i32 2), align 8
  %15 = call i64 @this_cpu_read(i32 %14)
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %25

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpu_tlbstate, i32 0, i32 1), align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @this_cpu_write(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i64, i64* %1, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %1, align 8
  br label %8

28:                                               ; preds = %8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpu_tlbstate, i32 0, i32 0), align 8
  %30 = call i32 @this_cpu_write(i32 %29, i32 0)
  br label %31

31:                                               ; preds = %28, %5
  ret void
}

declare dso_local i32 @static_cpu_has(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @this_cpu_read(i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
