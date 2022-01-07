; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_set_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_set_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%struct.kvmppc_ics = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_xics_set_mapped(%struct.kvm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvmppc_xics*, align 8
  %8 = alloca %struct.kvmppc_ics*, align 8
  %9 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.kvm*, %struct.kvm** %4, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %12, align 8
  store %struct.kvmppc_xics* %13, %struct.kvmppc_xics** %7, align 8
  %14 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %14, i64 %15, i64* %9)
  store %struct.kvmppc_ics* %16, %struct.kvmppc_ics** %8, align 8
  %17 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %8, align 8
  %18 = icmp ne %struct.kvmppc_ics* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %34

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %8, align 8
  %23 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 %21, i64* %27, align 8
  %28 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %8, align 8
  %29 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 -1, i32* %33, align 8
  br label %34

34:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
