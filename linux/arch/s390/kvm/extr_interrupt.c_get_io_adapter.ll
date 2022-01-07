; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_get_io_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_get_io_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_io_adapter = type { i32 }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s390_io_adapter** }

@MAX_S390_IO_ADAPTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s390_io_adapter* (%struct.kvm*, i32)* @get_io_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s390_io_adapter* @get_io_adapter(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.s390_io_adapter*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MAX_S390_IO_ADAPTERS, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.s390_io_adapter* null, %struct.s390_io_adapter** %3, align 8
  br label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MAX_S390_IO_ADAPTERS, align 4
  %13 = call i32 @array_index_nospec(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.kvm*, %struct.kvm** %4, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.s390_io_adapter**, %struct.s390_io_adapter*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.s390_io_adapter*, %struct.s390_io_adapter** %17, i64 %19
  %21 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %20, align 8
  store %struct.s390_io_adapter* %21, %struct.s390_io_adapter** %3, align 8
  br label %22

22:                                               ; preds = %10, %9
  %23 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %3, align 8
  ret %struct.s390_io_adapter* %23
}

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
