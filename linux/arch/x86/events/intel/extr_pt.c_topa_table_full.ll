; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_topa_table_full.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_topa_table_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.topa = type { i32 }

@PT_CAP_topa_multiple_entries = common dso_local global i32 0, align 4
@TENTS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.topa*)* @topa_table_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @topa_table_full(%struct.topa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.topa*, align 8
  store %struct.topa* %0, %struct.topa** %3, align 8
  %4 = load i32, i32* @PT_CAP_topa_multiple_entries, align 4
  %5 = call i32 @intel_pt_validate_hw_cap(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.topa*, %struct.topa** %3, align 8
  %9 = getelementptr inbounds %struct.topa, %struct.topa* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %2, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.topa*, %struct.topa** %3, align 8
  %17 = getelementptr inbounds %struct.topa, %struct.topa* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TENTS_PER_PAGE, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %15, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @intel_pt_validate_hw_cap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
