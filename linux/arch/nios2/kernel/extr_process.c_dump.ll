; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_process.c_dump.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_process.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"\0ACURRENT PROCESS:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"COMM=%s PID=%d\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"TEXT=%08x-%08x DATA=%08x-%08x BSS=%08x-%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"USER-STACK=%08x  KERNEL-STACK=%08x\0A\0A\00", align 1
@THREAD_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"PC: %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"SR: %08lx    SP: %08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"r1: %08lx    r2: %08lx    r3: %08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"r4: %08lx    r5: %08lx    r6: %08lx    r7: %08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"r8: %08lx    r9: %08lx    r10: %08lx    r11: %08lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"r12: %08lx  r13: %08lx    r14: %08lx    r15: %08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"or2: %08lx   ra: %08lx     fp: %08lx    sp: %08lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"\0AUSP: %08x   TRAPFRAME: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\0ACODE:\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"\0A%08x: \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"\0AKERNEL STACK:\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"\0AUSER STACK:\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %30, i32 %36, i32 %42, i32 %48, i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %63 = ptrtoint %struct.TYPE_4__* %62 to i64
  %64 = load i64, i64* @THREAD_SIZE, align 8
  %65 = add i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %18, %1
  %69 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %70 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  %73 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 20
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %77 = ptrtoint %struct.pt_regs* %76 to i64
  %78 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %75, i64 %77)
  %79 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 19
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 18
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 17
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %81, i32 %84, i32 %87)
  %89 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %90 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %89, i32 0, i32 16
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 15
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %96 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %95, i32 0, i32 14
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 13
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %91, i32 %94, i32 %97, i32 %100)
  %102 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %106 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %109 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %112 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %104, i32 %107, i32 %110, i32 %113)
  %115 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %116 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %125 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %117, i32 %120, i32 %123, i32 %126)
  %128 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %129 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %135 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %138 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 %130, i32 %133, i32 %136, i64 %139)
  %141 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %142 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %146 = ptrtoint %struct.pt_regs* %145 to i32
  %147 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %144, i32 %146)
  %148 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %149 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %150 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = getelementptr inbounds i8, i8* %152, i64 -32
  store i8* %153, i8** %4, align 8
  %154 = load i8*, i8** %4, align 8
  %155 = bitcast i8* %154 to i64*
  store i64* %155, i64** %3, align 8
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %176, %68
  %157 = load i32, i32* %5, align 4
  %158 = icmp slt i32 %157, 64
  br i1 %158, label %159, label %179

159:                                              ; preds = %156
  %160 = load i32, i32* %5, align 4
  %161 = srem i32 %160, 16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i8*, i8** %4, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = ptrtoint i8* %167 to i32
  %169 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %163, %159
  %171 = load i64*, i64** %3, align 8
  %172 = getelementptr inbounds i64, i64* %171, i32 1
  store i64* %172, i64** %3, align 8
  %173 = load i64, i64* %171, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %170
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 4
  store i32 %178, i32* %5, align 4
  br label %156

179:                                              ; preds = %156
  %180 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %181 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %182 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %183 = bitcast %struct.pt_regs* %182 to i8*
  %184 = getelementptr inbounds i8, i8* %183, i64 -64
  store i8* %184, i8** %4, align 8
  %185 = load i8*, i8** %4, align 8
  %186 = bitcast i8* %185 to i64*
  store i64* %186, i64** %3, align 8
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %207, %179
  %188 = load i32, i32* %5, align 4
  %189 = icmp slt i32 %188, 192
  br i1 %189, label %190, label %210

190:                                              ; preds = %187
  %191 = load i32, i32* %5, align 4
  %192 = srem i32 %191, 16
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i8*, i8** %4, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = ptrtoint i8* %198 to i32
  %200 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %194, %190
  %202 = load i64*, i64** %3, align 8
  %203 = getelementptr inbounds i64, i64* %202, i32 1
  store i64* %203, i64** %3, align 8
  %204 = load i64, i64* %202, align 8
  %205 = trunc i64 %204 to i32
  %206 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %201
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %208, 4
  store i32 %209, i32* %5, align 4
  br label %187

210:                                              ; preds = %187
  %211 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %212 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %213 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %214 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %215 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = sub nsw i64 %216, 16
  %218 = inttoptr i64 %217 to i8*
  store i8* %218, i8** %4, align 8
  %219 = load i8*, i8** %4, align 8
  %220 = bitcast i8* %219 to i64*
  store i64* %220, i64** %3, align 8
  store i32 0, i32* %5, align 4
  br label %221

221:                                              ; preds = %241, %210
  %222 = load i32, i32* %5, align 4
  %223 = icmp slt i32 %222, 128
  br i1 %223, label %224, label %244

224:                                              ; preds = %221
  %225 = load i32, i32* %5, align 4
  %226 = srem i32 %225, 16
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %224
  %229 = load i8*, i8** %4, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = ptrtoint i8* %232 to i32
  %234 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %228, %224
  %236 = load i64*, i64** %3, align 8
  %237 = getelementptr inbounds i64, i64* %236, i32 1
  store i64* %237, i64** %3, align 8
  %238 = load i64, i64* %236, align 8
  %239 = trunc i64 %238 to i32
  %240 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %235
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, 4
  store i32 %243, i32* %5, align 4
  br label %221

244:                                              ; preds = %221
  %245 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_emerg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
