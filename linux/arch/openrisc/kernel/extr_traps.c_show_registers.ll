; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_traps.c_show_registers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_traps.c_show_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i64, i32, i32*, i64, i32 }

@.str = private unnamed_addr constant [50 x i8] c"CPU #: %d\0A   PC: %08lx    SR: %08lx    SP: %08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"GPR00: %08lx GPR01: %08lx GPR02: %08lx GPR03: %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"GPR04: %08lx GPR05: %08lx GPR06: %08lx GPR07: %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"GPR08: %08lx GPR09: %08lx GPR10: %08lx GPR11: %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"GPR12: %08lx GPR13: %08lx GPR14: %08lx GPR15: %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"GPR16: %08lx GPR17: %08lx GPR18: %08lx GPR19: %08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"GPR20: %08lx GPR21: %08lx GPR22: %08lx GPR23: %08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"GPR24: %08lx GPR25: %08lx GPR26: %08lx GPR27: %08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"GPR28: %08lx GPR29: %08lx GPR30: %08lx GPR31: %08lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"  RES: %08lx oGPR11: %08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Process %s (pid: %d, stackpage=%08lx)\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"\0AStack: \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"\0ACode: \00", align 1
@PAGE_OFFSET = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c" Bad PC value.\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"(%02x) \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_registers(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i32 1, i32* %4, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %11 = call i64 @user_mode(%struct.pt_regs* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = call i32 (...) @smp_processor_id()
  %16 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18, i32 %21, i64 %24)
  %26 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 0, i32 %30, i32 %35, i32 %40)
  %42 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %51, i32 %56, i32 %61)
  %63 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 9
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 10
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %79 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 11
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %72, i32 %77, i32 %82)
  %84 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %85 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 12
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %90 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 13
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 14
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %100 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 15
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %88, i32 %93, i32 %98, i32 %103)
  %105 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %106 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 16
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 17
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %116 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 18
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %121 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 19
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %109, i32 %114, i32 %119, i32 %124)
  %126 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %127 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 20
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 21
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %137 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 22
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %142 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 23
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %130, i32 %135, i32 %140, i32 %145)
  %147 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %148 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 24
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %153 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 25
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %158 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 26
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %163 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 27
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %151, i32 %156, i32 %161, i32 %166)
  %168 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %169 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 28
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %174 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 29
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %179 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 30
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %184 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 31
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %172, i32 %177, i32 %182, i32 %187)
  %189 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %190 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 11
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %195 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %193, i32 %196)
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %205 = ptrtoint %struct.TYPE_2__* %204 to i64
  %206 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %200, i32 %203, i64 %205)
  %207 = load i32, i32* %4, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %255

209:                                              ; preds = %14
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %211 = load i64, i64* %5, align 8
  %212 = inttoptr i64 %211 to i64*
  %213 = call i32 @show_stack(i32* null, i64* %212)
  %214 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %215 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %216 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @PAGE_OFFSET, align 8
  %219 = icmp slt i64 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %209
  br label %237

221:                                              ; preds = %209
  store i32 -24, i32* %3, align 4
  br label %222

222:                                              ; preds = %251, %221
  %223 = load i32, i32* %3, align 4
  %224 = icmp slt i32 %223, 24
  br i1 %224, label %225, label %254

225:                                              ; preds = %222
  %226 = load i8, i8* %6, align 1
  %227 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %228 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i8*
  %231 = load i32, i32* %3, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = call i64 @__get_user(i8 zeroext %226, i8* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %225
  br label %237

237:                                              ; preds = %236, %220
  %238 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %254

239:                                              ; preds = %225
  %240 = load i32, i32* %3, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load i8, i8* %6, align 1
  %244 = zext i8 %243 to i32
  %245 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %244)
  br label %250

246:                                              ; preds = %239
  %247 = load i8, i8* %6, align 1
  %248 = zext i8 %247 to i32
  %249 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %246, %242
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %3, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %3, align 4
  br label %222

254:                                              ; preds = %237, %222
  br label %255

255:                                              ; preds = %254, %14
  %256 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @show_stack(i32*, i64*) #1

declare dso_local i64 @__get_user(i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
