; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process_64.c_start_thread_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process_64.c_start_thread_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i32, i32, i32 }

@X86_BUG_NULL_SEG = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@__USER_DS = common dso_local global i32 0, align 4
@es = common dso_local global i32 0, align 4
@ds = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i64, i32, i32, i32)* @start_thread_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_thread_common(%struct.pt_regs* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %14 = call %struct.pt_regs* (...) @current_pt_regs()
  %15 = icmp ne %struct.pt_regs* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load i32, i32* @X86_BUG_NULL_SEG, align 4
  %19 = call i64 @static_cpu_has(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load i32, i32* @fs, align 4
  %23 = load i32, i32* @__USER_DS, align 4
  %24 = call i32 @loadsegment(i32 %22, i32 %23)
  %25 = load i32, i32* @__USER_DS, align 4
  %26 = call i32 @load_gs_index(i32 %25)
  br label %27

27:                                               ; preds = %21, %6
  %28 = load i32, i32* @fs, align 4
  %29 = call i32 @loadsegment(i32 %28, i32 0)
  %30 = load i32, i32* @es, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @loadsegment(i32 %30, i32 %31)
  %33 = load i32, i32* @ds, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @loadsegment(i32 %33, i32 %34)
  %36 = call i32 @load_gs_index(i32 0)
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @X86_EFLAGS_IF, align 4
  %50 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = call i32 (...) @force_iret()
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

declare dso_local i64 @static_cpu_has(i32) #1

declare dso_local i32 @loadsegment(i32, i32) #1

declare dso_local i32 @load_gs_index(i32) #1

declare dso_local i32 @force_iret(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
