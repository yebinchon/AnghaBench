; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_sca_add_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_sca_add_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i64, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.esca_block*, i64 }
%struct.esca_block = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.bsca_block = type { i64, %struct.TYPE_6__* }

@ECB2_ESCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @sca_add_vcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sca_add_vcpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.bsca_block*, align 8
  %4 = alloca %struct.esca_block*, align 8
  %5 = alloca %struct.bsca_block*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = call i32 (...) @kvm_s390_use_sca_entries()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.esca_block*, %struct.esca_block** %13, align 8
  %15 = bitcast %struct.esca_block* %14 to %struct.bsca_block*
  store %struct.bsca_block* %15, %struct.bsca_block** %3, align 8
  %16 = load %struct.bsca_block*, %struct.bsca_block** %3, align 8
  %17 = ptrtoint %struct.bsca_block* %16 to i32
  %18 = ashr i32 %17, 32
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  %24 = load %struct.bsca_block*, %struct.bsca_block** %3, align 8
  %25 = ptrtoint %struct.bsca_block* %24 to i32
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 %25, i32* %30, align 4
  br label %146

31:                                               ; preds = %1
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = call i32 @read_lock(i32* %36)
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %31
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.esca_block*, %struct.esca_block** %50, align 8
  store %struct.esca_block* %51, %struct.esca_block** %4, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = ptrtoint %struct.TYPE_7__* %55 to i32
  %57 = load %struct.esca_block*, %struct.esca_block** %4, align 8
  %58 = getelementptr inbounds %struct.esca_block, %struct.esca_block* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %56, i32* %64, align 4
  %65 = load %struct.esca_block*, %struct.esca_block** %4, align 8
  %66 = ptrtoint %struct.esca_block* %65 to i32
  %67 = ashr i32 %66, 32
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 4
  %73 = load %struct.esca_block*, %struct.esca_block** %4, align 8
  %74 = ptrtoint %struct.esca_block* %73 to i32
  %75 = and i32 %74, -64
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* @ECB2_ESCA, align 4
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %81
  store i32 %88, i32* %86, align 4
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %90 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.esca_block*, %struct.esca_block** %4, align 8
  %93 = getelementptr inbounds %struct.esca_block, %struct.esca_block* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i64*
  %96 = call i32 @set_bit_inv(i64 %91, i64* %95)
  br label %139

97:                                               ; preds = %31
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load %struct.esca_block*, %struct.esca_block** %102, align 8
  %104 = bitcast %struct.esca_block* %103 to %struct.bsca_block*
  store %struct.bsca_block* %104, %struct.bsca_block** %5, align 8
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = ptrtoint %struct.TYPE_7__* %108 to i32
  %110 = load %struct.bsca_block*, %struct.bsca_block** %5, align 8
  %111 = getelementptr inbounds %struct.bsca_block, %struct.bsca_block* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %109, i32* %117, align 4
  %118 = load %struct.bsca_block*, %struct.bsca_block** %5, align 8
  %119 = ptrtoint %struct.bsca_block* %118 to i32
  %120 = ashr i32 %119, 32
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i32 %120, i32* %125, align 4
  %126 = load %struct.bsca_block*, %struct.bsca_block** %5, align 8
  %127 = ptrtoint %struct.bsca_block* %126 to i32
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i32 %127, i32* %132, align 4
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.bsca_block*, %struct.bsca_block** %5, align 8
  %137 = getelementptr inbounds %struct.bsca_block, %struct.bsca_block* %136, i32 0, i32 0
  %138 = call i32 @set_bit_inv(i64 %135, i64* %137)
  br label %139

139:                                              ; preds = %97, %45
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %141 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %140, i32 0, i32 1
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = call i32 @read_unlock(i32* %144)
  br label %146

146:                                              ; preds = %139, %8
  ret void
}

declare dso_local i32 @kvm_s390_use_sca_entries(...) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @set_bit_inv(i64, i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
