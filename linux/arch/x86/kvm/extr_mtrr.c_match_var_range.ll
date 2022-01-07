; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_match_var_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_match_var_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtrr_iter = type { i64, i64, i32, i64, %struct.kvm_mtrr_range* }
%struct.kvm_mtrr_range = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtrr_iter*, %struct.kvm_mtrr_range*)* @match_var_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_var_range(%struct.mtrr_iter* %0, %struct.kvm_mtrr_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtrr_iter*, align 8
  %5 = alloca %struct.kvm_mtrr_range*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mtrr_iter* %0, %struct.mtrr_iter** %4, align 8
  store %struct.kvm_mtrr_range* %1, %struct.kvm_mtrr_range** %5, align 8
  %8 = load %struct.kvm_mtrr_range*, %struct.kvm_mtrr_range** %5, align 8
  %9 = call i32 @var_mtrr_range(%struct.kvm_mtrr_range* %8, i64* %6, i64* %7)
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.mtrr_iter*, %struct.mtrr_iter** %4, align 8
  %12 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %42, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.mtrr_iter*, %struct.mtrr_iter** %4, align 8
  %18 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %15
  %22 = load %struct.kvm_mtrr_range*, %struct.kvm_mtrr_range** %5, align 8
  %23 = load %struct.mtrr_iter*, %struct.mtrr_iter** %4, align 8
  %24 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %23, i32 0, i32 4
  store %struct.kvm_mtrr_range* %22, %struct.kvm_mtrr_range** %24, align 8
  %25 = load %struct.mtrr_iter*, %struct.mtrr_iter** %4, align 8
  %26 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp slt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.mtrr_iter*, %struct.mtrr_iter** %4, align 8
  %32 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.mtrr_iter*, %struct.mtrr_iter** %4, align 8
  %36 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @max(i64 %37, i64 %38)
  %40 = load %struct.mtrr_iter*, %struct.mtrr_iter** %4, align 8
  %41 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @var_mtrr_range(%struct.kvm_mtrr_range*, i64*, i64*) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
