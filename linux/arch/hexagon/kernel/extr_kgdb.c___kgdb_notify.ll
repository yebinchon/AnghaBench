; ModuleID = '/home/carl/AnghaBench/linux/arch/hexagon/kernel/extr_kgdb.c___kgdb_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/hexagon/kernel/extr_kgdb.c___kgdb_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_args = type { i32, i32, i32, i32 }

@kgdb_active = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.die_args*, i64)* @__kgdb_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kgdb_notify(%struct.die_args* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.die_args*, align 8
  %5 = alloca i64, align 8
  store %struct.die_args* %0, %struct.die_args** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = call i32 @atomic_read(i32* @kgdb_active)
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = call i32 (...) @smp_processor_id()
  %10 = load %struct.die_args*, %struct.die_args** %4, align 8
  %11 = getelementptr inbounds %struct.die_args, %struct.die_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kgdb_nmicallback(i32 %9, i32 %12)
  %14 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.die_args*, %struct.die_args** %4, align 8
  %17 = getelementptr inbounds %struct.die_args, %struct.die_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @user_mode(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %15
  %24 = load %struct.die_args*, %struct.die_args** %4, align 8
  %25 = getelementptr inbounds %struct.die_args, %struct.die_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = load %struct.die_args*, %struct.die_args** %4, align 8
  %29 = getelementptr inbounds %struct.die_args, %struct.die_args* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.die_args*, %struct.die_args** %4, align 8
  %32 = getelementptr inbounds %struct.die_args, %struct.die_args* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.die_args*, %struct.die_args** %4, align 8
  %35 = getelementptr inbounds %struct.die_args, %struct.die_args* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @kgdb_handle_exception(i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %23
  %42 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %39, %21, %8
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kgdb_nmicallback(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @user_mode(i32) #1

declare dso_local i64 @kgdb_handle_exception(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
