; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_complete_mmio_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_complete_mmio_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64, i32, i32 }
%struct.kvm_run = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Bad MMIO length: %d\00", align 1
@EMULATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_complete_mmio_load(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %10, i64 %14
  store i64* %15, i64** %5, align 8
  %16 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %21, 8
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @kvm_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %29, i32* %6, align 4
  br label %117

30:                                               ; preds = %2
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %39 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %116 [
    i32 8, label %42
    i32 4, label %50
    i32 2, label %72
    i32 1, label %94
  ]

42:                                               ; preds = %30
  %43 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %5, align 8
  store i64 %48, i64* %49, align 8
  br label %116

50:                                               ; preds = %30
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %57 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %5, align 8
  store i64 %61, i64* %62, align 8
  br label %71

63:                                               ; preds = %50
  %64 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %65 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %5, align 8
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %63, %55
  br label %116

72:                                               ; preds = %30
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %79 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %5, align 8
  store i64 %83, i64* %84, align 8
  br label %93

85:                                               ; preds = %72
  %86 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %87 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %5, align 8
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %85, %77
  br label %116

94:                                               ; preds = %30
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %96 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %101 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i64*
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %5, align 8
  store i64 %105, i64* %106, align 8
  br label %115

107:                                              ; preds = %94
  %108 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %109 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %5, align 8
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %107, %99
  br label %116

116:                                              ; preds = %30, %115, %93, %71, %42
  br label %117

117:                                              ; preds = %116, %23
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @kvm_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
