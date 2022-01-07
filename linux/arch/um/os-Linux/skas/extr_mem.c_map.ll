; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/skas/extr_mem.c_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/skas/extr_mem.c_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_id = type { i32 }

@MAP_SHARED = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@STUB_MMAP_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map(%struct.mm_id* %0, i64 %1, i64 %2, i32 %3, i32 %4, i64 %5, i32 %6, i8** %7) #0 {
  %9 = alloca %struct.mm_id*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca [6 x i64], align 16
  store %struct.mm_id* %0, %struct.mm_id** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i8** %7, i8*** %16, align 8
  %19 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 0
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 1
  %22 = load i64, i64* %11, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 1
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds i64, i64* %23, i64 1
  %27 = load i64, i64* @MAP_SHARED, align 8
  %28 = load i64, i64* @MAP_FIXED, align 8
  %29 = or i64 %27, %28
  store i64 %29, i64* %26, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 1
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds i64, i64* %30, i64 1
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @MMAP_OFFSET(i64 %34)
  store i64 %35, i64* %33, align 8
  %36 = load %struct.mm_id*, %struct.mm_id** %9, align 8
  %37 = load i32, i32* @STUB_MMAP_NR, align 4
  %38 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 0
  %39 = load i64, i64* %10, align 8
  %40 = load i8**, i8*** %16, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @run_syscall_stub(%struct.mm_id* %36, i32 %37, i64* %38, i64 %39, i8** %40, i32 %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  ret i32 %43
}

declare dso_local i64 @MMAP_OFFSET(i64) #1

declare dso_local i32 @run_syscall_stub(%struct.mm_id*, i32, i64*, i64, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
