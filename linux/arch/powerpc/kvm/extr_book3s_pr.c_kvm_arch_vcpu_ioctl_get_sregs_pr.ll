; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvm_arch_vcpu_ioctl_get_sregs_pr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvm_arch_vcpu_ioctl_get_sregs_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.kvm_sregs = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_11__, i32 }
%struct.TYPE_15__ = type { i32*, i32*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.kvmppc_vcpu_book3s = type { %struct.TYPE_18__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@BOOK3S_HFLAG_SLB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_sregs*)* @kvm_arch_vcpu_ioctl_get_sregs_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_arch_vcpu_ioctl_get_sregs_pr(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_sregs*, align 8
  %5 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %7)
  store %struct.kvmppc_vcpu_book3s* %8, %struct.kvmppc_vcpu_book3s** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %15)
  %17 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  store i32 %18, i32* %22, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BOOK3S_HFLAG_SLB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 %45, i32* %55, align 4
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i32 %64, i32* %74, align 4
  br label %75

75:                                               ; preds = %34
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %31

78:                                               ; preds = %31
  br label %142

79:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 16
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @kvmppc_get_sr(%struct.kvm_vcpu* %84, i32 %85)
  %87 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %88 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %86, i32* %95, align 4
  br label %96

96:                                               ; preds = %83
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %80

99:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %138, %99
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 8
  br i1 %102, label %103, label %141

103:                                              ; preds = %100
  %104 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %105 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %104, i32 0, i32 1
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %113 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %111, i32* %120, align 4
  %121 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %122 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %121, i32 0, i32 0
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %130 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %128, i32* %137, align 4
  br label %138

138:                                              ; preds = %103
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %100

141:                                              ; preds = %100
  br label %142

142:                                              ; preds = %141, %78
  ret i32 0
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_sr(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
