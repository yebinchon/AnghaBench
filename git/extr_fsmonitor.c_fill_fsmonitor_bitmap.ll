; ModuleID = '/home/carl/AnghaBench/git/extr_fsmonitor.c_fill_fsmonitor_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsmonitor.c_fill_fsmonitor_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@CE_REMOVE = common dso_local global i32 0, align 4
@CE_FSMONITOR_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_fsmonitor_bitmap(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (...) @ewah_new()
  %6 = load %struct.index_state*, %struct.index_state** %2, align 8
  %7 = getelementptr inbounds %struct.index_state, %struct.index_state* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %53, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.index_state*, %struct.index_state** %2, align 8
  %11 = getelementptr inbounds %struct.index_state, %struct.index_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %8
  %15 = load %struct.index_state*, %struct.index_state** %2, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CE_REMOVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %14
  %31 = load %struct.index_state*, %struct.index_state** %2, align 8
  %32 = getelementptr inbounds %struct.index_state, %struct.index_state* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CE_FSMONITOR_VALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %30
  %44 = load %struct.index_state*, %struct.index_state** %2, align 8
  %45 = getelementptr inbounds %struct.index_state, %struct.index_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub i32 %47, %48
  %50 = call i32 @ewah_set(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %30
  br label %52

52:                                               ; preds = %51, %27
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %8

56:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ewah_new(...) #1

declare dso_local i32 @ewah_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
