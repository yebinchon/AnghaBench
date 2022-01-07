; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_get_cmma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_get_cmma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_s390_cmma_log = type { i64, i64 }
%struct.kvm_memslots = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.kvm_memory_slot = type { i64, i64 }

@KVM_S390_MAX_BIT_DISTANCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_s390_cmma_log*, i64*, i64)* @kvm_s390_get_cmma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_get_cmma(%struct.kvm* %0, %struct.kvm_s390_cmma_log* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvm_s390_cmma_log*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.kvm_memslots*, align 8
  %16 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.kvm_s390_cmma_log* %1, %struct.kvm_s390_cmma_log** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.kvm*, %struct.kvm** %6, align 8
  %18 = call %struct.kvm_memslots* @kvm_memslots(%struct.kvm* %17)
  store %struct.kvm_memslots* %18, %struct.kvm_memslots** %15, align 8
  %19 = load %struct.kvm_memslots*, %struct.kvm_memslots** %15, align 8
  %20 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %21 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @kvm_s390_next_dirty_cmma(%struct.kvm_memslots* %19, i64 %22)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.kvm*, %struct.kvm** %6, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %24, i64 %25)
  store %struct.kvm_memory_slot* %26, %struct.kvm_memory_slot** %16, align 8
  %27 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %28 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %31 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %33 = icmp ne %struct.kvm_memory_slot* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %150

35:                                               ; preds = %4
  %36 = load %struct.kvm_memslots*, %struct.kvm_memslots** %15, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, 1
  %39 = call i64 @kvm_s390_next_dirty_cmma(%struct.kvm_memslots* %36, i64 %38)
  store i64 %39, i64* %12, align 8
  %40 = load %struct.kvm_memslots*, %struct.kvm_memslots** %15, align 8
  %41 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.kvm_memslots*, %struct.kvm_memslots** %15, align 8
  %47 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %45, %51
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %148, %35
  %54 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %55 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %149

59:                                               ; preds = %53
  %60 = load %struct.kvm*, %struct.kvm** %6, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @gfn_to_hva(%struct.kvm* %60, i64 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i64 @kvm_is_error_hva(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %150

67:                                               ; preds = %59
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %70 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %68, %71
  %73 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %74 = call i32 @kvm_second_dirty_bitmap(%struct.kvm_memory_slot* %73)
  %75 = call i64 @test_and_clear_bit(i64 %72, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.kvm*, %struct.kvm** %6, align 8
  %79 = getelementptr inbounds %struct.kvm, %struct.kvm* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @atomic64_dec(i32* %80)
  br label %82

82:                                               ; preds = %77, %67
  %83 = load %struct.kvm*, %struct.kvm** %6, align 8
  %84 = getelementptr inbounds %struct.kvm, %struct.kvm* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %13, align 8
  %87 = call i64 @get_pgste(i32 %85, i64 %86, i64* %14)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i64 0, i64* %14, align 8
  br label %90

90:                                               ; preds = %89, %82
  %91 = load i64, i64* %14, align 8
  %92 = lshr i64 %91, 24
  %93 = and i64 %92, 67
  %94 = load i64*, i64** %8, align 8
  %95 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %96 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = getelementptr inbounds i64, i64* %94, i64 %97
  store i64 %93, i64* %99, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* @KVM_S390_MAX_BIT_DISTANCE, align 8
  %103 = add i64 %101, %102
  %104 = icmp ugt i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  br label %150

106:                                              ; preds = %90
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %12, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.kvm_memslots*, %struct.kvm_memslots** %15, align 8
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, 1
  %114 = call i64 @kvm_s390_next_dirty_cmma(%struct.kvm_memslots* %111, i64 %113)
  store i64 %114, i64* %12, align 8
  br label %115

115:                                              ; preds = %110, %106
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp uge i64 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %122 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub i64 %120, %123
  %125 = load i64, i64* %9, align 8
  %126 = icmp uge i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119, %115
  store i32 0, i32* %5, align 4
  br label %150

128:                                              ; preds = %119
  %129 = load i64, i64* %11, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %11, align 8
  %131 = load i64, i64* %11, align 8
  %132 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %133 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub i64 %131, %134
  %136 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %137 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp uge i64 %135, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %128
  %141 = load %struct.kvm*, %struct.kvm** %6, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %141, i64 %142)
  store %struct.kvm_memory_slot* %143, %struct.kvm_memory_slot** %16, align 8
  %144 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %145 = icmp ne %struct.kvm_memory_slot* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  br label %150

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %128
  br label %53

149:                                              ; preds = %53
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %149, %146, %127, %105, %66, %34
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.kvm_memslots* @kvm_memslots(%struct.kvm*) #1

declare dso_local i64 @kvm_s390_next_dirty_cmma(%struct.kvm_memslots*, i64) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i64) #1

declare dso_local i64 @gfn_to_hva(%struct.kvm*, i64) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i64 @test_and_clear_bit(i64, i32) #1

declare dso_local i32 @kvm_second_dirty_bitmap(%struct.kvm_memory_slot*) #1

declare dso_local i32 @atomic64_dec(i32*) #1

declare dso_local i64 @get_pgste(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
