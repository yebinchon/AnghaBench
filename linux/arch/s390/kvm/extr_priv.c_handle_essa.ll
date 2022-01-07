; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_essa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_essa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_16__, %struct.TYPE_18__*, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.gmap* }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.gmap = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__*, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ESSA: release %d pages\00", align 1
@PGM_OPERATION = common dso_local global i32 0, align 4
@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@ESSA_SET_STABLE_NODAT = common dso_local global i32 0, align 4
@ESSA_SET_STABLE_IF_RESIDENT = common dso_local global i32 0, align 4
@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@ECB2_CMMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_essa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_essa(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.gmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PAGE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = ashr i32 %18, 3
  store i32 %19, i32* %4, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %20, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.gmap*, %struct.gmap** %25, align 8
  store %struct.gmap* %26, %struct.gmap** %6, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %1
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = load i32, i32* @PGM_OPERATION, align 4
  %42 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %214

43:                                               ; preds = %1
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = load i32, i32* @PGM_PRIVILEGED_OP, align 4
  %57 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %55, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %214

58:                                               ; preds = %43
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -268435456
  %66 = lshr i32 %65, 28
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 1
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = call i64 @test_kvm_facility(%struct.TYPE_18__* %70, i32 147)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* @ESSA_SET_STABLE_NODAT, align 4
  br label %77

75:                                               ; preds = %58
  %76 = load i32, i32* @ESSA_SET_STABLE_IF_RESIDENT, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = icmp sgt i32 %67, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = load i32, i32* @PGM_SPECIFICATION, align 4
  %83 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %81, i32 %82)
  store i32 %83, i32* %2, align 4
  br label %214

84:                                               ; preds = %77
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 1
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %135, label %92

92:                                               ; preds = %84
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 1
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %92
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 1
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = call i32 @down_write(i32* %108)
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 1
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 1
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = call i32 @up_write(i32* %122)
  br label %124

124:                                              ; preds = %102, %92
  %125 = load i32, i32* @ECB2_CMMA, align 4
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %125
  store i32 %132, i32* %130, align 4
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %134 = call i32 @kvm_s390_retry_instr(%struct.kvm_vcpu* %133)
  br label %172

135:                                              ; preds = %84
  %136 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %137 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %136, i32 0, i32 1
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = call i32 @down_read(i32* %141)
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %144 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %143, i32 0, i32 1
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = call i32 @srcu_read_lock(i32* %146)
  store i32 %147, i32* %9, align 4
  %148 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @__do_essa(%struct.kvm_vcpu* %148, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %152 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %151, i32 0, i32 1
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @srcu_read_unlock(i32* %154, i32 %155)
  %157 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %158 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %157, i32 0, i32 1
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = call i32 @up_read(i32* %162)
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %135
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %214

168:                                              ; preds = %135
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %168, %124
  %173 = load i32, i32* @PAGE_MASK, align 4
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %175 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, %173
  store i32 %180, i32* %178, align 4
  %181 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %182 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64* @phys_to_virt(i32 %186)
  store i64* %187, i64** %5, align 8
  %188 = load %struct.gmap*, %struct.gmap** %6, align 8
  %189 = getelementptr inbounds %struct.gmap, %struct.gmap* %188, i32 0, i32 0
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = call i32 @down_read(i32* %191)
  store i32 0, i32* %7, align 4
  br label %193

193:                                              ; preds = %205, %172
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %4, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %193
  %198 = load %struct.gmap*, %struct.gmap** %6, align 8
  %199 = load i64*, i64** %5, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @__gmap_zap(%struct.gmap* %198, i64 %203)
  br label %205

205:                                              ; preds = %197
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %193

208:                                              ; preds = %193
  %209 = load %struct.gmap*, %struct.gmap** %6, align 8
  %210 = getelementptr inbounds %struct.gmap, %struct.gmap* %209, i32 0, i32 0
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = call i32 @up_read(i32* %212)
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %208, %166, %80, %54, %39
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32) #1

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @test_kvm_facility(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kvm_s390_retry_instr(%struct.kvm_vcpu*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @__do_essa(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64* @phys_to_virt(i32) #1

declare dso_local i32 @__gmap_zap(%struct.gmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
