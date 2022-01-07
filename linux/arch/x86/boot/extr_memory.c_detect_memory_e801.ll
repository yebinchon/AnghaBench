; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_memory.c_detect_memory_e801.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_memory.c_detect_memory_e801.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.biosregs = type { i32, i32, i32, i32, i32 }

@X86_EFLAGS_CF = common dso_local global i32 0, align 4
@boot_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @detect_memory_e801 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_memory_e801() #0 {
  %1 = alloca %struct.biosregs, align 4
  %2 = alloca %struct.biosregs, align 4
  %3 = call i32 @initregs(%struct.biosregs* %1)
  %4 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 0
  store i32 59393, i32* %4, align 4
  %5 = call i32 @intcall(i32 21, %struct.biosregs* %1, %struct.biosregs* %2)
  %6 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @X86_EFLAGS_CF, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %47

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %16
  %28 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 15360
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %47

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 15360
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 6
  %40 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_params, i32 0, i32 0), align 4
  br label %46

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_params, i32 0, i32 0), align 4
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %11, %31, %46
  ret void
}

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, %struct.biosregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
