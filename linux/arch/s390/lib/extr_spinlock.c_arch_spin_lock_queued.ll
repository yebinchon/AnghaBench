; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_spinlock.c_arch_spin_lock_queued.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_spinlock.c_arch_spin_lock_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.spin_wait = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__* }

@S390_lowcore = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@SPINLOCK_LOCKVAL = common dso_local global i32 0, align 4
@spin_wait = common dso_local global i32* null, align 8
@_Q_LOCK_CPU_MASK = common dso_local global i32 0, align 4
@_Q_LOCK_STEAL_MASK = common dso_local global i32 0, align 4
@_Q_LOCK_STEAL_ADD = common dso_local global i32 0, align 4
@_Q_LOCK_MASK = common dso_local global i32 0, align 4
@_Q_TAIL_MASK = common dso_local global i32 0, align 4
@spin_retry = common dso_local global i32 0, align 4
@MACHINE_IS_LPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @arch_spin_lock_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arch_spin_lock_queued(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.spin_wait*, align 8
  %4 = alloca %struct.spin_wait*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @S390_lowcore, i32 0, i32 0), align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @S390_lowcore, i32 0, i32 0), align 4
  store i32 %13, i32* %6, align 4
  %15 = call i32 (...) @barrier()
  %16 = load i32, i32* @SPINLOCK_LOCKVAL, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** @spin_wait, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call %struct.spin_wait* @this_cpu_ptr(i32* %20)
  store %struct.spin_wait* %21, %struct.spin_wait** %3, align 8
  %22 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %23 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %22, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %23, align 8
  %24 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %25 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %24, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %27 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %1, %64, %78
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call %struct.spin_wait* @READ_ONCE(%struct.TYPE_8__* %32)
  %34 = ptrtoint %struct.spin_wait* %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @_Q_LOCK_CPU_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @_Q_LOCK_STEAL_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @_Q_LOCK_STEAL_MASK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @_Q_LOCK_STEAL_ADD, align 4
  %51 = add nsw i32 %49, %50
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ %51, %48 ], [ 0, %52 ]
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @__atomic_cmpxchg_bool(%struct.TYPE_8__** %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %219

64:                                               ; preds = %53
  br label %29

65:                                               ; preds = %39, %29
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @_Q_LOCK_MASK, align 4
  %69 = and i32 %67, %68
  %70 = or i32 %66, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @__atomic_cmpxchg_bool(%struct.TYPE_8__** %72, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %79

78:                                               ; preds = %65
  br label %29

79:                                               ; preds = %77
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @_Q_TAIL_MASK, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  %87 = call %struct.TYPE_8__* @arch_spin_decode_tail(i32 %86)
  %88 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %89 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %88, i32 0, i32 1
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %89, align 8
  %90 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %91 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %96 = call i32 @WRITE_ONCE(i32 %94, %struct.spin_wait* %95)
  br label %97

97:                                               ; preds = %85, %79
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %100 = call i32 @arch_spin_yield_target(i32 %98, %struct.spin_wait* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %104, 1
  %106 = call i64 @arch_vcpu_is_preempted(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @smp_yield_cpu(i32 %110)
  br label %112

112:                                              ; preds = %108, %103, %97
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %112
  %116 = load i32, i32* @spin_retry, align 4
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %144, %127, %115
  %118 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %119 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = call %struct.spin_wait* @READ_ONCE(%struct.TYPE_8__* %120)
  %122 = icmp ne %struct.spin_wait* %121, null
  br i1 %122, label %123, label %145

123:                                              ; preds = %117
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %12, align 4
  %126 = icmp sge i32 %124, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %117

128:                                              ; preds = %123
  %129 = load i32, i32* @spin_retry, align 4
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %132 = call i32 @arch_spin_yield_target(i32 %130, %struct.spin_wait* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %136, 1
  %138 = call i64 @arch_vcpu_is_preempted(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 %141, 1
  %143 = call i32 @smp_yield_cpu(i32 %142)
  br label %144

144:                                              ; preds = %140, %135, %128
  br label %117

145:                                              ; preds = %117
  br label %146

146:                                              ; preds = %145, %112
  %147 = load i32, i32* @spin_retry, align 4
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %146, %180, %185, %199
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = call %struct.spin_wait* @READ_ONCE(%struct.TYPE_8__* %151)
  %153 = ptrtoint %struct.spin_wait* %152 to i32
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @_Q_LOCK_CPU_MASK, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %181, label %159

159:                                              ; preds = %148
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @_Q_TAIL_MASK, align 4
  %162 = and i32 %160, %161
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* %8, align 4
  br label %169

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i32 [ %167, %166 ], [ 0, %168 ]
  %171 = load i32, i32* %5, align 4
  %172 = or i32 %170, %171
  store i32 %172, i32* %10, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i64 @__atomic_cmpxchg_bool(%struct.TYPE_8__** %174, i32 %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %200

180:                                              ; preds = %169
  br label %148

181:                                              ; preds = %148
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %12, align 4
  %184 = icmp sge i32 %182, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %148

186:                                              ; preds = %181
  %187 = load i32, i32* @spin_retry, align 4
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* @MACHINE_IS_LPAR, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i32, i32* %11, align 4
  %192 = sub nsw i32 %191, 1
  %193 = call i64 @arch_vcpu_is_preempted(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190, %186
  %196 = load i32, i32* %11, align 4
  %197 = sub nsw i32 %196, 1
  %198 = call i32 @smp_yield_cpu(i32 %197)
  br label %199

199:                                              ; preds = %195, %190
  br label %148

200:                                              ; preds = %179
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %200
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  br label %208

208:                                              ; preds = %214, %207
  %209 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %210 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %209, i32 0, i32 2
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = call %struct.spin_wait* @READ_ONCE(%struct.TYPE_8__* %211)
  store %struct.spin_wait* %212, %struct.spin_wait** %4, align 8
  %213 = icmp eq %struct.spin_wait* %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %208

215:                                              ; preds = %208
  %216 = load %struct.spin_wait*, %struct.spin_wait** %4, align 8
  %217 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %216, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %217, align 8
  br label %218

218:                                              ; preds = %215, %203, %200
  br label %219

219:                                              ; preds = %218, %63
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @S390_lowcore, i32 0, i32 0), align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @S390_lowcore, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @barrier(...) #1

declare dso_local %struct.spin_wait* @this_cpu_ptr(i32*) #1

declare dso_local %struct.spin_wait* @READ_ONCE(%struct.TYPE_8__*) #1

declare dso_local i64 @__atomic_cmpxchg_bool(%struct.TYPE_8__**, i32, i32) #1

declare dso_local %struct.TYPE_8__* @arch_spin_decode_tail(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, %struct.spin_wait*) #1

declare dso_local i32 @arch_spin_yield_target(i32, %struct.spin_wait*) #1

declare dso_local i64 @arch_vcpu_is_preempted(i32) #1

declare dso_local i32 @smp_yield_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
