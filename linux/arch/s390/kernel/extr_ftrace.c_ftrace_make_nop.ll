; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ftrace.c_ftrace_make_nop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ftrace.c_ftrace_make_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.dyn_ftrace = type { i64 }
%struct.ftrace_insn = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@MCOUNT_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftrace_make_nop(%struct.module* %0, %struct.dyn_ftrace* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.dyn_ftrace*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ftrace_insn, align 4
  %9 = alloca %struct.ftrace_insn, align 4
  %10 = alloca %struct.ftrace_insn, align 4
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.dyn_ftrace* %1, %struct.dyn_ftrace** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dyn_ftrace*, %struct.dyn_ftrace** %6, align 8
  %12 = getelementptr inbounds %struct.dyn_ftrace, %struct.dyn_ftrace* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i64 @probe_kernel_read(%struct.ftrace_insn* %10, i8* %14, i32 4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %52

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @MCOUNT_ADDR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @ftrace_generate_orig_insn(%struct.ftrace_insn* %8)
  %26 = call i32 @ftrace_generate_nop_insn(%struct.ftrace_insn* %9)
  br label %40

27:                                               ; preds = %20
  %28 = call i64 @is_kprobe_on_ftrace(%struct.ftrace_insn* %10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = call i32 @ftrace_generate_kprobe_call_insn(%struct.ftrace_insn* %8)
  %32 = call i32 @ftrace_generate_kprobe_nop_insn(%struct.ftrace_insn* %9)
  br label %39

33:                                               ; preds = %27
  %34 = load %struct.dyn_ftrace*, %struct.dyn_ftrace** %6, align 8
  %35 = getelementptr inbounds %struct.dyn_ftrace, %struct.dyn_ftrace* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ftrace_generate_call_insn(%struct.ftrace_insn* %8, i64 %36)
  %38 = call i32 @ftrace_generate_nop_insn(%struct.ftrace_insn* %9)
  br label %39

39:                                               ; preds = %33, %30
  br label %40

40:                                               ; preds = %39, %24
  %41 = call i64 @memcmp(%struct.ftrace_insn* %8, %struct.ftrace_insn* %10, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %40
  %47 = load %struct.dyn_ftrace*, %struct.dyn_ftrace** %6, align 8
  %48 = getelementptr inbounds %struct.dyn_ftrace, %struct.dyn_ftrace* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @s390_kernel_write(i8* %50, %struct.ftrace_insn* %9, i32 4)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %43, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @probe_kernel_read(%struct.ftrace_insn*, i8*, i32) #1

declare dso_local i32 @ftrace_generate_orig_insn(%struct.ftrace_insn*) #1

declare dso_local i32 @ftrace_generate_nop_insn(%struct.ftrace_insn*) #1

declare dso_local i64 @is_kprobe_on_ftrace(%struct.ftrace_insn*) #1

declare dso_local i32 @ftrace_generate_kprobe_call_insn(%struct.ftrace_insn*) #1

declare dso_local i32 @ftrace_generate_kprobe_nop_insn(%struct.ftrace_insn*) #1

declare dso_local i32 @ftrace_generate_call_insn(%struct.ftrace_insn*, i64) #1

declare dso_local i64 @memcmp(%struct.ftrace_insn*, %struct.ftrace_insn*, i32) #1

declare dso_local i32 @s390_kernel_write(i8*, %struct.ftrace_insn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
