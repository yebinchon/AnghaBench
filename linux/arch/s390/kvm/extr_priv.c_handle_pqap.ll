; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_pqap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_pqap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_20__*, %struct.TYPE_11__*, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64* }
%struct.TYPE_11__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { {}*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.ap_queue_status = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ECA_APIE = common dso_local global i32 0, align 4
@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_pqap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_pqap(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.ap_queue_status, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = bitcast %struct.ap_queue_status* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = call i32 (...) @ap_instructions_available()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %194

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ECA_APIE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %194

27:                                               ; preds = %14
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = lshr i64 %37, 24
  %39 = and i64 %38, 255
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 3
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON_ONCE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %194

49:                                               ; preds = %27
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = load i32, i32* @PGM_PRIVILEGED_OP, align 4
  %63 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %61, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %194

64:                                               ; preds = %49
  %65 = load i64, i64* %5, align 8
  %66 = and i64 %65, 8323072
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = load i32, i32* @PGM_SPECIFICATION, align 4
  %71 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %69, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %194

72:                                               ; preds = %64
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = call i32 @test_kvm_facility(%struct.TYPE_11__* %75, i32 15)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %5, align 8
  %80 = and i64 %79, 8388608
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %84 = load i32, i32* @PGM_SPECIFICATION, align 4
  %85 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %83, i32 %84)
  store i32 %85, i32* %2, align 4
  br label %194

86:                                               ; preds = %78, %72
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 2
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %86
  %97 = load i64, i64* %5, align 8
  %98 = and i64 %97, 49392
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = load i32, i32* @PGM_SPECIFICATION, align 4
  %103 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %101, i32 %102)
  store i32 %103, i32* %2, align 4
  br label %194

104:                                              ; preds = %96, %86
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = call i32 @test_kvm_facility(%struct.TYPE_11__* %107, i32 65)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %112 = load i32, i32* @PGM_SPECIFICATION, align 4
  %113 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %111, i32 %112)
  store i32 %113, i32* %2, align 4
  br label %194

114:                                              ; preds = %104
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %116 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = icmp ne %struct.TYPE_15__* %121, null
  br i1 %122, label %123, label %180

123:                                              ; preds = %114
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %125 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %124, i32 0, i32 1
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @try_module_get(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %123
  %136 = load i32, i32* @EOPNOTSUPP, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %194

138:                                              ; preds = %123
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = bitcast {}** %146 to i32 (%struct.kvm_vcpu*)**
  %148 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %147, align 8
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %150 = call i32 %148(%struct.kvm_vcpu* %149)
  store i32 %150, i32* %6, align 4
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %152 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %151, i32 0, i32 1
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @module_put(i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %178, label %163

163:                                              ; preds = %138
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %165 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %164, i32 0, i32 0
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 1
  %172 = load i64, i64* %171, align 8
  %173 = and i64 %172, 16711680
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %177 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %176, i32 3)
  br label %178

178:                                              ; preds = %175, %163, %138
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %2, align 4
  br label %194

180:                                              ; preds = %114
  %181 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %4, i32 0, i32 0
  store i32 1, i32* %181, align 4
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %183 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %182, i32 0, i32 0
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 1
  %190 = bitcast i64* %189 to i32*
  %191 = call i32 @memcpy(i32* %190, %struct.ap_queue_status* %4, i32 4)
  %192 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %193 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %192, i32 3)
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %180, %178, %135, %110, %100, %82, %68, %60, %46, %24, %11
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ap_instructions_available(...) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #2

declare dso_local i32 @test_kvm_facility(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @try_module_get(i32) #2

declare dso_local i32 @module_put(i32) #2

declare dso_local i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu*, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.ap_queue_status*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
