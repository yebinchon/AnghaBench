; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_handle_debug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_handle_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.kvm_vcpu = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.debug_reg }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.debug_reg = type { i32, i32, i32 }

@DBSR_IDE = common dso_local global i32 0, align 4
@RESUME_GUEST = common dso_local global i32 0, align 4
@MSR_DE = common dso_local global i32 0, align 4
@DBCR0_IDM = common dso_local global i32 0, align 4
@DBSR_TIE = common dso_local global i32 0, align 4
@ESR_PTR = common dso_local global i32 0, align 4
@DBSR_IAC1 = common dso_local global i32 0, align 4
@DBSR_IAC2 = common dso_local global i32 0, align 4
@DBSR_IAC3 = common dso_local global i32 0, align 4
@DBSR_IAC4 = common dso_local global i32 0, align 4
@KVMPPC_DEBUG_BREAKPOINT = common dso_local global i32 0, align 4
@DBSR_DAC1W = common dso_local global i32 0, align 4
@DBSR_DAC2W = common dso_local global i32 0, align 4
@KVMPPC_DEBUG_WATCH_WRITE = common dso_local global i32 0, align 4
@DBSR_DAC1R = common dso_local global i32 0, align 4
@DBSR_DAC2R = common dso_local global i32 0, align 4
@KVMPPC_DEBUG_WATCH_READ = common dso_local global i32 0, align 4
@RESUME_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_run*, %struct.kvm_vcpu*)* @kvmppc_handle_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_handle_debug(%struct.kvm_run* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.debug_reg*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %4, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store %struct.debug_reg* %10, %struct.debug_reg** %6, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @DBSR_IDE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32, i32* @DBSR_IDE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %32, i32* %3, align 4
  br label %180

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MSR_DE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %37
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DBCR0_IDM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %58 = call i32 @kvmppc_core_queue_debug(%struct.kvm_vcpu* %57)
  br label %59

59:                                               ; preds = %56, %47, %37, %34
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @DBSR_TIE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MSR_DE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %64
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %76 = load i32, i32* @ESR_PTR, align 4
  %77 = call i32 @kvmppc_core_queue_program(%struct.kvm_vcpu* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %64, %59
  %79 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %79, i32* %3, align 4
  br label %180

80:                                               ; preds = %2
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %85 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %94 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @DBSR_IAC1, align 4
  %99 = load i32, i32* @DBSR_IAC2, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @DBSR_IAC3, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @DBSR_IAC4, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %97, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %80
  %108 = load i32, i32* @KVMPPC_DEBUG_BREAKPOINT, align 4
  %109 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %110 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %178

115:                                              ; preds = %80
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @DBSR_DAC1W, align 4
  %118 = load i32, i32* @DBSR_DAC2W, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %115
  %123 = load i32, i32* @KVMPPC_DEBUG_WATCH_WRITE, align 4
  %124 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %125 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %123
  store i32 %129, i32* %127, align 4
  br label %146

130:                                              ; preds = %115
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @DBSR_DAC1R, align 4
  %133 = load i32, i32* @DBSR_DAC2R, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load i32, i32* @KVMPPC_DEBUG_WATCH_READ, align 4
  %139 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %140 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %138
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %137, %130
  br label %146

146:                                              ; preds = %145, %122
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @DBSR_DAC1R, align 4
  %149 = load i32, i32* @DBSR_DAC1W, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %146
  %154 = load %struct.debug_reg*, %struct.debug_reg** %6, align 8
  %155 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %158 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 4
  br label %177

161:                                              ; preds = %146
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @DBSR_DAC2R, align 4
  %164 = load i32, i32* @DBSR_DAC2W, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %161
  %169 = load %struct.debug_reg*, %struct.debug_reg** %6, align 8
  %170 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %173 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 4
  br label %176

176:                                              ; preds = %168, %161
  br label %177

177:                                              ; preds = %176, %153
  br label %178

178:                                              ; preds = %177, %107
  %179 = load i32, i32* @RESUME_HOST, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %78, %31
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @kvmppc_core_queue_debug(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_core_queue_program(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
