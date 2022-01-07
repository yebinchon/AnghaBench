; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___cpa_flush_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___cpa_flush_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cpa_flush_tlb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cpa_data*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cpa_data*
  store %struct.cpa_data* %6, %struct.cpa_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %10 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @__cpa_addr(%struct.cpa_data* %14, i32 %15)
  %17 = call i32 @fix_addr(i32 %16)
  %18 = call i32 @__flush_tlb_one_kernel(i32 %17)
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %7

22:                                               ; preds = %7
  ret void
}

declare dso_local i32 @__flush_tlb_one_kernel(i32) #1

declare dso_local i32 @fix_addr(i32) #1

declare dso_local i32 @__cpa_addr(%struct.cpa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
