; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_setup_apcb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_setup_apcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_s390_crypto_cb = type { i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_s390_crypto_cb*, i32, %struct.kvm_s390_crypto_cb*, i32, i32)* @setup_apcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_apcb(%struct.kvm_vcpu* %0, %struct.kvm_s390_crypto_cb* %1, i32 %2, %struct.kvm_s390_crypto_cb* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca %struct.kvm_s390_crypto_cb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm_s390_crypto_cb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.kvm_s390_crypto_cb*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %8, align 8
  store %struct.kvm_s390_crypto_cb* %1, %struct.kvm_s390_crypto_cb** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.kvm_s390_crypto_cb* %3, %struct.kvm_s390_crypto_cb** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.kvm_s390_crypto_cb*
  store %struct.kvm_s390_crypto_cb* %17, %struct.kvm_s390_crypto_cb** %14, align 8
  %18 = load i32, i32* %12, align 4
  switch i32 %18, label %111 [
    i32 128, label %19
    i32 129, label %49
    i32 130, label %74
  ]

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PAGE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 256
  %25 = load i32, i32* @PAGE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %22, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %114

31:                                               ; preds = %19
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 128
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %114

37:                                               ; preds = %31
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %39 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %40 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %39, i32 0, i32 1
  %41 = bitcast i32* %40 to i64*
  %42 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %14, align 8
  %43 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %42, i32 0, i32 1
  %44 = ptrtoint i32* %43 to i64
  %45 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %11, align 8
  %46 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %45, i32 0, i32 1
  %47 = bitcast i32* %46 to i64*
  %48 = call i32 @setup_apcb11(%struct.kvm_vcpu* %38, i64* %41, i64 %44, i64* %47)
  store i32 %48, i32* %7, align 4
  br label %114

49:                                               ; preds = %6
  %50 = load i32, i32* %13, align 4
  switch i32 %50, label %73 [
    i32 128, label %51
    i32 129, label %61
  ]

51:                                               ; preds = %49
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %53 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %54 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %53, i32 0, i32 1
  %55 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %14, align 8
  %56 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %55, i32 0, i32 0
  %57 = ptrtoint i32* %56 to i64
  %58 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %11, align 8
  %59 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %58, i32 0, i32 1
  %60 = call i32 @setup_apcb10(%struct.kvm_vcpu* %52, i32* %54, i64 %57, i32* %59)
  store i32 %60, i32* %7, align 4
  br label %114

61:                                               ; preds = %49
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %63 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %64 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %63, i32 0, i32 0
  %65 = bitcast i32* %64 to i64*
  %66 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %14, align 8
  %67 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %66, i32 0, i32 0
  %68 = ptrtoint i32* %67 to i64
  %69 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %11, align 8
  %70 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %69, i32 0, i32 0
  %71 = bitcast i32* %70 to i64*
  %72 = call i32 @setup_apcb00(%struct.kvm_vcpu* %62, i64* %65, i64 %68, i64* %71)
  store i32 %72, i32* %7, align 4
  br label %114

73:                                               ; preds = %49
  br label %111

74:                                               ; preds = %6
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @PAGE_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 32
  %80 = load i32, i32* @PAGE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %77, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @EACCES, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %114

86:                                               ; preds = %74
  %87 = load i32, i32* %13, align 4
  switch i32 %87, label %110 [
    i32 128, label %88
    i32 129, label %98
    i32 130, label %98
  ]

88:                                               ; preds = %86
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %90 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %91 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %90, i32 0, i32 1
  %92 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %14, align 8
  %93 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %92, i32 0, i32 0
  %94 = ptrtoint i32* %93 to i64
  %95 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %11, align 8
  %96 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %95, i32 0, i32 1
  %97 = call i32 @setup_apcb10(%struct.kvm_vcpu* %89, i32* %91, i64 %94, i32* %96)
  store i32 %97, i32* %7, align 4
  br label %114

98:                                               ; preds = %86, %86
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %100 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %101 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %100, i32 0, i32 0
  %102 = bitcast i32* %101 to i64*
  %103 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %14, align 8
  %104 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %103, i32 0, i32 0
  %105 = ptrtoint i32* %104 to i64
  %106 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %11, align 8
  %107 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %106, i32 0, i32 0
  %108 = bitcast i32* %107 to i64*
  %109 = call i32 @setup_apcb00(%struct.kvm_vcpu* %99, i64* %102, i64 %105, i64* %108)
  store i32 %109, i32* %7, align 4
  br label %114

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %110, %6, %73
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %111, %98, %88, %83, %61, %51, %37, %34, %28
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @setup_apcb11(%struct.kvm_vcpu*, i64*, i64, i64*) #1

declare dso_local i32 @setup_apcb10(%struct.kvm_vcpu*, i32*, i64, i32*) #1

declare dso_local i32 @setup_apcb00(%struct.kvm_vcpu*, i64*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
