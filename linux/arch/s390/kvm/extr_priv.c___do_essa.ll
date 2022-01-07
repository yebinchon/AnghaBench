; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c___do_essa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c___do_essa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64* }
%struct.kvm_memory_slot = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PGM_ADDRESSING = common dso_local global i32 0, align 4
@_PGSTE_GPS_USAGE_MASK = common dso_local global i64 0, align 8
@_PAGE_INVALID = common dso_local global i64 0, align 8
@_PGSTE_GPS_ZERO = common dso_local global i64 0, align 8
@_PGSTE_GPS_NODAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @__do_essa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_essa(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = call i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu* %17, i32* %6, i32* %7)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @gfn_to_hva(%struct.TYPE_15__* %34, i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = ashr i32 %45, 3
  store i32 %46, i32* %9, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @kvm_is_error_hva(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %52 = load i32, i32* @PGM_ADDRESSING, align 4
  %53 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %51, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %172

54:                                               ; preds = %2
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @pgste_perform_essa(i32 %59, i64 %60, i32 %61, i64* %14, i64* %13)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 16, i32 0
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 2
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 %71, i64* %81, align 8
  store i32 0, i32* %3, align 4
  br label %172

82:                                               ; preds = %54
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* @_PGSTE_GPS_USAGE_MASK, align 8
  %85 = and i64 %83, %84
  %86 = lshr i64 %85, 22
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @_PAGE_INVALID, align 8
  %89 = and i64 %87, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %82
  %92 = load i64, i64* %12, align 8
  %93 = or i64 %92, 2
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* @_PGSTE_GPS_ZERO, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i64, i64* %12, align 8
  %100 = or i64 %99, 1
  store i64 %100, i64* %12, align 8
  br label %101

101:                                              ; preds = %98, %91
  br label %102

102:                                              ; preds = %101, %82
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @_PGSTE_GPS_NODAT, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i64, i64* %12, align 8
  %109 = or i64 %108, 32
  store i64 %109, i64* %12, align 8
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i64, i64* %12, align 8
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %113 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %112, i32 0, i32 2
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %111, i64* %121, align 8
  %122 = load i32, i32* %8, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %110
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %126 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @PAGE_MASK, align 4
  %132 = and i32 %130, %131
  %133 = call i64* @phys_to_virt(i32 %132)
  store i64* %133, i64** %15, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* @PAGE_SHIFT, align 8
  %136 = shl i64 %134, %135
  %137 = load i64*, i64** %15, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  store i64 %136, i64* %140, align 8
  br label %141

141:                                              ; preds = %124, %110
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %141
  %145 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %146 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %145, i32 0, i32 0
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.TYPE_15__* %147, i64 %148)
  store %struct.kvm_memory_slot* %149, %struct.kvm_memory_slot** %16, align 8
  %150 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %151 = icmp ne %struct.kvm_memory_slot* %150, null
  br i1 %151, label %152, label %169

152:                                              ; preds = %144
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %155 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = sub i64 %153, %156
  %158 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %159 = call i32 @kvm_second_dirty_bitmap(%struct.kvm_memory_slot* %158)
  %160 = call i32 @test_and_set_bit(i64 %157, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %152
  %163 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %164 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %163, i32 0, i32 0
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = call i32 @atomic64_inc(i32* %167)
  br label %169

169:                                              ; preds = %162, %152, %144
  br label %170

170:                                              ; preds = %169, %141
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %65, %50
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu*, i32*, i32*) #1

declare dso_local i64 @gfn_to_hva(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @pgste_perform_essa(i32, i64, i32, i64*, i64*) #1

declare dso_local i64* @phys_to_virt(i32) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @test_and_set_bit(i64, i32) #1

declare dso_local i32 @kvm_second_dirty_bitmap(%struct.kvm_memory_slot*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
