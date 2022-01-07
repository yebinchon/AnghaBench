; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_get_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_get_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_jit = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_jit*, i32)* @get_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_end(%struct.bpf_jit* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_jit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bpf_jit* %0, %struct.bpf_jit** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 15
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load %struct.bpf_jit*, %struct.bpf_jit** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %11
  %21 = load %struct.bpf_jit*, %struct.bpf_jit** %4, align 8
  %22 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %20, %11
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load %struct.bpf_jit*, %struct.bpf_jit** %4, align 8
  %39 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 15
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 15, i32 14
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
