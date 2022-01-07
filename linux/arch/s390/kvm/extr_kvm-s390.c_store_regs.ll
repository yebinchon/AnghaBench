; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_store_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_store_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_14__, %struct.TYPE_22__* }
%struct.TYPE_14__ = type { i32*, i64, %struct.TYPE_24__, i32, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.kvm_run = type { %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FPF_BPBC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_15__* null, align 8
@MACHINE_HAS_GS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_run*)* @store_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_regs(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = call i32 @kvm_s390_get_prefix(%struct.kvm_vcpu* %23)
  %25 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 10
  store i32 %24, i32* %28, align 4
  %29 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 9
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 5
  %38 = call i32 @memcpy(i32* %32, i32* %37, i32 128)
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = call i32 @kvm_s390_get_cpu_timer(%struct.kvm_vcpu* %39)
  %41 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 8
  store i32 %40, i32* %44, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 7
  store i32 %50, i32* %54, align 4
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %62 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 6
  store i32 %60, i32* %64, align 4
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %72 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 5
  store i32 %70, i32* %74, align 4
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %82 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 4
  store i32 %80, i32* %84, align 4
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %90 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  store i32 %88, i32* %92, align 4
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %98 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  store i32 %96, i32* %100, align 4
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %106 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @FPF_BPBC, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @FPF_BPBC, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %121 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %125 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %124, i32 0, i32 1
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @save_access_regs(i32 %130)
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @restore_access_regs(i32 %135)
  %137 = call i32 (...) @save_fpu_regs()
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %144 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %143, i32 0, i32 1
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  store i32 %142, i32* %148, align 4
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %150 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 4
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %159 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  store i32 %162, i32* %166, align 8
  %167 = load i64, i64* @MACHINE_HAS_GS, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %208

169:                                              ; preds = %2
  %170 = call i32 @__ctl_set_bit(i32 2, i32 4)
  %171 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %172 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @save_gs_cb(i32* %180)
  br label %182

182:                                              ; preds = %176, %169
  %183 = call i32 (...) @preempt_disable()
  %184 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %185 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  store i32* %187, i32** %190, align 8
  %191 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %192 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @restore_gs_cb(i32* %194)
  %196 = call i32 (...) @preempt_enable()
  %197 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %198 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %182
  %203 = call i32 @__ctl_clear_bit(i32 2, i32 4)
  br label %204

204:                                              ; preds = %202, %182
  %205 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %206 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  store i32* null, i32** %207, align 8
  br label %208

208:                                              ; preds = %204, %2
  ret void
}

declare dso_local i32 @kvm_s390_get_prefix(%struct.kvm_vcpu*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kvm_s390_get_cpu_timer(%struct.kvm_vcpu*) #1

declare dso_local i32 @save_access_regs(i32) #1

declare dso_local i32 @restore_access_regs(i32) #1

declare dso_local i32 @save_fpu_regs(...) #1

declare dso_local i32 @__ctl_set_bit(i32, i32) #1

declare dso_local i32 @save_gs_cb(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @restore_gs_cb(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @__ctl_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
