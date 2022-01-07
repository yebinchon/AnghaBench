; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_alarm.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.tgroup* }
%struct.tgroup = type { i32 }
%struct.timer_spec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"alarm(%d)\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@ITIMER_REAL_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_alarm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timer_spec, align 4
  %5 = alloca %struct.timer_spec, align 4
  %6 = alloca %struct.tgroup*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @STRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %4, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.tgroup*, %struct.tgroup** %15, align 8
  store %struct.tgroup* %16, %struct.tgroup** %6, align 8
  %17 = load %struct.tgroup*, %struct.tgroup** %6, align 8
  %18 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %17, i32 0, i32 0
  %19 = call i32 @lock(i32* %18)
  %20 = load %struct.tgroup*, %struct.tgroup** %6, align 8
  %21 = load i32, i32* @ITIMER_REAL_, align 4
  %22 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %4, i32 0, i32 0
  %23 = bitcast %struct.TYPE_3__* %22 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = call i32 @itimer_set(%struct.tgroup* %20, i32 %21, i64 %24, %struct.timer_spec* %5)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.tgroup*, %struct.tgroup** %6, align 8
  %27 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %26, i32 0, i32 0
  %28 = call i32 @unlock(i32* %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %56

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  %37 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %5, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 500000000
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %5, i32 0, i32 0
  %49 = bitcast %struct.TYPE_3__* %48 to i64*
  %50 = load i64, i64* %49, align 4
  %51 = call i32 @timespec_is_zero(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %47, %44
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %31
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @STRACE(i8*, i32) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @itimer_set(%struct.tgroup*, i32, i64, %struct.timer_spec*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @timespec_is_zero(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
