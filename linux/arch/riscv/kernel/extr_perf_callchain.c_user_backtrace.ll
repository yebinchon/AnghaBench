; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_perf_callchain.c_user_backtrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_perf_callchain.c_user_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_callchain_entry_ctx = type { i32 }
%struct.stackframe = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.perf_callchain_entry_ctx*, i64, i64)* @user_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @user_backtrace(%struct.perf_callchain_entry_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.perf_callchain_entry_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stackframe, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.perf_callchain_entry_ctx* %0, %struct.perf_callchain_entry_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = sub i64 %11, 16
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %10, align 8
  %14 = load i64*, i64** %10, align 8
  %15 = call i32 @access_ok(i64* %14, i32 16)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %43

18:                                               ; preds = %3
  %19 = load i64*, i64** %10, align 8
  %20 = call i64 @__copy_from_user_inatomic(%struct.stackframe* %8, i64* %19, i32 16)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %43

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %9, align 8
  br label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %28, %26
  %32 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %8, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %37, i64 %38)
  br label %41

40:                                               ; preds = %31
  store i64 0, i64* %4, align 8
  br label %43

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %40, %22, %17
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i32 @access_ok(i64*, i32) #1

declare dso_local i64 @__copy_from_user_inatomic(%struct.stackframe*, i64*, i32) #1

declare dso_local i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
