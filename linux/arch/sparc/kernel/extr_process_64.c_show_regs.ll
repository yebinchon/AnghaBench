; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_64.c_show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_64.c_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i64, i32, i32, i32 }

@KERN_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"TSTATE: %016lx TPC: %016lx TNPC: %016lx Y: %08x    %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"TPC: <%pS>\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"g0: %016lx g1: %016lx g2: %016lx g3: %016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"g4: %016lx g5: %016lx g6: %016lx g7: %016lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"o0: %016lx o1: %016lx o2: %016lx o3: %016lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"o4: %016lx o5: %016lx sp: %016lx ret_pc: %016lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"RPC: <%pS>\0A\00", align 1
@current = common dso_local global i32 0, align 4
@UREG_FP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load i32, i32* @KERN_DEFAULT, align 4
  %4 = call i32 @show_regs_print_info(i32 %3)
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (...) @print_tainted()
  %20 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %9, i64 %12, i32 %15, i32 %18, i32 %19)
  %21 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %31, i64 %36, i64 %41, i64 %46)
  %48 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 4
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 5
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 6
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 7
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %53, i64 %58, i64 %63, i64 %68)
  %70 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 8
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %77 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 9
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %82 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 10
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %87 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 11
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %75, i64 %80, i64 %85, i64 %90)
  %92 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 12
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 13
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %104 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 14
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %109 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 15
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %97, i64 %102, i64 %107, i64 %112)
  %114 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %115 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 15
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %119)
  %121 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %122 = call i32 @show_regwindow(%struct.pt_regs* %121)
  %123 = load i32, i32* @current, align 4
  %124 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %125 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* @UREG_FP, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i64*
  %131 = call i32 @show_stack(i32 %123, i64* %130)
  ret void
}

declare dso_local i32 @show_regs_print_info(i32) #1

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local i32 @show_regwindow(%struct.pt_regs*) #1

declare dso_local i32 @show_stack(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
