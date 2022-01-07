; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvmppc_st.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvmppc_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.kvm_vcpu*, i32*, i8*, i32)* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.kvmppc_pte = type { i32, i32, i32 }

@KVM_PAM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@XLATE_DATA = common dso_local global i32 0, align 4
@XLATE_INST = common dso_local global i32 0, align 4
@XLATE_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULATE_DO_MMIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_st(%struct.kvm_vcpu* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kvmppc_pte, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @KVM_PAM, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @PAGE_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %5
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32 (%struct.kvm_vcpu*, i32*, i8*, i32)*, i32 (%struct.kvm_vcpu*, i32*, i8*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.kvm_vcpu*, i32*, i8*, i32)* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %38
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32 (%struct.kvm_vcpu*, i32*, i8*, i32)*, i32 (%struct.kvm_vcpu*, i32*, i8*, i32)** %55, align 8
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 %56(%struct.kvm_vcpu* %57, i32* %58, i8* %59, i32 %60)
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %48, %38, %5
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %6, align 4
  br label %152

72:                                               ; preds = %65
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @XLATE_DATA, align 4
  br label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @XLATE_INST, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load i32, i32* @XLATE_WRITE, align 4
  %85 = call i32 @kvmppc_xlate(%struct.kvm_vcpu* %73, i32 %75, i32 %83, i32 %84, %struct.kvmppc_pte* %13)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %6, align 4
  br label %152

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %13, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @EPERM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %152

100:                                              ; preds = %90
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %102 = call i64 @kvmppc_supports_magic_page(%struct.kvm_vcpu* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %13, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @KVM_PAM, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @PAGE_MASK, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %107
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %118 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %117)
  %119 = load i32, i32* @MSR_PR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %116
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %124 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %15, align 8
  %127 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %13, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 4095
  %130 = load i8*, i8** %15, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr i8, i8* %130, i64 %131
  store i8* %132, i8** %15, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @memcpy(i8* %133, i8* %134, i32 %135)
  %137 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %137, i32* %6, align 4
  br label %152

138:                                              ; preds = %116, %107, %104, %100
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %13, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i8*, i8** %10, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i64 @kvm_write_guest(%struct.TYPE_10__* %141, i32 %143, i8* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i32, i32* @EMULATE_DO_MMIO, align 4
  store i32 %149, i32* %6, align 4
  br label %152

150:                                              ; preds = %138
  %151 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %150, %148, %122, %97, %88, %70
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i32 @kvmppc_xlate(%struct.kvm_vcpu*, i32, i32, i32, %struct.kvmppc_pte*) #1

declare dso_local i64 @kvmppc_supports_magic_page(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @kvm_write_guest(%struct.TYPE_10__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
