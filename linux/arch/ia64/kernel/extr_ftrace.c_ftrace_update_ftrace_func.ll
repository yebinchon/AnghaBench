; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ftrace.c_ftrace_update_ftrace_func.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ftrace.c_ftrace_update_ftrace_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnptr = type { i64 }

@ftrace_call = common dso_local global i64 0, align 8
@ftrace_stub = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftrace_update_ftrace_func(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @ftrace_call, align 8
  %7 = inttoptr i64 %6 to %struct.fnptr*
  %8 = getelementptr inbounds %struct.fnptr, %struct.fnptr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @ftrace_stub, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = inttoptr i64 %15 to %struct.fnptr*
  %17 = getelementptr inbounds %struct.fnptr, %struct.fnptr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @ia64_patch_imm64(i64 %20, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 16
  %26 = call i32 @flush_icache_range(i64 %23, i64 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ia64_patch_imm64(i64, i64) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
