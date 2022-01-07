; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_create_all_outbound_connections.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_create_all_outbound_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@ready_targets = common dso_local global i64 0, align 8
@ready_outbound_connections = common dso_local global i64 0, align 8
@allocated_targets = common dso_local global i32 0, align 4
@Targets = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_all_outbound_connections() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @get_utime_monotonic()
  store i64 0, i64* @ready_targets, align 8
  store i64 0, i64* @ready_outbound_connections, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %54, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @allocated_targets, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %57

8:                                                ; preds = %4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Targets, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Targets, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Targets, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = call i64 @create_new_connections(%struct.TYPE_3__* %28)
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %1, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Targets, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %24
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Targets, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ready_outbound_connections, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* @ready_outbound_connections, align 8
  %50 = load i64, i64* @ready_targets, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* @ready_targets, align 8
  br label %52

52:                                               ; preds = %41, %24
  br label %53

53:                                               ; preds = %52, %16, %8
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %4

57:                                               ; preds = %4
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @get_utime_monotonic(...) #1

declare dso_local i64 @create_new_connections(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
