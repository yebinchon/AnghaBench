; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ftrace.c_ftrace_make_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ftrace.c_ftrace_make_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_ftrace = type { i64 }
%struct.ftrace_insn = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftrace_make_call(%struct.dyn_ftrace* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dyn_ftrace*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ftrace_insn, align 4
  %7 = alloca %struct.ftrace_insn, align 4
  %8 = alloca %struct.ftrace_insn, align 4
  store %struct.dyn_ftrace* %0, %struct.dyn_ftrace** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.dyn_ftrace*, %struct.dyn_ftrace** %4, align 8
  %10 = getelementptr inbounds %struct.dyn_ftrace, %struct.dyn_ftrace* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i64 @probe_kernel_read(%struct.ftrace_insn* %8, i8* %12, i32 4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = call i64 @is_kprobe_on_ftrace(%struct.ftrace_insn* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i32 @ftrace_generate_kprobe_nop_insn(%struct.ftrace_insn* %6)
  %23 = call i32 @ftrace_generate_kprobe_call_insn(%struct.ftrace_insn* %7)
  br label %30

24:                                               ; preds = %18
  %25 = call i32 @ftrace_generate_nop_insn(%struct.ftrace_insn* %6)
  %26 = load %struct.dyn_ftrace*, %struct.dyn_ftrace** %4, align 8
  %27 = getelementptr inbounds %struct.dyn_ftrace, %struct.dyn_ftrace* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ftrace_generate_call_insn(%struct.ftrace_insn* %7, i64 %28)
  br label %30

30:                                               ; preds = %24, %21
  %31 = call i64 @memcmp(%struct.ftrace_insn* %6, %struct.ftrace_insn* %8, i32 4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %30
  %37 = load %struct.dyn_ftrace*, %struct.dyn_ftrace** %4, align 8
  %38 = getelementptr inbounds %struct.dyn_ftrace, %struct.dyn_ftrace* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @s390_kernel_write(i8* %40, %struct.ftrace_insn* %7, i32 4)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %33, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @probe_kernel_read(%struct.ftrace_insn*, i8*, i32) #1

declare dso_local i64 @is_kprobe_on_ftrace(%struct.ftrace_insn*) #1

declare dso_local i32 @ftrace_generate_kprobe_nop_insn(%struct.ftrace_insn*) #1

declare dso_local i32 @ftrace_generate_kprobe_call_insn(%struct.ftrace_insn*) #1

declare dso_local i32 @ftrace_generate_nop_insn(%struct.ftrace_insn*) #1

declare dso_local i32 @ftrace_generate_call_insn(%struct.ftrace_insn*, i64) #1

declare dso_local i64 @memcmp(%struct.ftrace_insn*, %struct.ftrace_insn*, i32) #1

declare dso_local i32 @s390_kernel_write(i8*, %struct.ftrace_insn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
