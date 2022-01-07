; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_tsch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_tsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_16__, %struct.TYPE_14__*, i32, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.kvm_s390_interrupt_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@KVM_EXIT_S390_TSCH = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_tsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_tsch(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_s390_interrupt_info*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  store %struct.kvm_s390_interrupt_info* null, %struct.kvm_s390_interrupt_info** %3, align 8
  store i32 -16777216, i32* %4, align 4
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.kvm_s390_interrupt_info* @kvm_s390_get_io_int(i32 %23, i32 -16777216, i32 %32)
  store %struct.kvm_s390_interrupt_info* %33, %struct.kvm_s390_interrupt_info** %3, align 8
  br label %34

34:                                               ; preds = %20, %1
  %35 = load i32, i32* @KVM_EXIT_S390_TSCH, align 4
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  %40 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %3, align 8
  %41 = icmp ne %struct.kvm_s390_interrupt_info* %40, null
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 8
  %50 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %3, align 8
  %51 = icmp ne %struct.kvm_s390_interrupt_info* %50, null
  br i1 %51, label %52, label %89

52:                                               ; preds = %34
  %53 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %3, align 8
  %54 = getelementptr inbounds %struct.kvm_s390_interrupt_info, %struct.kvm_s390_interrupt_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 5
  store i32 %56, i32* %61, align 4
  %62 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_s390_interrupt_info, %struct.kvm_s390_interrupt_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  store i32 %65, i32* %70, align 8
  %71 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_s390_interrupt_info, %struct.kvm_s390_interrupt_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  store i32 %74, i32* %79, align 4
  %80 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %3, align 8
  %81 = getelementptr inbounds %struct.kvm_s390_interrupt_info, %struct.kvm_s390_interrupt_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  store i32 %83, i32* %88, align 8
  br label %89

89:                                               ; preds = %52, %34
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 1
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  store i32 %95, i32* %100, align 4
  %101 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %3, align 8
  %102 = call i32 @kfree(%struct.kvm_s390_interrupt_info* %101)
  %103 = load i32, i32* @EREMOTE, align 4
  %104 = sub nsw i32 0, %103
  ret i32 %104
}

declare dso_local %struct.kvm_s390_interrupt_info* @kvm_s390_get_io_int(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.kvm_s390_interrupt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
