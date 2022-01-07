; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_crypto_set_masks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_crypto_set_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.kvm_s390_crypto_cb* }
%struct.kvm_s390_crypto_cb = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@CRYCB_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"SET CRYCB: apm %016lx %016lx %016lx %016lx\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"SET CRYCB: aqm %016lx %016lx %016lx %016lx\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"SET CRYCB: adm %016lx %016lx %016lx %016lx\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"SET CRYCB: apm %016lx aqm %04x adm %04x\00", align 1
@KVM_REQ_VSIE_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_crypto_set_masks(%struct.kvm* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.kvm_s390_crypto_cb*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.kvm*, %struct.kvm** %5, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %13, align 8
  store %struct.kvm_s390_crypto_cb* %14, %struct.kvm_s390_crypto_cb** %9, align 8
  %15 = load %struct.kvm*, %struct.kvm** %5, align 8
  %16 = getelementptr inbounds %struct.kvm, %struct.kvm* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.kvm*, %struct.kvm** %5, align 8
  %19 = call i32 @kvm_s390_vcpu_block_all(%struct.kvm* %18)
  %20 = load %struct.kvm*, %struct.kvm** %5, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CRYCB_FORMAT_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %124 [
    i32 128, label %27
    i32 129, label %94
    i32 130, label %94
  ]

27:                                               ; preds = %4
  %28 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %29 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i64*, i64** %6, align 8
  %33 = call i32 @memcpy(i32 %31, i64* %32, i32 32)
  %34 = load %struct.kvm*, %struct.kvm** %5, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i16
  %42 = load i64*, i64** %6, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i16
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (%struct.kvm*, i32, i8*, i64, i16, i16, ...) @VM_EVENT(%struct.kvm* %34, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %37, i16 zeroext %41, i16 zeroext %45, i64 %48)
  %50 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %51 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i64*, i64** %7, align 8
  %55 = call i32 @memcpy(i32 %53, i64* %54, i32 32)
  %56 = load %struct.kvm*, %struct.kvm** %5, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i16
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i16
  %68 = load i64*, i64** %7, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (%struct.kvm*, i32, i8*, i64, i16, i16, ...) @VM_EVENT(%struct.kvm* %56, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %59, i16 zeroext %63, i16 zeroext %67, i64 %70)
  %72 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %73 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64*, i64** %8, align 8
  %77 = call i32 @memcpy(i32 %75, i64* %76, i32 32)
  %78 = load %struct.kvm*, %struct.kvm** %5, align 8
  %79 = load i64*, i64** %8, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %8, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i16
  %86 = load i64*, i64** %8, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i16
  %90 = load i64*, i64** %8, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 3
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (%struct.kvm*, i32, i8*, i64, i16, i16, ...) @VM_EVENT(%struct.kvm* %78, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %81, i16 zeroext %85, i16 zeroext %89, i64 %92)
  br label %125

94:                                               ; preds = %4, %4
  %95 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %96 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i64*, i64** %6, align 8
  %100 = call i32 @memcpy(i32 %98, i64* %99, i32 8)
  %101 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %102 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i64*, i64** %7, align 8
  %106 = call i32 @memcpy(i32 %104, i64* %105, i32 2)
  %107 = load %struct.kvm_s390_crypto_cb*, %struct.kvm_s390_crypto_cb** %9, align 8
  %108 = getelementptr inbounds %struct.kvm_s390_crypto_cb, %struct.kvm_s390_crypto_cb* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i64*, i64** %8, align 8
  %112 = call i32 @memcpy(i32 %110, i64* %111, i32 2)
  %113 = load %struct.kvm*, %struct.kvm** %5, align 8
  %114 = load i64*, i64** %6, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %7, align 8
  %118 = bitcast i64* %117 to i16*
  %119 = load i16, i16* %118, align 2
  %120 = load i64*, i64** %8, align 8
  %121 = bitcast i64* %120 to i16*
  %122 = load i16, i16* %121, align 2
  %123 = call i32 (%struct.kvm*, i32, i8*, i64, i16, i16, ...) @VM_EVENT(%struct.kvm* %113, i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %116, i16 zeroext %119, i16 zeroext %122)
  br label %125

124:                                              ; preds = %4
  br label %125

125:                                              ; preds = %124, %94, %27
  %126 = load %struct.kvm*, %struct.kvm** %5, align 8
  %127 = load i32, i32* @KVM_REQ_VSIE_RESTART, align 4
  %128 = call i32 @kvm_s390_sync_request_broadcast(%struct.kvm* %126, i32 %127)
  %129 = load %struct.kvm*, %struct.kvm** %5, align 8
  %130 = call i32 @kvm_s390_vcpu_unblock_all(%struct.kvm* %129)
  %131 = load %struct.kvm*, %struct.kvm** %5, align 8
  %132 = getelementptr inbounds %struct.kvm, %struct.kvm* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_s390_vcpu_block_all(%struct.kvm*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @VM_EVENT(%struct.kvm*, i32, i8*, i64, i16 zeroext, i16 zeroext, ...) #1

declare dso_local i32 @kvm_s390_sync_request_broadcast(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_s390_vcpu_unblock_all(%struct.kvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
