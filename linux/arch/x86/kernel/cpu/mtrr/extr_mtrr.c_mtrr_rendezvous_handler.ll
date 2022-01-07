; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_mtrr.c_mtrr_rendezvous_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_mtrr.c_mtrr_rendezvous_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (i32, i32, i32, i32)* }
%struct.set_mtrr_data = type { i32, i32, i32, i32 }

@mtrr_if = common dso_local global %struct.TYPE_2__* null, align 8
@mtrr_aps_delayed_init = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtrr_rendezvous_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtrr_rendezvous_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.set_mtrr_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.set_mtrr_data*
  store %struct.set_mtrr_data* %5, %struct.set_mtrr_data** %3, align 8
  %6 = load %struct.set_mtrr_data*, %struct.set_mtrr_data** %3, align 8
  %7 = getelementptr inbounds %struct.set_mtrr_data, %struct.set_mtrr_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtrr_if, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %12, align 8
  %14 = load %struct.set_mtrr_data*, %struct.set_mtrr_data** %3, align 8
  %15 = getelementptr inbounds %struct.set_mtrr_data, %struct.set_mtrr_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.set_mtrr_data*, %struct.set_mtrr_data** %3, align 8
  %18 = getelementptr inbounds %struct.set_mtrr_data, %struct.set_mtrr_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.set_mtrr_data*, %struct.set_mtrr_data** %3, align 8
  %21 = getelementptr inbounds %struct.set_mtrr_data, %struct.set_mtrr_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.set_mtrr_data*, %struct.set_mtrr_data** %3, align 8
  %24 = getelementptr inbounds %struct.set_mtrr_data, %struct.set_mtrr_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %13(i32 %16, i32 %19, i32 %22, i32 %25)
  br label %40

27:                                               ; preds = %1
  %28 = load i64, i64* @mtrr_aps_delayed_init, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = call i32 (...) @smp_processor_id()
  %32 = call i32 @cpu_online(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtrr_if, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (...)*, i32 (...)** %36, align 8
  %38 = call i32 (...) %37()
  br label %39

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %39, %10
  ret i32 0
}

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
