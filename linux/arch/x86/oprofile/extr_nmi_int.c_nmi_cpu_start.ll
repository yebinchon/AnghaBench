; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_nmi_int.c_nmi_cpu_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_nmi_int.c_nmi_cpu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.op_msrs*)* }
%struct.op_msrs = type { i32 }

@cpu_msrs = common dso_local global i32 0, align 4
@model = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nmi_cpu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmi_cpu_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.op_msrs*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.op_msrs* @this_cpu_ptr(i32* @cpu_msrs)
  store %struct.op_msrs* %4, %struct.op_msrs** %3, align 8
  %5 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %6 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @WARN_ON_ONCE(i32 1)
  br label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.op_msrs*)*, i32 (%struct.op_msrs*)** %13, align 8
  %15 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %16 = call i32 %14(%struct.op_msrs* %15)
  br label %17

17:                                               ; preds = %11, %9
  ret void
}

declare dso_local %struct.op_msrs* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
