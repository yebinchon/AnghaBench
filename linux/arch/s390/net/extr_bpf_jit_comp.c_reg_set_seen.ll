; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_reg_set_seen.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_reg_set_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_jit = type { i32* }

@reg2hex = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_jit*, i64)* @reg_set_seen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_set_seen(%struct.bpf_jit* %0, i64 %1) #0 {
  %3 = alloca %struct.bpf_jit*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bpf_jit* %0, %struct.bpf_jit** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64*, i64** @reg2hex, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %11 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = icmp uge i64 %18, 6
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = icmp ule i64 %21, 15
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %25 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %20, %17, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
