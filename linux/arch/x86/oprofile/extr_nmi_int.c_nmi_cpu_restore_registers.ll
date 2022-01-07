; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_nmi_int.c_nmi_cpu_restore_registers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_nmi_int.c_nmi_cpu_restore_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.op_msrs = type { %struct.op_msr*, %struct.op_msr* }
%struct.op_msr = type { i32, i64 }

@model = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_msrs*)* @nmi_cpu_restore_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmi_cpu_restore_registers(%struct.op_msrs* %0) #0 {
  %2 = alloca %struct.op_msrs*, align 8
  %3 = alloca %struct.op_msr*, align 8
  %4 = alloca %struct.op_msr*, align 8
  %5 = alloca i32, align 4
  store %struct.op_msrs* %0, %struct.op_msrs** %2, align 8
  %6 = load %struct.op_msrs*, %struct.op_msrs** %2, align 8
  %7 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %6, i32 0, i32 1
  %8 = load %struct.op_msr*, %struct.op_msr** %7, align 8
  store %struct.op_msr* %8, %struct.op_msr** %3, align 8
  %9 = load %struct.op_msrs*, %struct.op_msrs** %2, align 8
  %10 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %9, i32 0, i32 0
  %11 = load %struct.op_msr*, %struct.op_msr** %10, align 8
  store %struct.op_msr* %11, %struct.op_msr** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.op_msr*, %struct.op_msr** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %19, i64 %21
  %23 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %18
  %27 = load %struct.op_msr*, %struct.op_msr** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %27, i64 %29
  %31 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.op_msr*, %struct.op_msr** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %33, i64 %35
  %37 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wrmsrl(i64 %32, i32 %38)
  br label %40

40:                                               ; preds = %26, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %12

44:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %74, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %45
  %52 = load %struct.op_msr*, %struct.op_msr** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %52, i64 %54
  %56 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %51
  %60 = load %struct.op_msr*, %struct.op_msr** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %60, i64 %62
  %64 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.op_msr*, %struct.op_msr** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %66, i64 %68
  %70 = getelementptr inbounds %struct.op_msr, %struct.op_msr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @wrmsrl(i64 %65, i32 %71)
  br label %73

73:                                               ; preds = %59, %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %45

77:                                               ; preds = %45
  ret void
}

declare dso_local i32 @wrmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
