; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_tsb_insert.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_tsb_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsb = type { i32 }

@tlb_type = common dso_local global i64 0, align 8
@cheetah_plus = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsb*, i64, i64)* @tsb_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsb_insert(%struct.tsb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tsb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tsb* %0, %struct.tsb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.tsb*, %struct.tsb** %4, align 8
  %9 = ptrtoint %struct.tsb* %8 to i64
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* @tlb_type, align 8
  %11 = load i64, i64* @cheetah_plus, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* @tlb_type, align 8
  %15 = load i64, i64* @hypervisor, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %3
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @__pa(i64 %18)
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @__tsb_insert(i64 %21, i64 %22, i64 %23)
  ret void
}

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @__tsb_insert(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
