; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_timing.c_kvmppc_exit_timing_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_timing.c_kvmppc_exit_timing_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kvm_vcpu* }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [36 x i8] c"type\09count\09min\09max\09sum\09sum_squared\0A\00", align 1
@__NUMBER_OF_KVM_EXIT_TYPES = common dso_local global i32 0, align 4
@tb_ticks_per_usec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%12s\09%10d\09%10lld\09%10lld\09%20lld\09%20lld\0A\00", align 1
@kvm_exit_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @kvmppc_exit_timing_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_exit_timing_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  store %struct.kvm_vcpu* %13, %struct.kvm_vcpu** %5, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call i32 @seq_puts(%struct.seq_file* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %84, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @__NUMBER_OF_KVM_EXIT_TYPES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %16
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @tb_ticks_per_usec, align 4
  %31 = call i32 @do_div(i32 %29, i32 %30)
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @tb_ticks_per_usec, align 4
  %42 = call i32 @do_div(i32 %40, i32 %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @tb_ticks_per_usec, align 4
  %53 = call i32 @do_div(i32 %51, i32 %52)
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @tb_ticks_per_usec, align 4
  %64 = call i32 @do_div(i32 %62, i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = load i32*, i32** @kvm_exit_names, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %20
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %16

87:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
