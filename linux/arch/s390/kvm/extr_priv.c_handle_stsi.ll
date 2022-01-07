; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_stsi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_stsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_18__*, %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"STSI: fc: %u sel1: %u sel2: %u\00", align 1
@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_stsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_stsi(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, -268435456
  %21 = lshr i32 %20, 28
  store i32 %21, i32* %4, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %5, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 65535
  store i32 %41, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %47, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %1
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = load i32, i32* @PGM_PRIVILEGED_OP, align 4
  %65 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %219

66:                                               ; preds = %1
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 3
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %71 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %70, i32 3)
  store i32 0, i32* %2, align 4
  br label %219

72:                                               ; preds = %66
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 268435200
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %72
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -65536
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84, %72
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %98 = load i32, i32* @PGM_SPECIFICATION, align 4
  %99 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %97, i32 %98)
  store i32 %99, i32* %2, align 4
  br label %219

100:                                              ; preds = %84
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %105 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %104, i32 0, i32 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 805306368, i32* %111, align 4
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %113 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %112, i32 0)
  store i32 0, i32* %2, align 4
  br label %219

114:                                              ; preds = %100
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %116 = call i32 @kvm_s390_get_base_disp_s(%struct.kvm_vcpu* %115, i32* %10)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %117, 4095
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %122 = load i32, i32* @PGM_SPECIFICATION, align 4
  %123 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %121, i32 %122)
  store i32 %123, i32* %2, align 4
  br label %219

124:                                              ; preds = %114
  %125 = load i32, i32* %4, align 4
  switch i32 %125, label %160 [
    i32 1, label %126
    i32 2, label %126
    i32 3, label %142
  ]

126:                                              ; preds = %124, %124
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i64 @get_zeroed_page(i32 %127)
  store i64 %128, i64* %7, align 8
  %129 = load i64, i64* %7, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  br label %212

132:                                              ; preds = %126
  %133 = load i64, i64* %7, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @stsi(i8* %134, i32 %135, i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %212

141:                                              ; preds = %132
  br label %160

142:                                              ; preds = %124
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 2
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 2
  br i1 %147, label %148, label %149

148:                                              ; preds = %145, %142
  br label %212

149:                                              ; preds = %145
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i64 @get_zeroed_page(i32 %150)
  store i64 %151, i64* %7, align 8
  %152 = load i64, i64* %7, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  br label %212

155:                                              ; preds = %149
  %156 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %157 = load i64, i64* %7, align 8
  %158 = inttoptr i64 %157 to i8*
  %159 = call i32 @handle_stsi_3_2_2(%struct.kvm_vcpu* %156, i8* %158)
  br label %160

160:                                              ; preds = %124, %155, %141
  %161 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i64, i64* %7, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = call i32 @write_guest(%struct.kvm_vcpu* %161, i32 %162, i32 %163, i8* %165, i32 %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %160
  %171 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu* %171, i32 %172)
  store i32 %173, i32* %9, align 4
  br label %215

174:                                              ; preds = %160
  %175 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %176 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %175, i32 0, i32 1
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %174
  %183 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @insert_stsi_usr_data(%struct.kvm_vcpu* %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* @EREMOTE, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %182, %174
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @trace_kvm_s390_handle_stsi(%struct.kvm_vcpu* %193, i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i64, i64* %7, align 8
  %200 = call i32 @free_page(i64 %199)
  %201 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %202 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %201, i32 0)
  %203 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %204 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %203, i32 0, i32 0
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 0, i32* %210, align 4
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %2, align 4
  br label %219

212:                                              ; preds = %154, %148, %140, %131
  %213 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %214 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %213, i32 3)
  br label %215

215:                                              ; preds = %212, %170
  %216 = load i64, i64* %7, align 8
  %217 = call i32 @free_page(i64 %216)
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %215, %192, %120, %103, %96, %69, %62
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_get_base_disp_s(%struct.kvm_vcpu*, i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @stsi(i8*, i32, i32, i32) #1

declare dso_local i32 @handle_stsi_3_2_2(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @write_guest(%struct.kvm_vcpu*, i32, i32, i8*, i32) #1

declare dso_local i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @insert_stsi_usr_data(%struct.kvm_vcpu*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @trace_kvm_s390_handle_stsi(%struct.kvm_vcpu*, i32, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
