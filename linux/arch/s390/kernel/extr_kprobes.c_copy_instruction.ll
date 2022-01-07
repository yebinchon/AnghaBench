; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_copy_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_copy_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ftrace_insn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kprobe*)* @copy_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_instruction(%struct.kprobe* %0) #0 {
  %2 = alloca %struct.kprobe*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kprobe* %0, %struct.kprobe** %2, align 8
  %8 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %9 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = ptrtoint i32* %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @ftrace_location(i64 %12)
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %18 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.ftrace_insn*
  %22 = call i32 @ftrace_generate_nop_insn(%struct.ftrace_insn* %21)
  %23 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %24 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %41

26:                                               ; preds = %1
  %27 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %28 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %32 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %35 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 8
  %39 = call i32 @insn_length(i32 %38)
  %40 = call i32 @memcpy(i32* %30, i32* %33, i32 %39)
  br label %41

41:                                               ; preds = %26, %16
  %42 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %43 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %49 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %51 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @probe_is_insn_relative_long(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %41
  br label %88

57:                                               ; preds = %41
  %58 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %59 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %4, align 4
  %64 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %65 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = ptrtoint i32* %66 to i64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %70 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = ptrtoint i32* %72 to i64
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = mul nsw i32 %76, 2
  %78 = add nsw i32 %75, %77
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sdiv i32 %80, 2
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  %84 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %57, %56
  ret void
}

declare dso_local i64 @ftrace_location(i64) #1

declare dso_local i32 @ftrace_generate_nop_insn(%struct.ftrace_insn*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @insn_length(i32) #1

declare dso_local i32 @probe_is_insn_relative_long(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
