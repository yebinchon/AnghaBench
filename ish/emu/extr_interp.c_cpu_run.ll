; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_interp.c_cpu_run.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_interp.c_cpu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tlb = type { %struct.TYPE_2__* }

@INT_NONE = common dso_local global i32 0, align 4
@INT_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_run(%struct.cpu_state* %0) #0 {
  %2 = alloca %struct.cpu_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tlb, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpu_state* %0, %struct.cpu_state** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = getelementptr inbounds %struct.tlb, %struct.tlb* %4, i32 0, i32 0
  %8 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %9 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = call i32 @tlb_flush(%struct.tlb* %4)
  %12 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %13 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @read_wrlock(i32* %15)
  %17 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %18 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %1, %81
  %23 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %24 = call i32 @cpu_step32(%struct.cpu_state* %23, %struct.tlb* %4)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @INT_NONE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  %31 = icmp sge i32 %29, 100000
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  %33 = load i32, i32* @INT_TIMER, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %28, %22
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @INT_NONE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %41 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %43 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @read_wrunlock(i32* %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @handle_interrupt(i32 %47)
  %49 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %50 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @read_wrlock(i32* %52)
  %54 = getelementptr inbounds %struct.tlb, %struct.tlb* %4, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %57 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = icmp ne %struct.TYPE_2__* %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %38
  %61 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %62 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.tlb, %struct.tlb* %4, i32 0, i32 0
  store %struct.TYPE_2__* %63, %struct.TYPE_2__** %64, align 8
  br label %65

65:                                               ; preds = %60, %38
  %66 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %67 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = call i32 @tlb_flush(%struct.tlb* %4)
  %75 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %76 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %73, %65
  br label %81

81:                                               ; preds = %80, %34
  br label %22
}

declare dso_local i32 @tlb_flush(%struct.tlb*) #1

declare dso_local i32 @read_wrlock(i32*) #1

declare dso_local i32 @cpu_step32(%struct.cpu_state*, %struct.tlb*) #1

declare dso_local i32 @read_wrunlock(i32*) #1

declare dso_local i32 @handle_interrupt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
