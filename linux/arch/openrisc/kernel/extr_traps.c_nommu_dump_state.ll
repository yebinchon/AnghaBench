; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_traps.c_nommu_dump_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_traps.c_nommu_dump_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i32, i32*, i32 }
%struct.task_struct = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"\0A\0D[nommu_dump_state] :: ea %lx, vector %lx\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"CPU #: %d\0A   PC: %08lx    SR: %08lx    SP: %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"GPR00: %08lx GPR01: %08lx GPR02: %08lx GPR03: %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"GPR04: %08lx GPR05: %08lx GPR06: %08lx GPR07: %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"GPR08: %08lx GPR09: %08lx GPR10: %08lx GPR11: %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"GPR12: %08lx GPR13: %08lx GPR14: %08lx GPR15: %08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"GPR16: %08lx GPR17: %08lx GPR18: %08lx GPR19: %08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"GPR20: %08lx GPR21: %08lx GPR22: %08lx GPR23: %08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"GPR24: %08lx GPR25: %08lx GPR26: %08lx GPR27: %08lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"GPR28: %08lx GPR29: %08lx GPR30: %08lx GPR31: %08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"  RES: %08lx oGPR11: %08lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Process %s (pid: %d, stackpage=%08lx)\0A\00", align 1
@current = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"\0AStack: \00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Stack dump [0x%08lx]:\0A\00", align 1
@kstack_depth_to_print = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"%lx :: sp + %02d: 0x%08lx\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Call Trace:   \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c" [<%08lx>]\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"\0ACode: \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"(%02x) \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nommu_dump_state(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %15)
  %17 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 0, i64 %19, i32 %22, i64 %25)
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 0, i32 %31, i32 %36, i32 %41)
  %43 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %52, i32 %57, i32 %62)
  %64 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %70 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 9
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 10
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 11
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %68, i32 %73, i32 %78, i32 %83)
  %85 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 12
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %91 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 13
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %96 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 14
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %101 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 15
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32 %94, i32 %99, i32 %104)
  %106 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %107 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 16
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %112 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 17
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 18
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 19
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %115, i32 %120, i32 %125)
  %127 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %128 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 20
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %133 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 21
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %138 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 22
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %143 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 23
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %131, i32 %136, i32 %141, i32 %146)
  %148 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %149 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 24
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %154 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 25
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %159 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 26
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %164 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 27
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %152, i32 %157, i32 %162, i32 %167)
  %169 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %170 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 28
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %175 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 29
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %180 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 30
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %185 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 31
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %173, i32 %178, i32 %183, i32 %188)
  %190 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %191 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 11
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %196 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %194, i32 %197)
  %199 = load i64, i64* @current, align 8
  %200 = call i64 @__pa(i64 %199)
  %201 = inttoptr i64 %200 to %struct.task_struct*
  %202 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i64, i64* @current, align 8
  %205 = call i64 @__pa(i64 %204)
  %206 = inttoptr i64 %205 to %struct.task_struct*
  %207 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i64, i64* @current, align 8
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %203, i32 %208, i64 %209)
  %211 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %212 = load i64, i64* %9, align 8
  %213 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i64 %212)
  store i32 0, i32* %7, align 4
  br label %214

214:                                              ; preds = %237, %3
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @kstack_depth_to_print, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %240

218:                                              ; preds = %214
  %219 = load i64, i64* %9, align 8
  %220 = load i32, i32* @THREAD_SIZE, align 4
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = and i64 %219, %222
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %240

226:                                              ; preds = %218
  %227 = load i64, i64* %9, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %9, align 8
  %229 = load i64, i64* %9, align 8
  %230 = load i32, i32* %7, align 4
  %231 = mul nsw i32 %230, 4
  %232 = load i64, i64* %9, align 8
  %233 = call i64 @__pa(i64 %232)
  %234 = inttoptr i64 %233 to i64*
  %235 = load i64, i64* %234, align 8
  %236 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i64 %229, i32 %231, i64 %235)
  br label %237

237:                                              ; preds = %226
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %7, align 4
  br label %214

240:                                              ; preds = %225, %214
  %241 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %242 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %243

243:                                              ; preds = %274, %240
  %244 = load i64, i64* %9, align 8
  %245 = load i32, i32* @THREAD_SIZE, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = and i64 %244, %247
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %275

250:                                              ; preds = %243
  %251 = load i64, i64* %9, align 8
  %252 = call i64 @__pa(i64 %251)
  %253 = inttoptr i64 %252 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %8, align 8
  %255 = load i64, i64* %9, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %9, align 8
  %257 = load i64, i64* %8, align 8
  %258 = call i64 @kernel_text_address(i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %274

260:                                              ; preds = %250
  %261 = load i32, i32* %7, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %260
  %264 = load i32, i32* %7, align 4
  %265 = srem i32 %264, 6
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %263, %260
  %270 = load i64, i64* %8, align 8
  %271 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 %270)
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %7, align 4
  br label %274

274:                                              ; preds = %269, %250
  br label %243

275:                                              ; preds = %243
  %276 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %277 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  store i32 -24, i32* %7, align 4
  br label %278

278:                                              ; preds = %302, %275
  %279 = load i32, i32* %7, align 4
  %280 = icmp slt i32 %279, 24
  br i1 %280, label %281, label %305

281:                                              ; preds = %278
  %282 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %283 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = call i64 @__pa(i64 %284)
  %286 = inttoptr i64 %285 to i8*
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  %290 = load i8, i8* %289, align 1
  store i8 %290, i8* %10, align 1
  %291 = load i32, i32* %7, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %281
  %294 = load i8, i8* %10, align 1
  %295 = zext i8 %294 to i32
  %296 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %295)
  br label %301

297:                                              ; preds = %281
  %298 = load i8, i8* %10, align 1
  %299 = zext i8 %298 to i32
  %300 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %299)
  br label %301

301:                                              ; preds = %297, %293
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %7, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %7, align 4
  br label %278

305:                                              ; preds = %278
  %306 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i64 @kernel_text_address(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
