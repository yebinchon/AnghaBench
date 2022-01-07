; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_process.c___show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_process.c___show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@KERN_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PC is at %pS\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LR is at %pS\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"pc : [<%08lx>]    lr : [<%08lx>]    psr: %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"sp : %08lx  ip : %08lx  fp : %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"r10: %08lx  r9 : %08lx  r8 : %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\0A\00", align 1
@PSR_N_BIT = common dso_local global i64 0, align 8
@PSR_Z_BIT = common dso_local global i64 0, align 8
@PSR_C_BIT = common dso_local global i64 0, align 8
@PSR_V_BIT = common dso_local global i64 0, align 8
@DOMAIN_USER = common dso_local global i32 0, align 4
@DOMAIN_NOACCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@KERNEL_DS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"Flags: %s  IRQs o%s  FIQs o%s  Mode %s  ISA %s  Segment %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@processor_modes = common dso_local global i32* null, align 8
@isa_modes = common dso_local global i32* null, align 8
@DACR_UACCESS_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %8 = call i32 (...) @get_domain()
  store i32 %8, i32* %5, align 4
  %9 = call i32 (...) @get_fs()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @KERN_DEFAULT, align 4
  %11 = call i32 @show_regs_print_info(i32 %10)
  %12 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %13 = call i64 @instruction_pointer(%struct.pt_regs* %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 15
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 16
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 15
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %23, i64 %26, i64 %29)
  %31 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %46, i32 %49)
  %51 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %75)
  %77 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %3, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @PSR_N_BIT, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 78, i32 110
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8 %86, i8* %87, align 16
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* @PSR_Z_BIT, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 90, i32 122
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 1
  store i8 %94, i8* %95, align 1
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* @PSR_C_BIT, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 67, i32 99
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 2
  store i8 %102, i8* %103, align 2
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* @PSR_V_BIT, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 86, i32 118
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 3
  store i8 %110, i8* %111, align 1
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 4
  store i8 0, i8* %112, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @DOMAIN_USER, align 4
  %115 = call i32 @domain_mask(i32 %114)
  %116 = and i32 %113, %115
  %117 = load i32, i32* @DOMAIN_USER, align 4
  %118 = load i32, i32* @DOMAIN_NOACCESS, align 4
  %119 = call i32 @domain_val(i32 %117, i32 %118)
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %129

122:                                              ; preds = %1
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @KERNEL_DS, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %128

127:                                              ; preds = %122
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %128

128:                                              ; preds = %127, %126
  br label %129

129:                                              ; preds = %128, %121
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %131 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %132 = call i64 @interrupts_enabled(%struct.pt_regs* %131)
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %136 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %137 = call i64 @fast_interrupts_enabled(%struct.pt_regs* %136)
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %141 = load i32*, i32** @processor_modes, align 8
  %142 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %143 = call i64 @processor_mode(%struct.pt_regs* %142)
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @isa_modes, align 8
  %147 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %148 = call i64 @isa_mode(%struct.pt_regs* %147)
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i8* %130, i8* %135, i8* %140, i32 %145, i32 %150, i8* %151)
  ret void
}

declare dso_local i32 @get_domain(...) #1

declare dso_local i32 @get_fs(...) #1

declare dso_local i32 @show_regs_print_info(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @domain_mask(i32) #1

declare dso_local i32 @domain_val(i32, i32) #1

declare dso_local i64 @interrupts_enabled(%struct.pt_regs*) #1

declare dso_local i64 @fast_interrupts_enabled(%struct.pt_regs*) #1

declare dso_local i64 @processor_mode(%struct.pt_regs*) #1

declare dso_local i64 @isa_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
