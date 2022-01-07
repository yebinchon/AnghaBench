; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_process.c_show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_process.c_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i8**, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"PC is at %pS\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LP is at %pS\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"pc : [<%08lx>]    lp : [<%08lx>]    %s\0Asp : %08lx  fp : %08lx  gp : %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"r25: %08lx  r24: %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"r23: %08lx  r22: %08lx  r21: %08lx  r20: %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"r19: %08lx  r18: %08lx  r17: %08lx  r16: %08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"r15: %08lx  r14: %08lx  r13: %08lx  r12: %08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"r11: %08lx  r10: %08lx  r9 : %08lx  r8 : %08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"  IRQs o%s  Segment %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@KERNEL_DS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = call i64 @instruction_pointer(%struct.pt_regs* %3)
  %5 = inttoptr i64 %4 to i8*
  %6 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %13 = call i64 @instruction_pointer(%struct.pt_regs* %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 (...) @print_tainted()
  %20 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* %14, i8* %18, i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 25
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 24
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %34, i8* %39)
  %41 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 23
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 22
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 21
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 20
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %45, i8* %50, i8* %55, i8* %60)
  %62 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 19
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 18
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 17
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 16
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %66, i8* %71, i8* %76, i8* %81)
  %83 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 15
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %89 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %88, i32 0, i32 0
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 14
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %94 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 13
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 12
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %87, i8* %92, i8* %97, i8* %102)
  %104 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %105 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 11
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %109, i32 0, i32 0
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 10
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %115 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 9
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %120 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 8
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %108, i8* %113, i8* %118, i8* %123)
  %125 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %126 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 7
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %131 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 6
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %136 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %135, i32 0, i32 0
  %137 = load i8**, i8*** %136, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 5
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %141 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 4
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %129, i8* %134, i8* %139, i8* %144)
  %146 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %147 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %146, i32 0, i32 0
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 3
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %152 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 2
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %157 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %156, i32 0, i32 0
  %158 = load i8**, i8*** %157, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %162 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %161, i32 0, i32 0
  %163 = load i8**, i8*** %162, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i8* %150, i8* %155, i8* %160, i8* %165)
  %167 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %168 = call i64 @interrupts_enabled(%struct.pt_regs* %167)
  %169 = icmp ne i64 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %172 = call i32 (...) @get_fs()
  %173 = load i32, i32* @KERNEL_DS, align 4
  %174 = call i64 @segment_eq(i32 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)
  %178 = call i32 (i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %171, i8* %177)
  ret void
}

declare dso_local i32 @printk(i8*, i8*) #1

declare dso_local i64 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*, ...) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local i64 @interrupts_enabled(%struct.pt_regs*) #1

declare dso_local i64 @segment_eq(i32, i32) #1

declare dso_local i32 @get_fs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
