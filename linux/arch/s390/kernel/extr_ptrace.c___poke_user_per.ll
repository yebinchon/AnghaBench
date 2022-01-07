; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ptrace.c___poke_user_per.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ptrace.c___poke_user_per.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.per_struct_kernel = type { i32, i32, i32 }

@PER_EVENT_MASK = common dso_local global i64 0, align 8
@PER_CONTROL_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i64, i64)* @__poke_user_per to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__poke_user_per(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.per_struct_kernel*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.per_struct_kernel* null, %struct.per_struct_kernel** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %7, align 8
  %10 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %9, i32 0, i32 2
  %11 = ptrtoint i32* %10 to i64
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @PER_EVENT_MASK, align 8
  %16 = load i64, i64* @PER_CONTROL_MASK, align 8
  %17 = or i64 %15, %16
  %18 = and i64 %14, %17
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i64 %18, i64* %22, align 8
  br label %49

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %7, align 8
  %26 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %25, i32 0, i32 1
  %27 = ptrtoint i32* %26 to i64
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i64 %30, i64* %34, align 8
  br label %48

35:                                               ; preds = %23
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.per_struct_kernel*, %struct.per_struct_kernel** %7, align 8
  %38 = getelementptr inbounds %struct.per_struct_kernel, %struct.per_struct_kernel* %37, i32 0, i32 0
  %39 = ptrtoint i32* %38 to i64
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %42, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %29
  br label %49

49:                                               ; preds = %48, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
