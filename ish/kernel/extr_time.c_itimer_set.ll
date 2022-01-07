; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_time.c_itimer_set.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_time.c_itimer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgroup = type { %struct.timer* }
%struct.timer = type { i32 }
%struct.timer_spec = type { i32 }

@ITIMER_REAL_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unimplemented setitimer %d\00", align 1
@_EINVAL = common dso_local global i32 0, align 4
@itimer_notify = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tgroup*, i32, i32, %struct.timer_spec*)* @itimer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itimer_set(%struct.tgroup* %0, i32 %1, i32 %2, %struct.timer_spec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.timer_spec, align 4
  %7 = alloca %struct.tgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timer_spec*, align 8
  %10 = alloca %struct.timer*, align 8
  %11 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.tgroup* %0, %struct.tgroup** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.timer_spec* %3, %struct.timer_spec** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @ITIMER_REAL_, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @_EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %47

19:                                               ; preds = %4
  %20 = load %struct.tgroup*, %struct.tgroup** %7, align 8
  %21 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %20, i32 0, i32 0
  %22 = load %struct.timer*, %struct.timer** %21, align 8
  %23 = icmp ne %struct.timer* %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @itimer_notify, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @current, align 4
  %28 = call %struct.timer* @timer_new(i32 %26, i32 %27)
  store %struct.timer* %28, %struct.timer** %10, align 8
  %29 = load %struct.timer*, %struct.timer** %10, align 8
  %30 = call i64 @IS_ERR(%struct.timer* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.timer*, %struct.timer** %10, align 8
  %34 = call i32 @PTR_ERR(%struct.timer* %33)
  store i32 %34, i32* %5, align 4
  br label %47

35:                                               ; preds = %24
  %36 = load %struct.timer*, %struct.timer** %10, align 8
  %37 = load %struct.tgroup*, %struct.tgroup** %7, align 8
  %38 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %37, i32 0, i32 0
  store %struct.timer* %36, %struct.timer** %38, align 8
  br label %39

39:                                               ; preds = %35, %19
  %40 = load %struct.tgroup*, %struct.tgroup** %7, align 8
  %41 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %40, i32 0, i32 0
  %42 = load %struct.timer*, %struct.timer** %41, align 8
  %43 = load %struct.timer_spec*, %struct.timer_spec** %9, align 8
  %44 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @timer_set(%struct.timer* %42, i32 %45, %struct.timer_spec* %43)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %32, %15
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local %struct.timer* @timer_new(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.timer*) #1

declare dso_local i32 @PTR_ERR(%struct.timer*) #1

declare dso_local i32 @timer_set(%struct.timer*, i32, %struct.timer_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
