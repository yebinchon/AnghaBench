; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_inject_pending_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_inject_pending_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8
@EXCPT_FAULT = common dso_local global i64 0, align 8
@X86_EFLAGS_RF = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i64 0, align 8
@DR7_GD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @inject_pending_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inject_pending_event(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %16 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %15, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = call i32 %16(%struct.kvm_vcpu* %17)
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %19
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %34, align 8
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = call i32 %35(%struct.kvm_vcpu* %36)
  br label %52

38:                                               ; preds = %26
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %47, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %50 = call i32 %48(%struct.kvm_vcpu* %49)
  br label %51

51:                                               ; preds = %45, %38
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52, %19
  br label %54

54:                                               ; preds = %53, %13
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = call i64 @is_guest_mode(%struct.kvm_vcpu* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.kvm_vcpu*, i32)* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %65, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 %66(%struct.kvm_vcpu* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %269

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %58, %54
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %163

82:                                               ; preds = %75
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @trace_kvm_inj_exception(i64 %87, i32 %92, i32 %97)
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @WARN_ON_ONCE(i32 %103)
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @exception_type(i64 %117)
  %119 = load i64, i64* @EXCPT_FAULT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %82
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %124 = call i32 @kvm_get_rflags(%struct.kvm_vcpu* %123)
  %125 = load i32, i32* @X86_EFLAGS_RF, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @__kvm_set_rflags(%struct.kvm_vcpu* %122, i32 %126)
  br label %128

128:                                              ; preds = %121, %82
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %130 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @DB_VECTOR, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %157

136:                                              ; preds = %128
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %138 = call i32 @kvm_deliver_exception_payload(%struct.kvm_vcpu* %137)
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @DR7_GD, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %136
  %147 = load i32, i32* @DR7_GD, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %150 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %148
  store i32 %153, i32* %151, align 4
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %155 = call i32 @kvm_update_dr7(%struct.kvm_vcpu* %154)
  br label %156

156:                                              ; preds = %146, %136
  br label %157

157:                                              ; preds = %156, %128
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 6
  %160 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %159, align 8
  %161 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %162 = call i32 %160(%struct.kvm_vcpu* %161)
  br label %163

163:                                              ; preds = %157, %75
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %165 = call i64 @kvm_event_needs_reinjection(%struct.kvm_vcpu* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %269

168:                                              ; preds = %163
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %170 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %196

174:                                              ; preds = %168
  %175 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %176 = call i32 @is_smm(%struct.kvm_vcpu* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %196, label %178

178:                                              ; preds = %174
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 5
  %181 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %180, align 8
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %183 = call i64 %181(%struct.kvm_vcpu* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %178
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %187 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  store i32 0, i32* %188, align 8
  %189 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %190 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 8
  %194 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %195 = call i32 @enter_smm(%struct.kvm_vcpu* %194)
  br label %268

196:                                              ; preds = %178, %174, %168
  %197 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %198 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %223

202:                                              ; preds = %196
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 4
  %205 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %204, align 8
  %206 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %207 = call i64 %205(%struct.kvm_vcpu* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %202
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %211 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, -1
  store i64 %214, i64* %212, align 8
  %215 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %216 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  store i32 1, i32* %217, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 3
  %220 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %219, align 8
  %221 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %222 = call i32 %220(%struct.kvm_vcpu* %221)
  br label %267

223:                                              ; preds = %202, %196
  %224 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %225 = call i64 @kvm_cpu_has_injectable_intr(%struct.kvm_vcpu* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %266

227:                                              ; preds = %223
  %228 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %229 = call i64 @is_guest_mode(%struct.kvm_vcpu* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %227
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %233, align 8
  %235 = icmp ne i32 (%struct.kvm_vcpu*, i32)* %234, null
  br i1 %235, label %236, label %248

236:                                              ; preds = %231
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %238, align 8
  %240 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %241 = load i32, i32* %5, align 4
  %242 = call i32 %239(%struct.kvm_vcpu* %240, i32 %241)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %236
  %246 = load i32, i32* %6, align 4
  store i32 %246, i32* %3, align 4
  br label %269

247:                                              ; preds = %236
  br label %248

248:                                              ; preds = %247, %231, %227
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 2
  %251 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %250, align 8
  %252 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %253 = call i64 %251(%struct.kvm_vcpu* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %248
  %256 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %257 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %258 = call i32 @kvm_cpu_get_interrupt(%struct.kvm_vcpu* %257)
  %259 = call i32 @kvm_queue_interrupt(%struct.kvm_vcpu* %256, i32 %258, i32 0)
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %261, align 8
  %263 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %264 = call i32 %262(%struct.kvm_vcpu* %263)
  br label %265

265:                                              ; preds = %255, %248
  br label %266

266:                                              ; preds = %265, %223
  br label %267

267:                                              ; preds = %266, %209
  br label %268

268:                                              ; preds = %267, %185
  store i32 0, i32* %3, align 4
  br label %269

269:                                              ; preds = %268, %245, %167, %72
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i64 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_inj_exception(i64, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @exception_type(i64) #1

declare dso_local i32 @__kvm_set_rflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_get_rflags(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_deliver_exception_payload(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_update_dr7(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_event_needs_reinjection(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_smm(%struct.kvm_vcpu*) #1

declare dso_local i32 @enter_smm(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_cpu_has_injectable_intr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_interrupt(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_cpu_get_interrupt(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
