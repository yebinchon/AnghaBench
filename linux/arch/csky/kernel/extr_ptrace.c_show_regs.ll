; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_ptrace.c_show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_ptrace.c_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { i64*, i64, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"\0ACURRENT PROCESS:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"COMM=%s PID=%d\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"TEXT=%08x-%08x DATA=%08x-%08x BSS=%08x-%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"USER-STACK=%08x  KERNEL-STACK=%08x\0A\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"PC: 0x%08lx (%pS)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"LR: 0x%08lx (%pS)\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"SP: 0x%08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"orig_a0: 0x%08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"PSR: 0x%08lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c" a0: 0x%08lx   a1: 0x%08lx   a2: 0x%08lx   a3: 0x%08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c" r6: 0x%08lx   r7: 0x%08lx   r8: 0x%08lx   r9: 0x%08lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"r10: 0x%08lx  r11: 0x%08lx  r12: 0x%08lx  r13: 0x%08lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"r14: 0x%08lx   r1: 0x%08lx  r15: 0x%08lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\0ACODE:\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\0A%08x: \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"\0AKERNEL STACK:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %70

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
  %55 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %30, i32 %36, i32 %42, i32 %48, i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %63 = ptrtoint %struct.TYPE_4__* %62 to i64
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = mul nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = add i64 %63, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %68)
  br label %70

70:                                               ; preds = %18, %1
  %71 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %73, i8* %77)
  %79 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %81, i8* %85)
  %87 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %88 = ptrtoint %struct.pt_regs* %87 to i64
  %89 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64 %88)
  %90 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %91 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  %94 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 11
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 %96)
  %98 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %102 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %105 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %108 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %100, i32 %103, i32 %106, i32 %109)
  %111 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %112 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %127 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 3
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i64 %115, i64 %120, i64 %125, i64 %130)
  %132 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %133 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 4
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %138 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 5
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %143 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 6
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %148 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 7
  %151 = load i64, i64* %150, align 8
  %152 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i64 %136, i64 %141, i64 %146, i64 %151)
  %153 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %154 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 8
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %159 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 9
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %164 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64 %157, i64 %162, i64 %165)
  %167 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %168 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %169 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = getelementptr inbounds i8, i8* %171, i64 -32
  store i8* %172, i8** %4, align 8
  %173 = load i8*, i8** %4, align 8
  %174 = ptrtoint i8* %173 to i32
  %175 = srem i32 %174, 4
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 2, i32 0
  %179 = load i8*, i8** %4, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %4, align 8
  %182 = load i8*, i8** %4, align 8
  %183 = bitcast i8* %182 to i64*
  store i64* %183, i64** %3, align 8
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %204, %70
  %185 = load i32, i32* %5, align 4
  %186 = icmp slt i32 %185, 64
  br i1 %186, label %187, label %207

187:                                              ; preds = %184
  %188 = load i32, i32* %5, align 4
  %189 = srem i32 %188, 16
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %187
  %192 = load i8*, i8** %4, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = ptrtoint i8* %195 to i32
  %197 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %191, %187
  %199 = load i64*, i64** %3, align 8
  %200 = getelementptr inbounds i64, i64* %199, i32 1
  store i64* %200, i64** %3, align 8
  %201 = load i64, i64* %199, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %198
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, 4
  store i32 %206, i32* %5, align 4
  br label %184

207:                                              ; preds = %184
  %208 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %209 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %210 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %211 = bitcast %struct.pt_regs* %210 to i8*
  %212 = getelementptr inbounds i8, i8* %211, i64 -64
  store i8* %212, i8** %4, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = bitcast i8* %213 to i64*
  store i64* %214, i64** %3, align 8
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %235, %207
  %216 = load i32, i32* %5, align 4
  %217 = icmp slt i32 %216, 192
  br i1 %217, label %218, label %238

218:                                              ; preds = %215
  %219 = load i32, i32* %5, align 4
  %220 = srem i32 %219, 16
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %218
  %223 = load i8*, i8** %4, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = ptrtoint i8* %226 to i32
  %228 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %222, %218
  %230 = load i64*, i64** %3, align 8
  %231 = getelementptr inbounds i64, i64* %230, i32 1
  store i64* %231, i64** %3, align 8
  %232 = load i64, i64* %230, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %229
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 4
  store i32 %237, i32* %5, align 4
  br label %215

238:                                              ; preds = %215
  %239 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %240 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %241 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %240, i32 0, i32 0
  %242 = load i64*, i64** %241, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 4
  %244 = load i64, i64* %243, align 8
  %245 = inttoptr i64 %244 to i64*
  %246 = call i32 @show_stack(i32* null, i64* %245)
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @show_stack(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
