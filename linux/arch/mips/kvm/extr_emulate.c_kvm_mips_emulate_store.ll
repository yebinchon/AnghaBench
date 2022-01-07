; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (i32)* }
%struct.kvm_run = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i8* }
%struct.kvm_vcpu = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64*, i32 }
%union.mips_instruction = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@EMULATE_FAIL = common dso_local global i32 0, align 4
@kvm_mips_callbacks = common dso_local global %struct.TYPE_8__* null, align 8
@KVM_INVALID_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"[%#lx] OP_SW: eaddr: %#lx, gpr: %#lx, data: %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"[%#lx] OP_SH: eaddr: %#lx, gpr: %#lx, data: %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"[%#lx] OP_SB: eaddr: %#lx, gpr: %#lx, data: %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Store not yet supported (inst=0x%08x)\0A\00", align 1
@EMULATE_DO_MMIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emulate_store(i64 %0, i32 %1, i64 %2, %struct.kvm_run* %3, %struct.kvm_vcpu* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.mips_instruction, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kvm_run*, align 8
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = bitcast %union.mips_instruction* %7 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  store i64 %0, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  store i32 %1, i32* %17, align 8
  store i64 %2, i64* %8, align 8
  store %struct.kvm_run* %3, %struct.kvm_run** %9, align 8
  store %struct.kvm_vcpu* %4, %struct.kvm_vcpu** %10, align 8
  %18 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  %19 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %13, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %14, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @update_pc(%struct.kvm_vcpu* %26, i64 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @EMULATE_FAIL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %6, align 4
  br label %175

34:                                               ; preds = %5
  %35 = bitcast %union.mips_instruction* %7 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_mips_callbacks, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64 (i32)*, i64 (i32)** %39, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 %40(i32 %44)
  %46 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  %47 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  %50 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @KVM_INVALID_ADDR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  br label %169

56:                                               ; preds = %34
  %57 = bitcast %union.mips_instruction* %7 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %156 [
    i32 128, label %60
    i32 129, label %92
    i32 131, label %124
  ]

60:                                               ; preds = %56
  %61 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  %62 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 4, i32* %63, align 8
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = bitcast i8* %71 to i64*
  store i64 %70, i64* %72, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = bitcast i8* %88 to i64*
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @kvm_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %76, i32 %80, i64 %87, i64 %90)
  br label %160

92:                                               ; preds = %56
  %93 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  %94 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 2, i32* %95, align 8
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = bitcast i8* %103 to i64*
  store i64 %102, i64* %104, align 8
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = bitcast i8* %120 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @kvm_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %108, i32 %112, i64 %119, i64 %122)
  br label %160

124:                                              ; preds = %56
  %125 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  %126 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i32 1, i32* %127, align 8
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* %12, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = bitcast i8* %135 to i64*
  store i64 %134, i64* %136, align 8
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %138 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %142 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %146 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i8*, i8** %13, align 8
  %153 = bitcast i8* %152 to i64*
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @kvm_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %140, i32 %144, i64 %151, i64 %154)
  br label %160

156:                                              ; preds = %56
  %157 = bitcast %union.mips_instruction* %7 to i32*
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @kvm_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  br label %169

160:                                              ; preds = %124, %92, %60
  %161 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  %162 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  store i32 1, i32* %163, align 4
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %165 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %167 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  %168 = load i32, i32* @EMULATE_DO_MMIO, align 4
  store i32 %168, i32* %6, align 4
  br label %175

169:                                              ; preds = %156, %55
  %170 = load i64, i64* %14, align 8
  %171 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %172 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  store i64 %170, i64* %173, align 8
  %174 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %169, %160, %32
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @update_pc(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_debug(i8*, i64, i32, i64, i64) #1

declare dso_local i32 @kvm_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
