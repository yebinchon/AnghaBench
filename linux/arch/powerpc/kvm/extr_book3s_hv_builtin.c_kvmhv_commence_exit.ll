; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvmhv_commence_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvmhv_commence_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.kvmppc_vcore*, %struct.kvm_split_mode* }
%struct.kvmppc_vcore = type { i32, i32 }
%struct.kvm_split_mode = type { i32, i64*, i64, %struct.kvmppc_vcore** }

@local_paca = common dso_local global %struct.TYPE_4__* null, align 8
@BOOK3S_INTERRUPT_HV_DECREMENTER = common dso_local global i32 0, align 4
@MAX_SUBCORES = common dso_local global i32 0, align 4
@VCORE_EXIT_REQ = common dso_local global i32 0, align 4
@threads_per_core = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmhv_commence_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvmppc_vcore*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_split_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %13, align 8
  store %struct.kvmppc_vcore* %14, %struct.kvmppc_vcore** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load %struct.kvm_split_mode*, %struct.kvm_split_mode** %21, align 8
  store %struct.kvm_split_mode* %22, %struct.kvm_split_mode** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 256, %23
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %29, %1
  %26 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %27 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25
  %30 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %31 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @cmpxchg(i32* %31, i32 %32, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %25, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %157

44:                                               ; preds = %39
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @BOOK3S_INTERRUPT_HV_DECREMENTER, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %50, %53
  %55 = call i32 @kvmhv_interrupt_vcore(%struct.kvmppc_vcore* %49, i32 %54)
  br label %56

56:                                               ; preds = %48, %44
  %57 = load %struct.kvm_split_mode*, %struct.kvm_split_mode** %5, align 8
  %58 = icmp ne %struct.kvm_split_mode* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %157

60:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %105, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MAX_SUBCORES, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %108

65:                                               ; preds = %61
  %66 = load %struct.kvm_split_mode*, %struct.kvm_split_mode** %5, align 8
  %67 = getelementptr inbounds %struct.kvm_split_mode, %struct.kvm_split_mode* %66, i32 0, i32 3
  %68 = load %struct.kvmppc_vcore**, %struct.kvmppc_vcore*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %68, i64 %70
  %72 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %71, align 8
  store %struct.kvmppc_vcore* %72, %struct.kvmppc_vcore** %3, align 8
  %73 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %74 = icmp ne %struct.kvmppc_vcore* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %108

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %86, %76
  %78 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %79 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = ashr i32 %81, 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %96

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %88 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %87, i32 0, i32 0
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @VCORE_EXIT_REQ, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @cmpxchg(i32* %88, i32 %89, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %77, label %96

96:                                               ; preds = %86, %84
  %97 = load i32, i32* %7, align 4
  %98 = ashr i32 %97, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @kvmhv_interrupt_vcore(%struct.kvmppc_vcore* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %96
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %61

108:                                              ; preds = %75, %61
  %109 = load %struct.kvm_split_mode*, %struct.kvm_split_mode** %5, align 8
  %110 = getelementptr inbounds %struct.kvm_split_mode, %struct.kvm_split_mode* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %157

113:                                              ; preds = %108
  %114 = load %struct.kvm_split_mode*, %struct.kvm_split_mode** %5, align 8
  %115 = getelementptr inbounds %struct.kvm_split_mode, %struct.kvm_split_mode* %114, i32 0, i32 0
  %116 = call i32 @cmpxchg(i32* %115, i32 0, i32 1)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %156

118:                                              ; preds = %113
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %121, align 8
  store %struct.kvmppc_vcore* %122, %struct.kvmppc_vcore** %3, align 8
  %123 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %124 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %127, %131
  store i32 %132, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %133

133:                                              ; preds = %152, %118
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @threads_per_core, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %133
  %138 = load %struct.kvm_split_mode*, %struct.kvm_split_mode** %5, align 8
  %139 = getelementptr inbounds %struct.kvm_split_mode, %struct.kvm_split_mode* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @kvmhv_rm_send_ipi(i32 %149)
  br label %151

151:                                              ; preds = %146, %137
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %133

155:                                              ; preds = %133
  br label %156

156:                                              ; preds = %155, %113
  br label %157

157:                                              ; preds = %43, %59, %156, %108
  ret void
}

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @kvmhv_interrupt_vcore(%struct.kvmppc_vcore*, i32) #1

declare dso_local i32 @kvmhv_rm_send_ipi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
