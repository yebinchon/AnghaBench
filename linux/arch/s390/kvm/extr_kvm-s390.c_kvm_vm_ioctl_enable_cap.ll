; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_vm_ioctl_enable_cap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_vm_ioctl_enable_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_8__, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.kvm_enable_cap = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ENABLE: CAP_S390_IRQCHIP\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ENABLE: CAP_S390_USER_SIGP\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MACHINE_HAS_VX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"ENABLE: CAP_S390_VECTOR_REGISTERS %s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"(not available)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"(success)\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ENABLE: CAP_S390_RI %s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ENABLE: AIS %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"ENABLE: CAP_S390_GS %s\00", align 1
@hpage = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"ENABLE: CAP_S390_HPAGE %s\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"ENABLE: CAP_S390_USER_STSI\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"ENABLE: CAP_S390_USER_INSTR0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_enable_cap(%struct.kvm* %0, %struct.kvm_enable_cap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_enable_cap*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_enable_cap* %1, %struct.kvm_enable_cap** %5, align 8
  %7 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %8 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %328

14:                                               ; preds = %2
  %15 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %323 [
    i32 133, label %18
    i32 130, label %24
    i32 128, label %30
    i32 132, label %135
    i32 136, label %175
    i32 135, label %209
    i32 134, label %249
    i32 129, label %309
    i32 131, label %315
  ]

18:                                               ; preds = %14
  %19 = load %struct.kvm*, %struct.kvm** %4, align 8
  %20 = call i32 @VM_EVENT(%struct.kvm* %19, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.kvm*, %struct.kvm** %4, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  store i32 0, i32* %6, align 4
  br label %326

24:                                               ; preds = %14
  %25 = load %struct.kvm*, %struct.kvm** %4, align 8
  %26 = call i32 @VM_EVENT(%struct.kvm* %25, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.kvm*, %struct.kvm** %4, align 8
  %28 = getelementptr inbounds %struct.kvm, %struct.kvm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  store i32 0, i32* %6, align 4
  br label %326

30:                                               ; preds = %14
  %31 = load %struct.kvm*, %struct.kvm** %4, align 8
  %32 = getelementptr inbounds %struct.kvm, %struct.kvm* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.kvm*, %struct.kvm** %4, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %125

41:                                               ; preds = %30
  %42 = load i32, i32* @MACHINE_HAS_VX, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %121

44:                                               ; preds = %41
  %45 = load %struct.kvm*, %struct.kvm** %4, align 8
  %46 = getelementptr inbounds %struct.kvm, %struct.kvm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_kvm_facility(i32 %49, i32 129)
  %51 = load %struct.kvm*, %struct.kvm** %4, align 8
  %52 = getelementptr inbounds %struct.kvm, %struct.kvm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_kvm_facility(i32 %55, i32 129)
  %57 = call i32 @test_facility(i32 134)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %44
  %60 = load %struct.kvm*, %struct.kvm** %4, align 8
  %61 = getelementptr inbounds %struct.kvm, %struct.kvm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @set_kvm_facility(i32 %64, i32 134)
  %66 = load %struct.kvm*, %struct.kvm** %4, align 8
  %67 = getelementptr inbounds %struct.kvm, %struct.kvm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @set_kvm_facility(i32 %70, i32 134)
  br label %72

72:                                               ; preds = %59, %44
  %73 = call i32 @test_facility(i32 135)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.kvm*, %struct.kvm** %4, align 8
  %77 = getelementptr inbounds %struct.kvm, %struct.kvm* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @set_kvm_facility(i32 %80, i32 135)
  %82 = load %struct.kvm*, %struct.kvm** %4, align 8
  %83 = getelementptr inbounds %struct.kvm, %struct.kvm* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @set_kvm_facility(i32 %86, i32 135)
  br label %88

88:                                               ; preds = %75, %72
  %89 = call i32 @test_facility(i32 148)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.kvm*, %struct.kvm** %4, align 8
  %93 = getelementptr inbounds %struct.kvm, %struct.kvm* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @set_kvm_facility(i32 %96, i32 148)
  %98 = load %struct.kvm*, %struct.kvm** %4, align 8
  %99 = getelementptr inbounds %struct.kvm, %struct.kvm* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @set_kvm_facility(i32 %102, i32 148)
  br label %104

104:                                              ; preds = %91, %88
  %105 = call i32 @test_facility(i32 152)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load %struct.kvm*, %struct.kvm** %4, align 8
  %109 = getelementptr inbounds %struct.kvm, %struct.kvm* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @set_kvm_facility(i32 %112, i32 152)
  %114 = load %struct.kvm*, %struct.kvm** %4, align 8
  %115 = getelementptr inbounds %struct.kvm, %struct.kvm* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @set_kvm_facility(i32 %118, i32 152)
  br label %120

120:                                              ; preds = %107, %104
  store i32 0, i32* %6, align 4
  br label %124

121:                                              ; preds = %41
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %121, %120
  br label %125

125:                                              ; preds = %124, %38
  %126 = load %struct.kvm*, %struct.kvm** %4, align 8
  %127 = getelementptr inbounds %struct.kvm, %struct.kvm* %126, i32 0, i32 1
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load %struct.kvm*, %struct.kvm** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %134 = call i32 @VM_EVENT(%struct.kvm* %129, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %133)
  br label %326

135:                                              ; preds = %14
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  %138 = load %struct.kvm*, %struct.kvm** %4, align 8
  %139 = getelementptr inbounds %struct.kvm, %struct.kvm* %138, i32 0, i32 1
  %140 = call i32 @mutex_lock(i32* %139)
  %141 = load %struct.kvm*, %struct.kvm** %4, align 8
  %142 = getelementptr inbounds %struct.kvm, %struct.kvm* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load i32, i32* @EBUSY, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %6, align 4
  br label %165

148:                                              ; preds = %135
  %149 = call i32 @test_facility(i32 64)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = load %struct.kvm*, %struct.kvm** %4, align 8
  %153 = getelementptr inbounds %struct.kvm, %struct.kvm* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @set_kvm_facility(i32 %156, i32 64)
  %158 = load %struct.kvm*, %struct.kvm** %4, align 8
  %159 = getelementptr inbounds %struct.kvm, %struct.kvm* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @set_kvm_facility(i32 %162, i32 64)
  store i32 0, i32* %6, align 4
  br label %164

164:                                              ; preds = %151, %148
  br label %165

165:                                              ; preds = %164, %145
  %166 = load %struct.kvm*, %struct.kvm** %4, align 8
  %167 = getelementptr inbounds %struct.kvm, %struct.kvm* %166, i32 0, i32 1
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load %struct.kvm*, %struct.kvm** %4, align 8
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %174 = call i32 @VM_EVENT(%struct.kvm* %169, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %173)
  br label %326

175:                                              ; preds = %14
  %176 = load %struct.kvm*, %struct.kvm** %4, align 8
  %177 = getelementptr inbounds %struct.kvm, %struct.kvm* %176, i32 0, i32 1
  %178 = call i32 @mutex_lock(i32* %177)
  %179 = load %struct.kvm*, %struct.kvm** %4, align 8
  %180 = getelementptr inbounds %struct.kvm, %struct.kvm* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load i32, i32* @EBUSY, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %6, align 4
  br label %199

186:                                              ; preds = %175
  %187 = load %struct.kvm*, %struct.kvm** %4, align 8
  %188 = getelementptr inbounds %struct.kvm, %struct.kvm* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @set_kvm_facility(i32 %191, i32 72)
  %193 = load %struct.kvm*, %struct.kvm** %4, align 8
  %194 = getelementptr inbounds %struct.kvm, %struct.kvm* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @set_kvm_facility(i32 %197, i32 72)
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %186, %183
  %200 = load %struct.kvm*, %struct.kvm** %4, align 8
  %201 = getelementptr inbounds %struct.kvm, %struct.kvm* %200, i32 0, i32 1
  %202 = call i32 @mutex_unlock(i32* %201)
  %203 = load %struct.kvm*, %struct.kvm** %4, align 8
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %208 = call i32 @VM_EVENT(%struct.kvm* %203, i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %207)
  br label %326

209:                                              ; preds = %14
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %6, align 4
  %212 = load %struct.kvm*, %struct.kvm** %4, align 8
  %213 = getelementptr inbounds %struct.kvm, %struct.kvm* %212, i32 0, i32 1
  %214 = call i32 @mutex_lock(i32* %213)
  %215 = load %struct.kvm*, %struct.kvm** %4, align 8
  %216 = getelementptr inbounds %struct.kvm, %struct.kvm* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %209
  %220 = load i32, i32* @EBUSY, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %6, align 4
  br label %239

222:                                              ; preds = %209
  %223 = call i32 @test_facility(i32 133)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %222
  %226 = load %struct.kvm*, %struct.kvm** %4, align 8
  %227 = getelementptr inbounds %struct.kvm, %struct.kvm* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 7
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @set_kvm_facility(i32 %230, i32 133)
  %232 = load %struct.kvm*, %struct.kvm** %4, align 8
  %233 = getelementptr inbounds %struct.kvm, %struct.kvm* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 7
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @set_kvm_facility(i32 %236, i32 133)
  store i32 0, i32* %6, align 4
  br label %238

238:                                              ; preds = %225, %222
  br label %239

239:                                              ; preds = %238, %219
  %240 = load %struct.kvm*, %struct.kvm** %4, align 8
  %241 = getelementptr inbounds %struct.kvm, %struct.kvm* %240, i32 0, i32 1
  %242 = call i32 @mutex_unlock(i32* %241)
  %243 = load %struct.kvm*, %struct.kvm** %4, align 8
  %244 = load i32, i32* %6, align 4
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %248 = call i32 @VM_EVENT(%struct.kvm* %243, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %247)
  br label %326

249:                                              ; preds = %14
  %250 = load %struct.kvm*, %struct.kvm** %4, align 8
  %251 = getelementptr inbounds %struct.kvm, %struct.kvm* %250, i32 0, i32 1
  %252 = call i32 @mutex_lock(i32* %251)
  %253 = load %struct.kvm*, %struct.kvm** %4, align 8
  %254 = getelementptr inbounds %struct.kvm, %struct.kvm* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %249
  %258 = load i32, i32* @EBUSY, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %6, align 4
  br label %299

260:                                              ; preds = %249
  %261 = load i32, i32* @hpage, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %260
  %264 = load %struct.kvm*, %struct.kvm** %4, align 8
  %265 = getelementptr inbounds %struct.kvm, %struct.kvm* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %263
  %270 = load %struct.kvm*, %struct.kvm** %4, align 8
  %271 = call i32 @kvm_is_ucontrol(%struct.kvm* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %269, %263, %260
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %6, align 4
  br label %298

276:                                              ; preds = %269
  store i32 0, i32* %6, align 4
  %277 = load %struct.kvm*, %struct.kvm** %4, align 8
  %278 = getelementptr inbounds %struct.kvm, %struct.kvm* %277, i32 0, i32 2
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = call i32 @down_write(i32* %280)
  %282 = load %struct.kvm*, %struct.kvm** %4, align 8
  %283 = getelementptr inbounds %struct.kvm, %struct.kvm* %282, i32 0, i32 2
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  store i32 1, i32* %286, align 4
  %287 = load %struct.kvm*, %struct.kvm** %4, align 8
  %288 = getelementptr inbounds %struct.kvm, %struct.kvm* %287, i32 0, i32 2
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = call i32 @up_write(i32* %290)
  %292 = load %struct.kvm*, %struct.kvm** %4, align 8
  %293 = getelementptr inbounds %struct.kvm, %struct.kvm* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 5
  store i32 0, i32* %294, align 4
  %295 = load %struct.kvm*, %struct.kvm** %4, align 8
  %296 = getelementptr inbounds %struct.kvm, %struct.kvm* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 4
  store i32 0, i32* %297, align 8
  br label %298

298:                                              ; preds = %276, %273
  br label %299

299:                                              ; preds = %298, %257
  %300 = load %struct.kvm*, %struct.kvm** %4, align 8
  %301 = getelementptr inbounds %struct.kvm, %struct.kvm* %300, i32 0, i32 1
  %302 = call i32 @mutex_unlock(i32* %301)
  %303 = load %struct.kvm*, %struct.kvm** %4, align 8
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %308 = call i32 @VM_EVENT(%struct.kvm* %303, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %307)
  br label %326

309:                                              ; preds = %14
  %310 = load %struct.kvm*, %struct.kvm** %4, align 8
  %311 = call i32 @VM_EVENT(%struct.kvm* %310, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %312 = load %struct.kvm*, %struct.kvm** %4, align 8
  %313 = getelementptr inbounds %struct.kvm, %struct.kvm* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 2
  store i32 1, i32* %314, align 8
  store i32 0, i32* %6, align 4
  br label %326

315:                                              ; preds = %14
  %316 = load %struct.kvm*, %struct.kvm** %4, align 8
  %317 = call i32 @VM_EVENT(%struct.kvm* %316, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %318 = load %struct.kvm*, %struct.kvm** %4, align 8
  %319 = getelementptr inbounds %struct.kvm, %struct.kvm* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 3
  store i32 1, i32* %320, align 4
  %321 = load %struct.kvm*, %struct.kvm** %4, align 8
  %322 = call i32 @icpt_operexc_on_all_vcpus(%struct.kvm* %321)
  store i32 0, i32* %6, align 4
  br label %326

323:                                              ; preds = %14
  %324 = load i32, i32* @EINVAL, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %6, align 4
  br label %326

326:                                              ; preds = %323, %315, %309, %299, %239, %199, %165, %125, %24, %18
  %327 = load i32, i32* %6, align 4
  store i32 %327, i32* %3, align 4
  br label %328

328:                                              ; preds = %326, %11
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local i32 @VM_EVENT(%struct.kvm*, i32, i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_kvm_facility(i32, i32) #1

declare dso_local i32 @test_facility(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvm_is_ucontrol(%struct.kvm*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @icpt_operexc_on_all_vcpus(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
