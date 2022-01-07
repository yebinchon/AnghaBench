; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_vm_set_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_vm_set_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.kvm_device_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ENABLE: AES keywrapping support\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ENABLE: DEA keywrapping support\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"DISABLE: AES keywrapping support\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"DISABLE: DEA keywrapping support\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_device_attr*)* @kvm_s390_vm_set_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_vm_set_crypto(%struct.kvm* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_device_attr*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %5, align 8
  %6 = load %struct.kvm*, %struct.kvm** %4, align 8
  %7 = getelementptr inbounds %struct.kvm, %struct.kvm* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %140 [
    i32 130, label %12
    i32 128, label %37
    i32 133, label %62
    i32 131, label %87
    i32 129, label %112
    i32 132, label %126
  ]

12:                                               ; preds = %2
  %13 = load %struct.kvm*, %struct.kvm** %4, align 8
  %14 = call i32 @test_kvm_facility(%struct.kvm* %13, i32 76)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load %struct.kvm*, %struct.kvm** %4, align 8
  %18 = getelementptr inbounds %struct.kvm, %struct.kvm* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %152

22:                                               ; preds = %12
  %23 = load %struct.kvm*, %struct.kvm** %4, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @get_random_bytes(i32 %29, i32 4)
  %31 = load %struct.kvm*, %struct.kvm** %4, align 8
  %32 = getelementptr inbounds %struct.kvm, %struct.kvm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.kvm*, %struct.kvm** %4, align 8
  %36 = call i32 @VM_EVENT(%struct.kvm* %35, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %146

37:                                               ; preds = %2
  %38 = load %struct.kvm*, %struct.kvm** %4, align 8
  %39 = call i32 @test_kvm_facility(%struct.kvm* %38, i32 76)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load %struct.kvm*, %struct.kvm** %4, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %152

47:                                               ; preds = %37
  %48 = load %struct.kvm*, %struct.kvm** %4, align 8
  %49 = getelementptr inbounds %struct.kvm, %struct.kvm* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @get_random_bytes(i32 %54, i32 4)
  %56 = load %struct.kvm*, %struct.kvm** %4, align 8
  %57 = getelementptr inbounds %struct.kvm, %struct.kvm* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.kvm*, %struct.kvm** %4, align 8
  %61 = call i32 @VM_EVENT(%struct.kvm* %60, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %146

62:                                               ; preds = %2
  %63 = load %struct.kvm*, %struct.kvm** %4, align 8
  %64 = call i32 @test_kvm_facility(%struct.kvm* %63, i32 76)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load %struct.kvm*, %struct.kvm** %4, align 8
  %68 = getelementptr inbounds %struct.kvm, %struct.kvm* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %152

72:                                               ; preds = %62
  %73 = load %struct.kvm*, %struct.kvm** %4, align 8
  %74 = getelementptr inbounds %struct.kvm, %struct.kvm* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.kvm*, %struct.kvm** %4, align 8
  %78 = getelementptr inbounds %struct.kvm, %struct.kvm* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @memset(i32 %83, i32 0, i32 4)
  %85 = load %struct.kvm*, %struct.kvm** %4, align 8
  %86 = call i32 @VM_EVENT(%struct.kvm* %85, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %146

87:                                               ; preds = %2
  %88 = load %struct.kvm*, %struct.kvm** %4, align 8
  %89 = call i32 @test_kvm_facility(%struct.kvm* %88, i32 76)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load %struct.kvm*, %struct.kvm** %4, align 8
  %93 = getelementptr inbounds %struct.kvm, %struct.kvm* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %152

97:                                               ; preds = %87
  %98 = load %struct.kvm*, %struct.kvm** %4, align 8
  %99 = getelementptr inbounds %struct.kvm, %struct.kvm* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.kvm*, %struct.kvm** %4, align 8
  %103 = getelementptr inbounds %struct.kvm, %struct.kvm* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memset(i32 %108, i32 0, i32 4)
  %110 = load %struct.kvm*, %struct.kvm** %4, align 8
  %111 = call i32 @VM_EVENT(%struct.kvm* %110, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %146

112:                                              ; preds = %2
  %113 = call i32 (...) @ap_instructions_available()
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load %struct.kvm*, %struct.kvm** %4, align 8
  %117 = getelementptr inbounds %struct.kvm, %struct.kvm* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* @EOPNOTSUPP, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %152

121:                                              ; preds = %112
  %122 = load %struct.kvm*, %struct.kvm** %4, align 8
  %123 = getelementptr inbounds %struct.kvm, %struct.kvm* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  store i32 1, i32* %125, align 8
  br label %146

126:                                              ; preds = %2
  %127 = call i32 (...) @ap_instructions_available()
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load %struct.kvm*, %struct.kvm** %4, align 8
  %131 = getelementptr inbounds %struct.kvm, %struct.kvm* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* @EOPNOTSUPP, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %152

135:                                              ; preds = %126
  %136 = load %struct.kvm*, %struct.kvm** %4, align 8
  %137 = getelementptr inbounds %struct.kvm, %struct.kvm* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  store i32 0, i32* %139, align 8
  br label %146

140:                                              ; preds = %2
  %141 = load %struct.kvm*, %struct.kvm** %4, align 8
  %142 = getelementptr inbounds %struct.kvm, %struct.kvm* %141, i32 0, i32 0
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load i32, i32* @ENXIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %152

146:                                              ; preds = %135, %121, %97, %72, %47, %22
  %147 = load %struct.kvm*, %struct.kvm** %4, align 8
  %148 = call i32 @kvm_s390_vcpu_crypto_reset_all(%struct.kvm* %147)
  %149 = load %struct.kvm*, %struct.kvm** %4, align 8
  %150 = getelementptr inbounds %struct.kvm, %struct.kvm* %149, i32 0, i32 0
  %151 = call i32 @mutex_unlock(i32* %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %146, %140, %129, %115, %91, %66, %41, %16
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_kvm_facility(%struct.kvm*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i32 @VM_EVENT(%struct.kvm*, i32, i8*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ap_instructions_available(...) #1

declare dso_local i32 @kvm_s390_vcpu_crypto_reset_all(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
