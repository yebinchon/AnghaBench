; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_traps.c_dik_show_trace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_traps.c_dik_show_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Trace:\0A\00", align 1
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[<%lx>] %pSR\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @dik_show_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dik_show_trace(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %32, %22, %18, %1
  %7 = load i64*, i64** %2, align 8
  %8 = ptrtoint i64* %7 to i64
  %9 = and i64 8184, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = load i64*, i64** %2, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64*, i64** %2, align 8
  %15 = getelementptr inbounds i64, i64* %14, i32 1
  store i64* %15, i64** %2, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %16, ptrtoint ([0 x i8]* @_stext to i64)
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %6

19:                                               ; preds = %11
  %20 = load i64, i64* %4, align 8
  %21 = icmp uge i64 %20, ptrtoint ([0 x i8]* @_etext to i64)
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %6

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %24, i8* %26)
  %28 = load i64, i64* %3, align 8
  %29 = icmp sgt i64 %28, 40
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %33

32:                                               ; preds = %23
  br label %6

33:                                               ; preds = %30, %6
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
