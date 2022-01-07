; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_inject_prog_on_prog_intercept.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_inject_prog_on_prog_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kvm_s390_pgm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@KVM_S390_PGM_FLAGS_NO_REWIND = common dso_local global i32 0, align 4
@PGM_PER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @inject_prog_on_prog_intercept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inject_prog_on_prog_intercept(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_s390_pgm_info, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = bitcast %struct.kvm_s390_pgm_info* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 48, i1 false)
  %5 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 0
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 11
  %13 = load i32, i32* @KVM_S390_PGM_FLAGS_NO_REWIND, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PGM_PER, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  switch i32 %22, label %99 [
    i32 153, label %23
    i32 146, label %23
    i32 143, label %23
    i32 142, label %23
    i32 141, label %23
    i32 140, label %23
    i32 139, label %23
    i32 136, label %23
    i32 131, label %23
    i32 129, label %23
    i32 152, label %31
    i32 151, label %31
    i32 149, label %31
    i32 148, label %31
    i32 147, label %31
    i32 144, label %31
    i32 150, label %39
    i32 137, label %39
    i32 134, label %39
    i32 133, label %39
    i32 132, label %39
    i32 130, label %39
    i32 138, label %61
    i32 128, label %76
    i32 145, label %76
    i32 135, label %84
  ]

23:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  br label %100

31:                                               ; preds = %1, %1, %1, %1, %1, %1
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  br label %100

39:                                               ; preds = %1, %1, %1, %1, %1, %1
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 5
  store i32 %52, i32* %53, align 4
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 10
  store i32 %59, i32* %60, align 4
  br label %100

61:                                               ; preds = %1
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 9
  store i32 %67, i32* %68, align 4
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 8
  store i32 %74, i32* %75, align 4
  br label %100

76:                                               ; preds = %1, %1
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 7
  store i32 %82, i32* %83, align 4
  br label %100

84:                                               ; preds = %1
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 6
  store i32 %90, i32* %91, align 4
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 5
  store i32 %97, i32* %98, align 4
  br label %100

99:                                               ; preds = %1
  br label %100

100:                                              ; preds = %99, %84, %76, %61, %39, %31, %23
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @PGM_PER, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %100
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 4
  store i32 %116, i32* %117, align 4
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %119 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 3
  store i32 %123, i32* %124, align 4
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %126 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 2
  store i32 %130, i32* %131, align 4
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %3, i32 0, i32 1
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %110, %100
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %141 = call i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu* %140, %struct.kvm_s390_pgm_info* %3)
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu*, %struct.kvm_s390_pgm_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
