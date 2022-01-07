; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c___recover_probed_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c___recover_probed_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32 }

@MAX_INSN_SIZE = common dso_local global i32 0, align 4
@ideal_nops = common dso_local global i32* null, align 8
@NOP_ATOMIC5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @__recover_probed_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__recover_probed_insn(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kprobe*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call %struct.kprobe* @get_kprobe(i8* %9)
  store %struct.kprobe* %10, %struct.kprobe** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @ftrace_location(i64 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  br label %63

25:                                               ; preds = %19
  %26 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %27 = icmp ne %struct.kprobe* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %3, align 8
  br label %63

33:                                               ; preds = %28, %25
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* @MAX_INSN_SIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i64 @probe_kernel_read(i32* %34, i8* %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i64 0, i64* %3, align 8
  br label %63

44:                                               ; preds = %33
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** @ideal_nops, align 8
  %50 = load i64, i64* @NOP_ATOMIC5, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32* %48, i32 %52, i32 5)
  br label %60

54:                                               ; preds = %44
  %55 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %56 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i32*, i32** %4, align 8
  %62 = ptrtoint i32* %61 to i64
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %60, %43, %31, %24
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local %struct.kprobe* @get_kprobe(i8*) #1

declare dso_local i64 @ftrace_location(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @probe_kernel_read(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
