; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_kvm_mpic_write_internal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_kvm_mpic_write_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic = type { i32, %struct.mem_reg** }
%struct.mem_reg = type { i64, i64, {}* }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.openpic*, i64, i32)* @kvm_mpic_write_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mpic_write_internal(%struct.openpic* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.openpic*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem_reg*, align 8
  store %struct.openpic* %0, %struct.openpic** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %53, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.openpic*, %struct.openpic** %5, align 8
  %13 = getelementptr inbounds %struct.openpic, %struct.openpic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %10
  %17 = load %struct.openpic*, %struct.openpic** %5, align 8
  %18 = getelementptr inbounds %struct.openpic, %struct.openpic* %17, i32 0, i32 1
  %19 = load %struct.mem_reg**, %struct.mem_reg*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mem_reg*, %struct.mem_reg** %19, i64 %21
  %23 = load %struct.mem_reg*, %struct.mem_reg** %22, align 8
  store %struct.mem_reg* %23, %struct.mem_reg** %9, align 8
  %24 = load %struct.mem_reg*, %struct.mem_reg** %9, align 8
  %25 = getelementptr inbounds %struct.mem_reg, %struct.mem_reg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %16
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.mem_reg*, %struct.mem_reg** %9, align 8
  %32 = getelementptr inbounds %struct.mem_reg, %struct.mem_reg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mem_reg*, %struct.mem_reg** %9, align 8
  %35 = getelementptr inbounds %struct.mem_reg, %struct.mem_reg* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = icmp sge i64 %30, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29, %16
  br label %53

40:                                               ; preds = %29
  %41 = load %struct.mem_reg*, %struct.mem_reg** %9, align 8
  %42 = getelementptr inbounds %struct.mem_reg, %struct.mem_reg* %41, i32 0, i32 2
  %43 = bitcast {}** %42 to i32 (%struct.openpic*, i64, i32)**
  %44 = load i32 (%struct.openpic*, i64, i32)*, i32 (%struct.openpic*, i64, i32)** %43, align 8
  %45 = load %struct.openpic*, %struct.openpic** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.mem_reg*, %struct.mem_reg** %9, align 8
  %48 = getelementptr inbounds %struct.mem_reg, %struct.mem_reg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 %44(%struct.openpic* %45, i64 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %59

53:                                               ; preds = %39
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %10

56:                                               ; preds = %10
  %57 = load i32, i32* @ENXIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %40
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
