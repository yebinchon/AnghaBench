; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_traps.c_dik_show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_traps.c_dik_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"pc = [<%016lx>]  ra = [<%016lx>]  ps = %04lx    %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pc is at %pSR\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ra is at %pSR\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"v0 = %016lx  t0 = %016lx  t1 = %016lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"t2 = %016lx  t3 = %016lx  t4 = %016lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"t5 = %016lx  t6 = %016lx  t7 = %016lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"s0 = %016lx  s1 = %016lx  s2 = %016lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"s3 = %016lx  s4 = %016lx  s5 = %016lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"s6 = %016lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"a0 = %016lx  a1 = %016lx  a2 = %016lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"a3 = %016lx  a4 = %016lx  a5 = %016lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"t8 = %016lx  t9 = %016lx  t10= %016lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"t11= %016lx  pv = %016lx  at = %016lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"gp = %016lx  sp = %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dik_show_regs(%struct.pt_regs* %0, i64* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 23
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 22
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 24
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (...) @print_tainted()
  %16 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %8, i64 %11, i32 %14, i32 %15)
  %17 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 23
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 22
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 21
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 20
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 19
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %31, i32 %34, i32 %37)
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 18
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 17
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 16
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %43, i32 %46, i32 %49)
  %51 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 15
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 13
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %55, i32 %58, i32 %61)
  %63 = load i64*, i64** %4, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %93

65:                                               ; preds = %2
  %66 = load i64*, i64** %4, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 9
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load i64*, i64** %4, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 10
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 11
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %69, i64 %72, i64 %75)
  %77 = load i64*, i64** %4, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 12
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i64*, i64** %4, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 13
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 14
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %80, i64 %83, i64 %86)
  %88 = load i64*, i64** %4, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 15
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %65, %2
  %94 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 12
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %100 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %98, i32 %101, i32 %104)
  %106 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %107 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %112 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %115 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %110, i32 %113, i32 %116)
  %118 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %124 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %127 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %122, i32 %125, i32 %128)
  %130 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %131 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %136 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %139 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %134, i32 %137, i32 %140)
  %142 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %143 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %148 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %147, i64 1
  %149 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %146, %struct.pt_regs* %148)
  ret void
}

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @print_tainted(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
