; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_cpu.c_msr_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_cpu.c_msr_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saved_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.saved_msr* }
%struct.saved_msr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saved_context*)* @msr_save_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msr_save_context(%struct.saved_context* %0) #0 {
  %2 = alloca %struct.saved_context*, align 8
  %3 = alloca %struct.saved_msr*, align 8
  %4 = alloca %struct.saved_msr*, align 8
  store %struct.saved_context* %0, %struct.saved_context** %2, align 8
  %5 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %6 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.saved_msr*, %struct.saved_msr** %7, align 8
  store %struct.saved_msr* %8, %struct.saved_msr** %3, align 8
  %9 = load %struct.saved_msr*, %struct.saved_msr** %3, align 8
  %10 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %11 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.saved_msr, %struct.saved_msr* %9, i64 %14
  store %struct.saved_msr* %15, %struct.saved_msr** %4, align 8
  br label %16

16:                                               ; preds = %20, %1
  %17 = load %struct.saved_msr*, %struct.saved_msr** %3, align 8
  %18 = load %struct.saved_msr*, %struct.saved_msr** %4, align 8
  %19 = icmp ult %struct.saved_msr* %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.saved_msr*, %struct.saved_msr** %3, align 8
  %22 = getelementptr inbounds %struct.saved_msr, %struct.saved_msr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.saved_msr*, %struct.saved_msr** %3, align 8
  %26 = getelementptr inbounds %struct.saved_msr, %struct.saved_msr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @rdmsrl_safe(i32 %24, i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.saved_msr*, %struct.saved_msr** %3, align 8
  %34 = getelementptr inbounds %struct.saved_msr, %struct.saved_msr* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.saved_msr*, %struct.saved_msr** %3, align 8
  %36 = getelementptr inbounds %struct.saved_msr, %struct.saved_msr* %35, i32 1
  store %struct.saved_msr* %36, %struct.saved_msr** %3, align 8
  br label %16

37:                                               ; preds = %16
  ret void
}

declare dso_local i32 @rdmsrl_safe(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
