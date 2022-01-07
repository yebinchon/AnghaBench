; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_mpic_request_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_mpic_request_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic_timer = type { i8*, i32 }

@timer_group_list = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"global-timer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpic_timer* @mpic_request_timer(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mpic_timer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mpic_timer*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call i64 @list_empty(i32* @timer_group_list)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.mpic_timer* null, %struct.mpic_timer** %4, align 8
  br label %41

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store %struct.mpic_timer* null, %struct.mpic_timer** %4, align 8
  br label %41

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.mpic_timer* @get_timer(i64 %18)
  store %struct.mpic_timer* %19, %struct.mpic_timer** %8, align 8
  %20 = load %struct.mpic_timer*, %struct.mpic_timer** %8, align 8
  %21 = icmp ne %struct.mpic_timer* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.mpic_timer* null, %struct.mpic_timer** %4, align 8
  br label %41

23:                                               ; preds = %17
  %24 = load %struct.mpic_timer*, %struct.mpic_timer** %8, align 8
  %25 = getelementptr inbounds %struct.mpic_timer, %struct.mpic_timer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @request_irq(i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.mpic_timer*, %struct.mpic_timer** %8, align 8
  %35 = call i32 @mpic_free_timer(%struct.mpic_timer* %34)
  store %struct.mpic_timer* null, %struct.mpic_timer** %4, align 8
  br label %41

36:                                               ; preds = %23
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.mpic_timer*, %struct.mpic_timer** %8, align 8
  %39 = getelementptr inbounds %struct.mpic_timer, %struct.mpic_timer* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mpic_timer*, %struct.mpic_timer** %8, align 8
  store %struct.mpic_timer* %40, %struct.mpic_timer** %4, align 8
  br label %41

41:                                               ; preds = %36, %33, %22, %16, %12
  %42 = load %struct.mpic_timer*, %struct.mpic_timer** %4, align 8
  ret %struct.mpic_timer* %42
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.mpic_timer* @get_timer(i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @mpic_free_timer(%struct.mpic_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
