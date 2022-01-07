; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_kgdb.c___kgdb_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_kgdb.c___kgdb_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_args = type { i32, i32, i32, i32 }

@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.die_args*, i64)* @__kgdb_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kgdb_notify(%struct.die_args* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.die_args*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.die_args* %0, %struct.die_args** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  switch i64 %7, label %34 [
    i64 128, label %8
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @TIF_SINGLESTEP, align 4
  %10 = call i32 @test_thread_flag(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %8
  %15 = load %struct.die_args*, %struct.die_args** %4, align 8
  %16 = getelementptr inbounds %struct.die_args, %struct.die_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  %19 = load %struct.die_args*, %struct.die_args** %4, align 8
  %20 = getelementptr inbounds %struct.die_args, %struct.die_args* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.die_args*, %struct.die_args** %4, align 8
  %23 = getelementptr inbounds %struct.die_args, %struct.die_args* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.die_args*, %struct.die_args** %4, align 8
  %26 = getelementptr inbounds %struct.die_args, %struct.die_args* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kgdb_handle_exception(i32 %18, i32 %21, i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %2, %33
  %35 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %31, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @kgdb_handle_exception(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
