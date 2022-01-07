; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c___show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c___show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i64*, i64 }

@KERN_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"$%2d   :\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" %0*lx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %*s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MIPS_ISA_REV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Hi    : %0*lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Lo    : %0*lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"epc   : %0*lx %pS\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ra    : %0*lx %pS\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Status: %08x\09\00", align 1
@cpu_has_3kex = common dso_local global i64 0, align 8
@ST0_KUO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"KUo \00", align 1
@ST0_IEO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"IEo \00", align 1
@ST0_KUP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"KUp \00", align 1
@ST0_IEP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"IEp \00", align 1
@ST0_KUC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"KUc \00", align 1
@ST0_IEC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"IEc \00", align 1
@cpu_has_4kex = common dso_local global i64 0, align 8
@ST0_KX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"KX \00", align 1
@ST0_SX = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"SX \00", align 1
@ST0_UX = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"UX \00", align 1
@ST0_KSU = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"USER \00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"SUPERVISOR \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"KERNEL \00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"BAD_MODE \00", align 1
@ST0_ERL = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"ERL \00", align 1
@ST0_EXL = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"EXL \00", align 1
@ST0_IE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"IE \00", align 1
@CAUSEF_EXCCODE = common dso_local global i32 0, align 4
@CAUSEB_EXCCODE = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [29 x i8] c"Cause : %08x (ExcCode %02x)\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"BadVA : %0*lx\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"PrId  : %08x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @__show_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i32 16, i32* %3, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @KERN_DEFAULT, align 4
  %11 = call i32 @show_regs_print_info(i32 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %53, %1
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = srem i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 16, i64 0)
  br label %45

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 26
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 27
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %27
  %34 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %44

35:                                               ; preds = %30
  %36 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 6
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 16, i64 %42)
  br label %44

44:                                               ; preds = %35, %33
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = srem i32 %48, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  br label %12

54:                                               ; preds = %12
  %55 = load i32, i32* @MIPS_ISA_REV, align 4
  %56 = icmp slt i32 %55, 6
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 16, i32 %60)
  %62 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 16, i32 %64)
  br label %66

66:                                               ; preds = %57, %54
  %67 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 16, i64 %69, i8* %73)
  %75 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %76 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %75, i32 0, i32 6
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 31
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %80, i32 0, i32 6
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 31
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 16, i64 %79, i8* %85)
  %87 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %89)
  %91 = load i64, i64* @cpu_has_3kex, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %148

93:                                               ; preds = %66
  %94 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ST0_KUO, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %93
  %103 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %104 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ST0_IEO, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %102
  %112 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %113 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ST0_KUP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %111
  %121 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ST0_IEP, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %120
  %130 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %131 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ST0_KUC, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %129
  %139 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %140 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ST0_IEC, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %138
  br label %221

148:                                              ; preds = %66
  %149 = load i64, i64* @cpu_has_4kex, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %220

151:                                              ; preds = %148
  %152 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %153 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @ST0_KX, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %151
  %161 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %162 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ST0_SX, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %160
  %170 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %171 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ST0_UX, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %169
  %179 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %180 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @ST0_KSU, align 4
  %183 = and i32 %181, %182
  switch i32 %183, label %190 [
    i32 128, label %184
    i32 129, label %186
    i32 130, label %188
  ]

184:                                              ; preds = %178
  %185 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %192

186:                                              ; preds = %178
  %187 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  br label %192

188:                                              ; preds = %178
  %189 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  br label %192

190:                                              ; preds = %178
  %191 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %188, %186, %184
  %193 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %194 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @ST0_ERL, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %192
  %202 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %203 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @ST0_EXL, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %201
  %211 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %212 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @ST0_IE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  %218 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %210
  br label %220

220:                                              ; preds = %219, %148
  br label %221

221:                                              ; preds = %220, %147
  %222 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* @CAUSEF_EXCCODE, align 4
  %225 = and i32 %223, %224
  %226 = load i32, i32* @CAUSEB_EXCCODE, align 4
  %227 = lshr i32 %225, %226
  store i32 %227, i32* %5, align 4
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* %5, align 4
  %230 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 %228, i32 %229)
  %231 = load i32, i32* %5, align 4
  %232 = icmp ule i32 1, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %221
  %234 = load i32, i32* %5, align 4
  %235 = icmp ule i32 %234, 5
  br i1 %235, label %236, label %241

236:                                              ; preds = %233
  %237 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %238 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 16, i32 %239)
  br label %241

241:                                              ; preds = %236, %233, %221
  %242 = call i32 (...) @read_c0_prid()
  %243 = call i32 (...) @cpu_name_string()
  %244 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), i32 %242, i32 %243)
  ret void
}

declare dso_local i32 @show_regs_print_info(i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @read_c0_prid(...) #1

declare dso_local i32 @cpu_name_string(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
