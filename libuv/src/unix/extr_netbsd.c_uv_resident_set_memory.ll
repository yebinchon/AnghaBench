; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_netbsd.c_uv_resident_set_memory.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_netbsd.c_uv_resident_set_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc2 = type { i32 }

@KVM_NO_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"kvm_open\00", align 1
@KERN_PROC_PID = common dso_local global i32 0, align 4
@UV_EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_resident_set_memory(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kinfo_proc2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32* null, i32** %4, align 8
  store %struct.kinfo_proc2* null, %struct.kinfo_proc2** %5, align 8
  store i32 4, i32* %8, align 4
  %10 = call i32 (...) @getpagesize()
  store i32 %10, i32* %9, align 4
  %11 = call i32 (...) @getpid()
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @KVM_NO_FILES, align 4
  %13 = call i32* @kvm_open(i32* null, i32* null, i32* null, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %36

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @KERN_PROC_PID, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.kinfo_proc2* @kvm_getproc2(i32* %18, i32 %19, i32 %20, i32 %21, i32* %7)
  store %struct.kinfo_proc2* %22, %struct.kinfo_proc2** %5, align 8
  %23 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %24 = icmp eq %struct.kinfo_proc2* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %36

26:                                               ; preds = %17
  %27 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %28 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %3, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @kvm_close(i32* %34)
  store i32 0, i32* %2, align 4
  br label %44

36:                                               ; preds = %25, %16
  %37 = load i32*, i32** %4, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @kvm_close(i32* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @UV_EPERM, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %26
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32* @kvm_open(i32*, i32*, i32*, i32, i8*) #1

declare dso_local %struct.kinfo_proc2* @kvm_getproc2(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @kvm_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
