; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_get_lease_target_by_pid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_get_lease_target_by_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32 }

@cur_lease_target_ip = common dso_local global i32 0, align 4
@cur_lease_target_port = common dso_local global i32 0, align 4
@cur_lease_target_ct = common dso_local global %struct.conn_target* null, align 8
@cur_lease_target = common dso_local global i32 0, align 4
@Targets = common dso_local global %struct.conn_target* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_lease_target_by_pid(i32 %0, i32 %1, %struct.conn_target* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.conn_target*, align 8
  %8 = alloca %struct.conn_target*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.conn_target* %2, %struct.conn_target** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @cur_lease_target_ip, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @cur_lease_target_port, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.conn_target*, %struct.conn_target** %7, align 8
  %18 = load %struct.conn_target*, %struct.conn_target** @cur_lease_target_ct, align 8
  %19 = icmp eq %struct.conn_target* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @cur_lease_target, align 4
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %16, %12, %3
  %23 = load i32, i32* @cur_lease_target, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.conn_target*, %struct.conn_target** @Targets, align 8
  %27 = load i32, i32* @cur_lease_target, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %26, i64 %28
  store %struct.conn_target* %29, %struct.conn_target** %8, align 8
  %30 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %31 = call i32 @destroy_target(%struct.conn_target* %30)
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* @cur_lease_target_ip, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* @cur_lease_target_port, align 4
  %35 = load %struct.conn_target*, %struct.conn_target** %7, align 8
  store %struct.conn_target* %35, %struct.conn_target** @cur_lease_target_ct, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.conn_target*, %struct.conn_target** %7, align 8
  %39 = call i32 @get_target_by_pid(i32 %36, i32 %37, %struct.conn_target* %38)
  store i32 %39, i32* @cur_lease_target, align 4
  %40 = load i32, i32* @cur_lease_target, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %20
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @destroy_target(%struct.conn_target*) #1

declare dso_local i32 @get_target_by_pid(i32, i32, %struct.conn_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
