; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_credit_entropy_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_credit_entropy_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENTROPY_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"random: negative entropy/overflow: pool %s count %d\0A\00", align 1
@blocking_pool = common dso_local global %struct.entropy_store zeroinitializer, align 8
@random_read_wait = common dso_local global i32 0, align 4
@fasync = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@input_pool = common dso_local global %struct.entropy_store zeroinitializer, align 8
@crng_init = common dso_local global i32 0, align 4
@primary_crng = common dso_local global i32 0, align 4
@random_read_wakeup_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entropy_store*, i32)* @credit_entropy_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @credit_entropy_bits(%struct.entropy_store* %0, i32 %1) #0 {
  %3 = alloca %struct.entropy_store*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.entropy_store*, align 8
  store %struct.entropy_store* %0, %struct.entropy_store** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %17 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ENTROPY_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %220

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %124, %27
  %29 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %30 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @READ_ONCE(i32 %31)
  store i32 %32, i32* %6, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %82

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %42 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ENTROPY_SHIFT, align 4
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %76, %39
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sdiv i32 %51, 2
  %53 = call i32 @min(i32 %50, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = mul i32 %56, %57
  %59 = mul i32 %58, 3
  %60 = load i32, i32* %11, align 4
  %61 = lshr i32 %59, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 2
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %73, %68
  %77 = phi i1 [ false, %68 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %49, label %81

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %35
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %90 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %5, align 4
  br label %102

95:                                               ; preds = %82
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %95
  br label %102

102:                                              ; preds = %101, %88
  %103 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %104 = icmp eq %struct.entropy_store* %103, @blocking_pool
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %107 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @ENTROPY_SHIFT, align 4
  %113 = ashr i32 %111, %112
  %114 = icmp sgt i32 %113, 128
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 1, i32* %7, align 4
  br label %116

116:                                              ; preds = %115, %110, %105, %102
  %117 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %118 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %117, i32 0, i32 0
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @cmpxchg(i32* %118, i32 %119, i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %28

125:                                              ; preds = %116
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %130 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = call i32 @wake_up_interruptible(i32* @random_read_wait)
  %132 = load i32, i32* @SIGIO, align 4
  %133 = load i32, i32* @POLL_IN, align 4
  %134 = call i32 @kill_fasync(i32* @fasync, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %125
  %136 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %137 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @ENTROPY_SHIFT, align 4
  %142 = ashr i32 %140, %141
  %143 = load i32, i32* @_RET_IP_, align 4
  %144 = call i32 @trace_credit_entropy_bits(i32 %138, i32 %139, i32 %142, i32 %143)
  %145 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %146 = icmp eq %struct.entropy_store* %145, @input_pool
  br i1 %146, label %147, label %220

147:                                              ; preds = %135
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @ENTROPY_SHIFT, align 4
  %150 = ashr i32 %148, %149
  store i32 %150, i32* %14, align 4
  store %struct.entropy_store* @blocking_pool, %struct.entropy_store** %15, align 8
  %151 = load i32, i32* @crng_init, align 4
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %153, label %165

153:                                              ; preds = %147
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %154, 128
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %220

157:                                              ; preds = %153
  %158 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %159 = call i32 @crng_reseed(i32* @primary_crng, %struct.entropy_store* %158)
  %160 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %161 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ENTROPY_SHIFT, align 4
  %164 = ashr i32 %162, %163
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %157, %147
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @random_read_wakeup_bits, align 4
  %168 = icmp sge i32 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = load %struct.entropy_store*, %struct.entropy_store** %15, align 8
  %171 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = load %struct.entropy_store*, %struct.entropy_store** %15, align 8
  %176 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %175, i32 0, i32 2
  %177 = call i32 @schedule_work(i32* %176)
  br label %220

178:                                              ; preds = %169, %165
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* @random_read_wakeup_bits, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = call i64 @wq_has_sleeper(i32* @random_read_wait)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = call i32 @wake_up_interruptible(i32* @random_read_wait)
  %187 = load i32, i32* @SIGIO, align 4
  %188 = load i32, i32* @POLL_IN, align 4
  %189 = call i32 @kill_fasync(i32* @fasync, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %182, %178
  %191 = load %struct.entropy_store*, %struct.entropy_store** %15, align 8
  %192 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %191, i32 0, i32 2
  %193 = call i32 @work_pending(i32* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %219, label %195

195:                                              ; preds = %190
  %196 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %197 = call i32 @ENTROPY_BITS(%struct.entropy_store* %196)
  %198 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %199 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %198, i32 0, i32 3
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 6, %202
  %204 = icmp sgt i32 %197, %203
  br i1 %204, label %205, label %219

205:                                              ; preds = %195
  %206 = load %struct.entropy_store*, %struct.entropy_store** %15, align 8
  %207 = call i32 @ENTROPY_BITS(%struct.entropy_store* %206)
  %208 = load %struct.entropy_store*, %struct.entropy_store** %15, align 8
  %209 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %208, i32 0, i32 3
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 6, %212
  %214 = icmp sle i32 %207, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %205
  %216 = load %struct.entropy_store*, %struct.entropy_store** %15, align 8
  %217 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %216, i32 0, i32 2
  %218 = call i32 @schedule_work(i32* %217)
  br label %219

219:                                              ; preds = %215, %205, %195, %190
  br label %220

220:                                              ; preds = %26, %156, %174, %219, %135
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @trace_credit_entropy_bits(i32, i32, i32, i32) #1

declare dso_local i32 @crng_reseed(i32*, %struct.entropy_store*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @wq_has_sleeper(i32*) #1

declare dso_local i32 @work_pending(i32*) #1

declare dso_local i32 @ENTROPY_BITS(%struct.entropy_store*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
