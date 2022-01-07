; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_bpf_jit_prog.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_bpf_jit_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_jit = type { i64, i64, i64, i64, i64, i64* }
%struct.bpf_prog = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_jit*, %struct.bpf_prog*, i32)* @bpf_jit_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_jit_prog(%struct.bpf_jit* %0, %struct.bpf_prog* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_jit*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_jit* %0, %struct.bpf_jit** %5, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %14 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %16 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %19 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bpf_jit_prologue(%struct.bpf_jit* %17, i32 %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %51, %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %27 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @bpf_jit_insn(%struct.bpf_jit* %31, %struct.bpf_prog* %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %78

39:                                               ; preds = %30
  %40 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %41 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %44 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %43, i32 0, i32 5
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  store i64 %42, i64* %50, align 8
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %24

55:                                               ; preds = %24
  %56 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %57 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %58 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bpf_jit_epilogue(%struct.bpf_jit* %56, i32 %61)
  %63 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %64 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %67 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  %68 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %69 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %72 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %74 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %77 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %55, %38
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @bpf_jit_prologue(%struct.bpf_jit*, i32) #1

declare dso_local i32 @bpf_jit_insn(%struct.bpf_jit*, %struct.bpf_prog*, i32, i32) #1

declare dso_local i32 @bpf_jit_epilogue(%struct.bpf_jit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
