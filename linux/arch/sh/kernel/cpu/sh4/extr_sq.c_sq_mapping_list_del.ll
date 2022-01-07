; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_sq.c_sq_mapping_list_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_sq.c_sq_mapping_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sq_mapping = type { %struct.sq_mapping* }

@sq_mapping_lock = common dso_local global i32 0, align 4
@sq_mapping_list = common dso_local global %struct.sq_mapping* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sq_mapping*)* @sq_mapping_list_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sq_mapping_list_del(%struct.sq_mapping* %0) #0 {
  %2 = alloca %struct.sq_mapping*, align 8
  %3 = alloca %struct.sq_mapping**, align 8
  %4 = alloca %struct.sq_mapping*, align 8
  store %struct.sq_mapping* %0, %struct.sq_mapping** %2, align 8
  %5 = call i32 @spin_lock_irq(i32* @sq_mapping_lock)
  store %struct.sq_mapping** @sq_mapping_list, %struct.sq_mapping*** %3, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.sq_mapping**, %struct.sq_mapping*** %3, align 8
  %8 = load %struct.sq_mapping*, %struct.sq_mapping** %7, align 8
  store %struct.sq_mapping* %8, %struct.sq_mapping** %4, align 8
  %9 = icmp ne %struct.sq_mapping* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load %struct.sq_mapping*, %struct.sq_mapping** %4, align 8
  %12 = load %struct.sq_mapping*, %struct.sq_mapping** %2, align 8
  %13 = icmp eq %struct.sq_mapping* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.sq_mapping*, %struct.sq_mapping** %4, align 8
  %16 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %15, i32 0, i32 0
  %17 = load %struct.sq_mapping*, %struct.sq_mapping** %16, align 8
  %18 = load %struct.sq_mapping**, %struct.sq_mapping*** %3, align 8
  store %struct.sq_mapping* %17, %struct.sq_mapping** %18, align 8
  br label %23

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.sq_mapping*, %struct.sq_mapping** %4, align 8
  %22 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %21, i32 0, i32 0
  store %struct.sq_mapping** %22, %struct.sq_mapping*** %3, align 8
  br label %6

23:                                               ; preds = %14, %6
  %24 = call i32 @spin_unlock_irq(i32* @sq_mapping_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
