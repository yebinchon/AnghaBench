; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_openbsd.c_uv_loadavg.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_openbsd.c_uv_loadavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loadavg = type { double, i64* }

@CTL_VM = common dso_local global i32 0, align 4
@VM_LOADAVG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_loadavg(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca %struct.loadavg, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x i32], align 4
  store double* %0, double** %2, align 8
  store i64 16, i64* %4, align 8
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %7 = load i32, i32* @CTL_VM, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @VM_LOADAVG, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %11 = call i64 @sysctl(i32* %10, i32 2, %struct.loadavg* %3, i64* %4, i32* null, i32 0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %45

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %3, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to double
  %20 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %3, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = fdiv double %19, %21
  %23 = load double*, double** %2, align 8
  %24 = getelementptr inbounds double, double* %23, i64 0
  store double %22, double* %24, align 8
  %25 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %3, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = sitofp i64 %28 to double
  %30 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %3, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = fdiv double %29, %31
  %33 = load double*, double** %2, align 8
  %34 = getelementptr inbounds double, double* %33, i64 1
  store double %32, double* %34, align 8
  %35 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %3, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  %38 = load i64, i64* %37, align 8
  %39 = sitofp i64 %38 to double
  %40 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %3, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fdiv double %39, %41
  %43 = load double*, double** %2, align 8
  %44 = getelementptr inbounds double, double* %43, i64 2
  store double %42, double* %44, align 8
  br label %45

45:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @sysctl(i32*, i32, %struct.loadavg*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
