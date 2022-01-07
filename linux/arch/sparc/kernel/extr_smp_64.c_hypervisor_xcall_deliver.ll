; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_hypervisor_xcall_deliver.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_hypervisor_xcall_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trap_per_cpu = type { i32, i32 }

@MONDO_USEC_WAIT_MIN = common dso_local global i32 0, align 4
@MONDO_USEC_WAIT_MAX = common dso_local global i32 0, align 4
@HV_EOK = common dso_local global i64 0, align 8
@HV_EWOULDBLOCK = common dso_local global i64 0, align 8
@HV_ECPUERROR = common dso_local global i64 0, align 8
@HV_ENOCPU = common dso_local global i64 0, align 8
@HV_CPU_STATE_ERROR = common dso_local global i64 0, align 8
@MONDO_RETRY_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"CPU[%d]: SUN4V mondo cpu error, target cpu(%d) was in error state\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"CPU[%d]: SUN4V mondo cpu error, target cpu(%d) does not belong to the domain\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"CPU[%d]: Args were cnt(%d) cpulist_pa(%lx) mondo_block_pa(%lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Unexpected SUN4V mondo error %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"CPU[%d]: SUN4V mondo timeout, cpu(%d) made no forward progress after %d retries. Total target cpus(%d).\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SUN4V mondo timeout panic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trap_per_cpu*, i32)* @hypervisor_xcall_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hypervisor_xcall_deliver(%struct.trap_per_cpu* %0, i32 %1) #0 {
  %3 = alloca %struct.trap_per_cpu*, align 8
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
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.trap_per_cpu* %0, %struct.trap_per_cpu** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 65535, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = call i32 (...) @smp_processor_id()
  store i32 %23, i32* %5, align 4
  %24 = load %struct.trap_per_cpu*, %struct.trap_per_cpu** %3, align 8
  %25 = getelementptr inbounds %struct.trap_per_cpu, %struct.trap_per_cpu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @__va(i32 %26)
  store i32* %27, i32** %18, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MONDO_USEC_WAIT_MIN, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MONDO_USEC_WAIT_MAX, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @MONDO_USEC_WAIT_MAX, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %34, %2
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %189, %36
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.trap_per_cpu*, %struct.trap_per_cpu** %3, align 8
  %41 = getelementptr inbounds %struct.trap_per_cpu, %struct.trap_per_cpu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.trap_per_cpu*, %struct.trap_per_cpu** %3, align 8
  %44 = getelementptr inbounds %struct.trap_per_cpu, %struct.trap_per_cpu* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @sun4v_cpu_mondo_send(i32 %39, i32 %42, i32 %45)
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @HV_EOK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %191

54:                                               ; preds = %38
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @HV_EWOULDBLOCK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* @HV_ECPUERROR, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @HV_ENOCPU, align 8
  %65 = icmp ne i64 %63, %64
  br label %66

66:                                               ; preds = %62, %58, %54
  %67 = phi i1 [ false, %58 ], [ false, %54 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %215

72:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %124, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %127

77:                                               ; preds = %73
  %78 = load i32*, i32** %18, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp eq i32 %83, 65535
  %85 = zext i1 %84 to i32
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* %20, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %20, align 4
  br label %123

91:                                               ; preds = %77
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* @HV_ECPUERROR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* %19, align 4
  %97 = call i64 @sun4v_cpu_state(i32 %96)
  %98 = load i64, i64* @HV_CPU_STATE_ERROR, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %122

103:                                              ; preds = %95, %91
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @HV_ENOCPU, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @cpu_online(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  br label %121

114:                                              ; preds = %107, %103
  %115 = load i32, i32* %19, align 4
  %116 = load i32*, i32** %18, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %114, %111
  br label %122

122:                                              ; preds = %121, %100
  br label %123

123:                                              ; preds = %122, %88
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %73

127:                                              ; preds = %73
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %190

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32*, i32** %18, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32*, i32** %18, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i64 @CPU_MONDO_COUNTER(i32 %142)
  store i64 %143, i64* %14, align 8
  br label %144

144:                                              ; preds = %138, %131
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp sgt i32 %145, %146
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* %20, align 4
  store i32 %149, i32* %7, align 4
  %150 = load i64, i64* %14, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i64 @CPU_MONDO_COUNTER(i32 %151)
  %153 = icmp ult i64 %150, %152
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %22, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i64 @CPU_MONDO_COUNTER(i32 %155)
  store i64 %156, i64* %14, align 8
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %144
  %160 = load i32, i32* %22, align 4
  %161 = icmp ne i32 %160, 0
  br label %162

162:                                              ; preds = %159, %144
  %163 = phi i1 [ true, %144 ], [ %161, %159 ]
  %164 = zext i1 %163 to i32
  %165 = call i64 @likely(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %180

171:                                              ; preds = %162
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @MONDO_RETRY_LIMIT, align 4
  %174 = icmp sgt i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %227

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %167
  %181 = load i32, i32* %21, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @udelay(i32 %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %189

189:                                              ; preds = %186
  br i1 true, label %38, label %190

190:                                              ; preds = %189, %130
  br label %191

191:                                              ; preds = %190, %53
  %192 = load i32, i32* %16, align 4
  %193 = icmp sgt i32 %192, 0
  %194 = zext i1 %193 to i32
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* %16, align 4
  %200 = sub nsw i32 %199, 1
  %201 = call i32 (i8*, i32, i32, ...) @pr_crit(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %198, i32 %200)
  br label %214

202:                                              ; preds = %191
  %203 = load i32, i32* %17, align 4
  %204 = icmp sgt i32 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i64 @unlikely(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* %17, align 4
  %211 = sub nsw i32 %210, 1
  %212 = call i32 (i8*, i32, i32, ...) @pr_crit(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %209, i32 %211)
  br label %213

213:                                              ; preds = %208, %202
  br label %214

214:                                              ; preds = %213, %197
  br label %236

215:                                              ; preds = %71
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load %struct.trap_per_cpu*, %struct.trap_per_cpu** %3, align 8
  %219 = getelementptr inbounds %struct.trap_per_cpu, %struct.trap_per_cpu* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.trap_per_cpu*, %struct.trap_per_cpu** %3, align 8
  %222 = getelementptr inbounds %struct.trap_per_cpu, %struct.trap_per_cpu* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, i32, i32, ...) @pr_crit(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %216, i32 %217, i32 %220, i32 %223)
  %225 = load i64, i64* %15, align 8
  %226 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %225)
  br label %227

227:                                              ; preds = %215, %178
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32, i32* %6, align 4
  %234 = call i32 (i8*, i32, i32, ...) @pr_crit(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 %228, i32 %229, i32 %232, i32 %233)
  %235 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %236

236:                                              ; preds = %227, %214
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32* @__va(i32) #1

declare dso_local i64 @sun4v_cpu_mondo_send(i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sun4v_cpu_state(i32) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i64 @CPU_MONDO_COUNTER(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_crit(i8*, i32, i32, ...) #1

declare dso_local i32 @panic(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
