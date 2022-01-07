; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_unwind_next_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_unwind_next_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_entry = type { i32, i64, i32, i32, i64, i32 }
%struct.unwind_state = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_2__, %struct.pt_regs*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64 }

@orc_fp_entry = common dso_local global %struct.orc_entry zeroinitializer, align 8
@.str = private unnamed_addr constant [41 x i8] c"missing regs for base reg R10 at ip %pB\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"missing regs for base reg R13 at ip %pB\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"missing regs for base reg DI at ip %pB\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"missing regs for base reg DX at ip %pB\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"unknown SP base reg %d for ip %pB\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"can't dereference registers at %p for ip %pB\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"can't dereference iret registers at %p for ip %pB\0A\00", align 1
@IRET_FRAME_OFFSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"unknown .orc_unwind entry type %d for ip %pB\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"unknown BP base reg %d for ip %pB\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"stack going in the wrong direction? ip=%pB\0A\00", align 1
@STACK_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unwind_next_frame(%struct.unwind_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.unwind_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.orc_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.unwind_state* %0, %struct.unwind_state** %3, align 8
  %11 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %12 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %15 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %18 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %22 = call i64 @unwind_done(%struct.unwind_state* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %412

25:                                               ; preds = %1
  %26 = call i32 (...) @preempt_disable()
  %27 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %28 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %27, i32 0, i32 7
  %29 = load %struct.pt_regs*, %struct.pt_regs** %28, align 8
  %30 = icmp ne %struct.pt_regs* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %33 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %32, i32 0, i32 7
  %34 = load %struct.pt_regs*, %struct.pt_regs** %33, align 8
  %35 = call i64 @user_mode(%struct.pt_regs* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %406

38:                                               ; preds = %31, %25
  %39 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %40 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %45 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  br label %52

47:                                               ; preds = %38
  %48 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %49 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, 1
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i64 [ %46, %43 ], [ %51, %47 ]
  %54 = trunc i64 %53 to i32
  %55 = call %struct.orc_entry* @orc_find(i32 %54)
  store %struct.orc_entry* %55, %struct.orc_entry** %9, align 8
  %56 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %57 = icmp ne %struct.orc_entry* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  store %struct.orc_entry* @orc_fp_entry, %struct.orc_entry** %9, align 8
  %59 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %60 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %63 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 131
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %68 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %403

72:                                               ; preds = %66
  br label %406

73:                                               ; preds = %61
  %74 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %75 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %197 [
    i32 133, label %77
    i32 140, label %85
    i32 132, label %93
    i32 139, label %101
    i32 135, label %109
    i32 134, label %131
    i32 138, label %153
    i32 137, label %175
  ]

77:                                               ; preds = %73
  %78 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %79 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %82 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %80, %83
  store i64 %84, i64* %5, align 8
  br label %208

85:                                               ; preds = %73
  %86 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %87 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %90 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  store i64 %92, i64* %5, align 8
  br label %208

93:                                               ; preds = %73
  %94 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %95 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %98 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %96, %99
  store i64 %100, i64* %5, align 8
  store i32 1, i32* %10, align 4
  br label %208

101:                                              ; preds = %73
  %102 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %103 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %106 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  store i64 %108, i64* %5, align 8
  store i32 1, i32* %10, align 4
  br label %208

109:                                              ; preds = %73
  %110 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %111 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %110, i32 0, i32 7
  %112 = load %struct.pt_regs*, %struct.pt_regs** %111, align 8
  %113 = icmp ne %struct.pt_regs* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %116 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %121 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 (i8*, i8*, ...) @orc_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %123)
  br label %403

125:                                              ; preds = %114
  %126 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %127 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %126, i32 0, i32 7
  %128 = load %struct.pt_regs*, %struct.pt_regs** %127, align 8
  %129 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %5, align 8
  br label %208

131:                                              ; preds = %73
  %132 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %133 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %132, i32 0, i32 7
  %134 = load %struct.pt_regs*, %struct.pt_regs** %133, align 8
  %135 = icmp ne %struct.pt_regs* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %138 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %136, %131
  %142 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %143 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 (i8*, i8*, ...) @orc_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %145)
  br label %403

147:                                              ; preds = %136
  %148 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %149 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %148, i32 0, i32 7
  %150 = load %struct.pt_regs*, %struct.pt_regs** %149, align 8
  %151 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %5, align 8
  br label %208

153:                                              ; preds = %73
  %154 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %155 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %154, i32 0, i32 7
  %156 = load %struct.pt_regs*, %struct.pt_regs** %155, align 8
  %157 = icmp ne %struct.pt_regs* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %160 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %158, %153
  %164 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %165 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 (i8*, i8*, ...) @orc_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %167)
  br label %403

169:                                              ; preds = %158
  %170 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %171 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %170, i32 0, i32 7
  %172 = load %struct.pt_regs*, %struct.pt_regs** %171, align 8
  %173 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %5, align 8
  br label %208

175:                                              ; preds = %73
  %176 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %177 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %176, i32 0, i32 7
  %178 = load %struct.pt_regs*, %struct.pt_regs** %177, align 8
  %179 = icmp ne %struct.pt_regs* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %182 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %180, %175
  %186 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %187 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to i8*
  %190 = call i32 (i8*, i8*, ...) @orc_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %189)
  br label %403

191:                                              ; preds = %180
  %192 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %193 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %192, i32 0, i32 7
  %194 = load %struct.pt_regs*, %struct.pt_regs** %193, align 8
  %195 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %5, align 8
  br label %208

197:                                              ; preds = %73
  %198 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %199 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to i8*
  %203 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %204 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i8*
  %207 = call i32 (i8*, i8*, ...) @orc_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %202, i8* %206)
  br label %403

208:                                              ; preds = %191, %169, %147, %125, %101, %93, %85, %77
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %213 = load i64, i64* %5, align 8
  %214 = call i32 @deref_stack_reg(%struct.unwind_state* %212, i64 %213, i64* %5)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  br label %403

217:                                              ; preds = %211
  br label %218

218:                                              ; preds = %217, %208
  %219 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %220 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  switch i32 %221, label %306 [
    i32 130, label %222
    i32 129, label %253
    i32 128, label %277
  ]

222:                                              ; preds = %218
  %223 = load i64, i64* %5, align 8
  %224 = sub i64 %223, 8
  store i64 %224, i64* %4, align 8
  %225 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %226 = load i64, i64* %4, align 8
  %227 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %228 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %227, i32 0, i32 0
  %229 = call i32 @deref_stack_reg(%struct.unwind_state* %225, i64 %226, i64* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %222
  br label %403

232:                                              ; preds = %222
  %233 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %234 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %237 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %236, i32 0, i32 8
  %238 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %239 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %4, align 8
  %242 = inttoptr i64 %241 to i8*
  %243 = call i64 @ftrace_graph_ret_addr(i32 %235, i32* %237, i64 %240, i8* %242)
  %244 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %245 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %244, i32 0, i32 0
  store i64 %243, i64* %245, align 8
  %246 = load i64, i64* %5, align 8
  %247 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %248 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %247, i32 0, i32 1
  store i64 %246, i64* %248, align 8
  %249 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %250 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %249, i32 0, i32 7
  store %struct.pt_regs* null, %struct.pt_regs** %250, align 8
  %251 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %252 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %251, i32 0, i32 2
  store i32 0, i32* %252, align 8
  br label %315

253:                                              ; preds = %218
  %254 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %255 = load i64, i64* %5, align 8
  %256 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %257 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %256, i32 0, i32 0
  %258 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %259 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %258, i32 0, i32 1
  %260 = call i32 @deref_stack_regs(%struct.unwind_state* %254, i64 %255, i64* %257, i64* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %253
  %263 = load i64, i64* %5, align 8
  %264 = inttoptr i64 %263 to i8*
  %265 = load i64, i64* %6, align 8
  %266 = inttoptr i64 %265 to i8*
  %267 = call i32 (i8*, i8*, ...) @orc_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %264, i8* %266)
  br label %403

268:                                              ; preds = %253
  %269 = load i64, i64* %5, align 8
  %270 = inttoptr i64 %269 to %struct.pt_regs*
  %271 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %272 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %271, i32 0, i32 7
  store %struct.pt_regs* %270, %struct.pt_regs** %272, align 8
  %273 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %274 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %273, i32 0, i32 5
  store i32 1, i32* %274, align 8
  %275 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %276 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %275, i32 0, i32 2
  store i32 1, i32* %276, align 8
  br label %315

277:                                              ; preds = %218
  %278 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %279 = load i64, i64* %5, align 8
  %280 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %281 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %280, i32 0, i32 0
  %282 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %283 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %282, i32 0, i32 1
  %284 = call i32 @deref_stack_iret_regs(%struct.unwind_state* %278, i64 %279, i64* %281, i64* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %292, label %286

286:                                              ; preds = %277
  %287 = load i64, i64* %5, align 8
  %288 = inttoptr i64 %287 to i8*
  %289 = load i64, i64* %6, align 8
  %290 = inttoptr i64 %289 to i8*
  %291 = call i32 (i8*, i8*, ...) @orc_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %288, i8* %290)
  br label %403

292:                                              ; preds = %277
  %293 = load i64, i64* %5, align 8
  %294 = inttoptr i64 %293 to i8*
  %295 = load i32, i32* @IRET_FRAME_OFFSET, align 4
  %296 = sext i32 %295 to i64
  %297 = sub i64 0, %296
  %298 = getelementptr i8, i8* %294, i64 %297
  %299 = bitcast i8* %298 to %struct.pt_regs*
  %300 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %301 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %300, i32 0, i32 7
  store %struct.pt_regs* %299, %struct.pt_regs** %301, align 8
  %302 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %303 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %302, i32 0, i32 5
  store i32 0, i32* %303, align 8
  %304 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %305 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %304, i32 0, i32 2
  store i32 1, i32* %305, align 8
  br label %315

306:                                              ; preds = %218
  %307 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %308 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = sext i32 %309 to i64
  %311 = inttoptr i64 %310 to i8*
  %312 = load i64, i64* %6, align 8
  %313 = inttoptr i64 %312 to i8*
  %314 = call i32 (i8*, i8*, ...) @orc_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %311, i8* %313)
  br label %315

315:                                              ; preds = %306, %292, %268, %232
  %316 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %317 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  switch i32 %318, label %366 [
    i32 131, label %319
    i32 136, label %338
    i32 140, label %351
  ]

319:                                              ; preds = %315
  %320 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %321 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %320, i32 0, i32 7
  %322 = load %struct.pt_regs*, %struct.pt_regs** %321, align 8
  %323 = icmp ne %struct.pt_regs* %322, null
  br i1 %323, label %324, label %337

324:                                              ; preds = %319
  %325 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %326 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %337

329:                                              ; preds = %324
  %330 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %331 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %330, i32 0, i32 7
  %332 = load %struct.pt_regs*, %struct.pt_regs** %331, align 8
  %333 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %332, i32 0, i32 4
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %336 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %335, i32 0, i32 4
  store i64 %334, i64* %336, align 8
  br label %337

337:                                              ; preds = %329, %324, %319
  br label %375

338:                                              ; preds = %315
  %339 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %340 = load i64, i64* %5, align 8
  %341 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %342 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %341, i32 0, i32 4
  %343 = load i64, i64* %342, align 8
  %344 = add i64 %340, %343
  %345 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %346 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %345, i32 0, i32 4
  %347 = call i32 @deref_stack_reg(%struct.unwind_state* %339, i64 %344, i64* %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %338
  br label %403

350:                                              ; preds = %338
  br label %375

351:                                              ; preds = %315
  %352 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %353 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %354 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %353, i32 0, i32 4
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %357 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %356, i32 0, i32 4
  %358 = load i64, i64* %357, align 8
  %359 = add i64 %355, %358
  %360 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %361 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %360, i32 0, i32 4
  %362 = call i32 @deref_stack_reg(%struct.unwind_state* %352, i64 %359, i64* %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %351
  br label %403

365:                                              ; preds = %351
  br label %375

366:                                              ; preds = %315
  %367 = load %struct.orc_entry*, %struct.orc_entry** %9, align 8
  %368 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = inttoptr i64 %370 to i8*
  %372 = load i64, i64* %6, align 8
  %373 = inttoptr i64 %372 to i8*
  %374 = call i32 (i8*, i8*, ...) @orc_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %371, i8* %373)
  br label %403

375:                                              ; preds = %365, %350, %337
  %376 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %377 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %376, i32 0, i32 6
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %8, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %382, label %401

382:                                              ; preds = %375
  %383 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %384 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %383, i32 0, i32 6
  %385 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %386 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = inttoptr i64 %387 to i8*
  %389 = call i64 @on_stack(%struct.TYPE_2__* %384, i8* %388, i32 8)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %382
  %392 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %393 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* %7, align 8
  %396 = icmp ule i64 %394, %395
  br i1 %396, label %397, label %401

397:                                              ; preds = %391
  %398 = load i64, i64* %6, align 8
  %399 = inttoptr i64 %398 to i8*
  %400 = call i32 (i8*, i8*, ...) @orc_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %399)
  br label %403

401:                                              ; preds = %391, %382, %375
  %402 = call i32 (...) @preempt_enable()
  store i32 1, i32* %2, align 4
  br label %412

403:                                              ; preds = %397, %366, %364, %349, %286, %262, %231, %216, %197, %185, %163, %141, %119, %71
  %404 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %405 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %404, i32 0, i32 3
  store i32 1, i32* %405, align 4
  br label %406

406:                                              ; preds = %403, %72, %37
  %407 = call i32 (...) @preempt_enable()
  %408 = load i32, i32* @STACK_TYPE_UNKNOWN, align 4
  %409 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %410 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %409, i32 0, i32 6
  %411 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %410, i32 0, i32 0
  store i32 %408, i32* %411, align 4
  store i32 0, i32* %2, align 4
  br label %412

412:                                              ; preds = %406, %401, %24
  %413 = load i32, i32* %2, align 4
  ret i32 %413
}

declare dso_local i64 @unwind_done(%struct.unwind_state*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local %struct.orc_entry* @orc_find(i32) #1

declare dso_local i32 @orc_warn(i8*, i8*, ...) #1

declare dso_local i32 @deref_stack_reg(%struct.unwind_state*, i64, i64*) #1

declare dso_local i64 @ftrace_graph_ret_addr(i32, i32*, i64, i8*) #1

declare dso_local i32 @deref_stack_regs(%struct.unwind_state*, i64, i64*, i64*) #1

declare dso_local i32 @deref_stack_iret_regs(%struct.unwind_state*, i64, i64*, i64*) #1

declare dso_local i64 @on_stack(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
