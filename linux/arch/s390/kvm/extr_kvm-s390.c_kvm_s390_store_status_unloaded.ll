; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_store_status_unloaded.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_store_status_unloaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32*, i32, i32, i64 }

@NUM_FPRS = common dso_local global i32 0, align 4
@KVM_S390_STORE_STATUS_NOADDR = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@KVM_S390_STORE_STATUS_PREFIXED = common dso_local global i64 0, align 8
@__LC_FPREGS_SAVE_AREA = common dso_local global i64 0, align 8
@MACHINE_HAS_VX = common dso_local global i64 0, align 8
@__LC_GPREGS_SAVE_AREA = common dso_local global i64 0, align 8
@__LC_PSW_SAVE_AREA = common dso_local global i64 0, align 8
@__LC_PREFIX_SAVE_AREA = common dso_local global i64 0, align 8
@__LC_FP_CREG_SAVE_AREA = common dso_local global i64 0, align 8
@__LC_TOD_PROGREG_SAVE_AREA = common dso_local global i64 0, align 8
@__LC_CPU_TIMER_SAVE_AREA = common dso_local global i64 0, align 8
@__LC_CLOCK_COMP_SAVE_AREA = common dso_local global i64 0, align 8
@__LC_AREGS_SAVE_AREA = common dso_local global i64 0, align 8
@__LC_CREGS_SAVE_AREA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_store_status_unloaded(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 1, i8* %6, align 1
  %14 = load i32, i32* @NUM_FPRS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = call i32 @kvm_s390_get_prefix(%struct.kvm_vcpu* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @KVM_S390_STORE_STATUS_NOADDR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %24, i64 163, i8* %6, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %196

30:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %50

31:                                               ; preds = %2
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @KVM_S390_STORE_STATUS_PREFIXED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = call i64 @write_guest_real(%struct.kvm_vcpu* %36, i32 163, i8* %6, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %196

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %5, align 8
  br label %49

45:                                               ; preds = %31
  %46 = load i64, i64* @__LC_FPREGS_SAVE_AREA, align 8
  %47 = load i64, i64* %5, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i64, i64* @MACHINE_HAS_VX, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = call i32 @convert_vx_to_fp(i32* %17, i32* %61)
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @__LC_FPREGS_SAVE_AREA, align 8
  %66 = add i64 %64, %65
  %67 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %63, i64 %66, i32* %17, i32 128)
  store i32 %67, i32* %12, align 4
  br label %81

68:                                               ; preds = %50
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @__LC_FPREGS_SAVE_AREA, align 8
  %72 = add i64 %70, %71
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %69, i64 %72, i32* %79, i32 128)
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %68, %53
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @__LC_GPREGS_SAVE_AREA, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %82, i64 %85, i32* %92, i32 128)
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* @__LC_PSW_SAVE_AREA, align 8
  %99 = add i64 %97, %98
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %101 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %96, i64 %99, i32* %104, i32 16)
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* @__LC_PREFIX_SAVE_AREA, align 8
  %111 = add i64 %109, %110
  %112 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %108, i64 %111, i32* %9, i32 4)
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %12, align 4
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @__LC_FP_CREG_SAVE_AREA, align 8
  %118 = add i64 %116, %117
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %115, i64 %118, i32* %124, i32 4)
  %126 = load i32, i32* %12, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %12, align 4
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @__LC_TOD_PROGREG_SAVE_AREA, align 8
  %131 = add i64 %129, %130
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %128, i64 %131, i32* %136, i32 4)
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %12, align 4
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %141 = call i32 @kvm_s390_get_cpu_timer(%struct.kvm_vcpu* %140)
  store i32 %141, i32* %11, align 4
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* @__LC_CPU_TIMER_SAVE_AREA, align 8
  %145 = add i64 %143, %144
  %146 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %142, i64 %145, i32* %11, i32 8)
  %147 = load i32, i32* %12, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %12, align 4
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %150 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 8
  store i32 %155, i32* %10, align 4
  %156 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* @__LC_CLOCK_COMP_SAVE_AREA, align 8
  %159 = add i64 %157, %158
  %160 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %156, i64 %159, i32* %10, i32 8)
  %161 = load i32, i32* %12, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %12, align 4
  %163 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %164 = load i64, i64* %5, align 8
  %165 = load i64, i64* @__LC_AREGS_SAVE_AREA, align 8
  %166 = add i64 %164, %165
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %168 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %167, i32 0, i32 1
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %163, i64 %166, i32* %172, i32 64)
  %174 = load i32, i32* %12, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %12, align 4
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %177 = load i64, i64* %5, align 8
  %178 = load i64, i64* @__LC_CREGS_SAVE_AREA, align 8
  %179 = add i64 %177, %178
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 3
  %185 = call i32 (%struct.kvm_vcpu*, i64, ...) @write_guest_abs(%struct.kvm_vcpu* %176, i64 %179, i32* %184, i32 128)
  %186 = load i32, i32* %12, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %81
  %191 = load i32, i32* @EFAULT, align 4
  %192 = sub nsw i32 0, %191
  br label %194

193:                                              ; preds = %81
  br label %194

194:                                              ; preds = %193, %190
  %195 = phi i32 [ %192, %190 ], [ 0, %193 ]
  store i32 %195, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %196

196:                                              ; preds = %194, %39, %27
  %197 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kvm_s390_get_prefix(%struct.kvm_vcpu*) #2

declare dso_local i32 @write_guest_abs(%struct.kvm_vcpu*, i64, ...) #2

declare dso_local i64 @write_guest_real(%struct.kvm_vcpu*, i32, i8*, i32) #2

declare dso_local i32 @convert_vx_to_fp(i32*, i32*) #2

declare dso_local i32 @kvm_s390_get_cpu_timer(%struct.kvm_vcpu*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
