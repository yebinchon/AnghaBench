; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/power/extr_cpu.c_save_processor_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/power/extr_cpu.c_save_processor_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@saved_status = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@cpu_has_dsp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_processor_state() #0 {
  %1 = call i32 (...) @read_c0_status()
  store i32 %1, i32* @saved_status, align 4
  %2 = call i64 (...) @is_fpu_owner()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @save_fp(i32 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i64, i64* @cpu_has_dsp, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @save_dsp(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i64 @is_fpu_owner(...) #1

declare dso_local i32 @save_fp(i32) #1

declare dso_local i32 @save_dsp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
