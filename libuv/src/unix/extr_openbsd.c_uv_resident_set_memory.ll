; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_openbsd.c_uv_resident_set_memory.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_openbsd.c_uv_resident_set_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i64 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_PID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_resident_set_memory(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.kinfo_proc, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [6 x i32], align 16
  store i64* %0, i64** %3, align 8
  %8 = call i64 (...) @getpagesize()
  store i64 %8, i64* %5, align 8
  store i64 8, i64* %6, align 8
  %9 = load i32, i32* @CTL_KERN, align 4
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = load i32, i32* @KERN_PROC, align 4
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @KERN_PROC_PID, align 4
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 %13, i32* %14, align 8
  %15 = call i32 (...) @getpid()
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  store i32 8, i32* %17, align 16
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %20 = call i64 @sysctl(i32* %19, i32 6, %struct.kinfo_proc* %4, i64* %6, i32* null, i32 0)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @UV__ERR(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = mul i64 %27, %28
  %30 = load i64*, i64** %3, align 8
  store i64 %29, i64* %30, align 8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @sysctl(i32*, i32, %struct.kinfo_proc*, i64*, i32*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
