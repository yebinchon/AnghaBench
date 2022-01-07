; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_vtime_task_switch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_vtime_task_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@S390_lowcore = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@current = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtime_task_switch(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %4 = call i32 @do_account_vtime(%struct.task_struct* %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @S390_lowcore, i32 0, i32 4), align 4
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @S390_lowcore, i32 0, i32 3), align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @S390_lowcore, i32 0, i32 2), align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @S390_lowcore, i32 0, i32 1), align 4
  %18 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @S390_lowcore, i32 0, i32 0), align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @S390_lowcore, i32 0, i32 4), align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @S390_lowcore, i32 0, i32 3), align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @S390_lowcore, i32 0, i32 2), align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @S390_lowcore, i32 0, i32 1), align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @S390_lowcore, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @do_account_vtime(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
