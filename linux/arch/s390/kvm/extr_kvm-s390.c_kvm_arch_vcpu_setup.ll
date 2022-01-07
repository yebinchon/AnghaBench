; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64, i64 }
%struct.kvm_vcpu = type { %struct.TYPE_15__, %struct.TYPE_16__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_18__ }
%struct.TYPE_14__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@CPUSTAT_ZARCH = common dso_local global i32 0, align 4
@CPUSTAT_SM = common dso_local global i32 0, align 4
@CPUSTAT_STOPPED = common dso_local global i32 0, align 4
@CPUSTAT_GED2 = common dso_local global i32 0, align 4
@CPUSTAT_GED = common dso_local global i32 0, align 4
@MACHINE_HAS_ESOP = common dso_local global i64 0, align 8
@ECB_HOSTPROTINT = common dso_local global i32 0, align 4
@ECB_SRSI = common dso_local global i32 0, align 4
@ECB_TE = common dso_local global i32 0, align 4
@ECB2_PFMFI = common dso_local global i32 0, align 4
@ECB2_IEP = common dso_local global i32 0, align 4
@ECA_MVPGI = common dso_local global i32 0, align 4
@ECA_PROTEXCI = common dso_local global i32 0, align 4
@sclp = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@ECA_CEI = common dso_local global i32 0, align 4
@ECA_IB = common dso_local global i32 0, align 4
@ECA_SII = common dso_local global i32 0, align 4
@ECA_SIGPI = common dso_local global i32 0, align 4
@ECA_VX = common dso_local global i32 0, align 4
@ECD_HOSTREGMGMT = common dso_local global i32 0, align 4
@ECD_MEF = common dso_local global i32 0, align 4
@ECD_ETOKENF = common dso_local global i32 0, align 4
@ECA_AIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"AIV gisa format-%u enabled for cpu %03u\00", align 1
@SDNXC = common dso_local global i64 0, align 8
@CPUSTAT_KSS = common dso_local global i32 0, align 4
@ICTL_ISKE = common dso_local global i32 0, align 4
@ICTL_SSKE = common dso_local global i32 0, align 4
@ICTL_RRBE = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@kvm_s390_idle_wakeup = common dso_local global i32 0, align 4
@HPID_KVM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_setup(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 9
  %10 = load i32, i32* @CPUSTAT_ZARCH, align 4
  %11 = load i32, i32* @CPUSTAT_SM, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CPUSTAT_STOPPED, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @atomic_set(i32* %9, i32 %14)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = call i64 @test_kvm_facility(%struct.TYPE_16__* %18, i32 78)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load i32, i32* @CPUSTAT_GED2, align 4
  %24 = call i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu* %22, i32 %23)
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = call i64 @test_kvm_facility(%struct.TYPE_16__* %28, i32 8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = load i32, i32* @CPUSTAT_GED, align 4
  %34 = call i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = call i32 @kvm_s390_vcpu_setup_model(%struct.kvm_vcpu* %37)
  %39 = load i64, i64* @MACHINE_HAS_ESOP, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* @ECB_HOSTPROTINT, align 4
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %42
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = call i64 @test_kvm_facility(%struct.TYPE_16__* %53, i32 9)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i32, i32* @ECB_SRSI, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %57
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %56, %50
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = call i64 @test_kvm_facility(%struct.TYPE_16__* %68, i32 73)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i32, i32* @ECB_TE, align 4
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %72
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %71, %65
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = call i64 @test_kvm_facility(%struct.TYPE_16__* %83, i32 8)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load i32, i32* @ECB2_PFMFI, align 4
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %95
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %94, %86, %80
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %105 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %104, i32 0, i32 1
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = call i64 @test_kvm_facility(%struct.TYPE_16__* %106, i32 130)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load i32, i32* @ECB2_IEP, align 4
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %110
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %109, %103
  %119 = load i32, i32* @ECA_MVPGI, align 4
  %120 = load i32, i32* @ECA_PROTEXCI, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 8
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sclp, i32 0, i32 4), align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %118
  %130 = load i32, i32* @ECA_CEI, align 4
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %130
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %129, %118
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sclp, i32 0, i32 3), align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i32, i32* @ECA_IB, align 4
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %144 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %142
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %141, %138
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sclp, i32 0, i32 2), align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i32, i32* @ECA_SII, align 4
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %156 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %154
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %153, %150
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sclp, i32 0, i32 1), align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i32, i32* @ECA_SIGPI, align 4
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %168 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %166
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %165, %162
  %175 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %176 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %175, i32 0, i32 1
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = call i64 @test_kvm_facility(%struct.TYPE_16__* %177, i32 129)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %174
  %181 = load i32, i32* @ECA_VX, align 4
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %183 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %181
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* @ECD_HOSTREGMGMT, align 4
  %190 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %191 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %189
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %180, %174
  %198 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %199 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %198, i32 0, i32 1
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = call i64 @test_kvm_facility(%struct.TYPE_16__* %200, i32 139)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %197
  %204 = load i32, i32* @ECD_MEF, align 4
  %205 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %206 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %204
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %203, %197
  %213 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %214 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %213, i32 0, i32 1
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = call i64 @test_kvm_facility(%struct.TYPE_16__* %215, i32 156)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %212
  %219 = load i32, i32* @ECD_ETOKENF, align 4
  %220 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %221 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %219
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %218, %212
  %228 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %229 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %256

235:                                              ; preds = %227
  %236 = load i32, i32* @ECA_AIV, align 4
  %237 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %238 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %236
  store i32 %243, i32* %241, align 8
  %244 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %245 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %246 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, 3
  %252 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %253 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %244, i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %251, i32 %254)
  br label %256

256:                                              ; preds = %235, %227
  %257 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %258 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %257, i32 0, i32 2
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = ptrtoint i32* %262 to i64
  %264 = load i64, i64* @SDNXC, align 8
  %265 = or i64 %263, %264
  %266 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %267 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 2
  store i64 %265, i64* %270, align 8
  %271 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %272 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %271, i32 0, i32 2
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = ptrtoint i32* %276 to i64
  %278 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %279 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 3
  store i64 %277, i64* %282, align 8
  %283 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sclp, i32 0, i32 0), align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %256
  %286 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %287 = load i32, i32* @CPUSTAT_KSS, align 4
  %288 = call i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu* %286, i32 %287)
  br label %302

289:                                              ; preds = %256
  %290 = load i32, i32* @ICTL_ISKE, align 4
  %291 = load i32, i32* @ICTL_SSKE, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @ICTL_RRBE, align 4
  %294 = or i32 %292, %293
  %295 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %296 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %294
  store i32 %301, i32* %299, align 8
  br label %302

302:                                              ; preds = %289, %285
  %303 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %304 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %303, i32 0, i32 1
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %302
  %311 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %312 = call i32 @kvm_s390_vcpu_setup_cmma(%struct.kvm_vcpu* %311)
  store i32 %312, i32* %4, align 4
  %313 = load i32, i32* %4, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load i32, i32* %4, align 4
  store i32 %316, i32* %2, align 4
  br label %339

317:                                              ; preds = %310
  br label %318

318:                                              ; preds = %317, %302
  %319 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %320 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 1
  %322 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %323 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %324 = call i32 @hrtimer_init(%struct.TYPE_18__* %321, i32 %322, i32 %323)
  %325 = load i32, i32* @kvm_s390_idle_wakeup, align 4
  %326 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %327 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 0
  store i32 %325, i32* %329, align 8
  %330 = load i32, i32* @HPID_KVM, align 4
  %331 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %332 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 5
  store i32 %330, i32* %335, align 4
  %336 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %337 = call i32 @kvm_s390_vcpu_crypto_setup(%struct.kvm_vcpu* %336)
  %338 = load i32, i32* %4, align 4
  store i32 %338, i32* %2, align 4
  br label %339

339:                                              ; preds = %318, %315
  %340 = load i32, i32* %2, align 4
  ret i32 %340
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @test_kvm_facility(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_vcpu_setup_model(%struct.kvm_vcpu*) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, i32) #1

declare dso_local i32 @kvm_s390_vcpu_setup_cmma(%struct.kvm_vcpu*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @kvm_s390_vcpu_crypto_setup(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
