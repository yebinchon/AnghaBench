; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_grab_hwthread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_grab_hwthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paca_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32*, i32* }

@paca_ptrs = common dso_local global %struct.paca_struct** null, align 8
@KVM_HWTHREAD_IN_KERNEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"KVM: couldn't grab cpu %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kvmppc_grab_hwthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_grab_hwthread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.paca_struct*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 10000, i64* %5, align 8
  %6 = load %struct.paca_struct**, %struct.paca_struct*** @paca_ptrs, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.paca_struct*, %struct.paca_struct** %6, i64 %8
  %10 = load %struct.paca_struct*, %struct.paca_struct** %9, align 8
  store %struct.paca_struct* %10, %struct.paca_struct** %4, align 8
  %11 = load %struct.paca_struct*, %struct.paca_struct** %4, align 8
  %12 = getelementptr inbounds %struct.paca_struct, %struct.paca_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = load %struct.paca_struct*, %struct.paca_struct** %4, align 8
  %15 = getelementptr inbounds %struct.paca_struct, %struct.paca_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load %struct.paca_struct*, %struct.paca_struct** %4, align 8
  %18 = getelementptr inbounds %struct.paca_struct, %struct.paca_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = call i32 (...) @smp_wmb()
  %21 = load %struct.paca_struct*, %struct.paca_struct** %4, align 8
  %22 = getelementptr inbounds %struct.paca_struct, %struct.paca_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = call i32 (...) @smp_mb()
  br label %25

25:                                               ; preds = %41, %1
  %26 = load %struct.paca_struct*, %struct.paca_struct** %4, align 8
  %27 = getelementptr inbounds %struct.paca_struct, %struct.paca_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @KVM_HWTHREAD_IN_KERNEL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %5, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %32
  %42 = call i32 @udelay(i32 1)
  br label %25

43:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
