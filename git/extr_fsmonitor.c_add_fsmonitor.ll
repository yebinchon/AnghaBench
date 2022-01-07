; ModuleID = '/home/carl/AnghaBench/git/extr_fsmonitor.c_add_fsmonitor.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsmonitor.c_add_fsmonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__**, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@trace_fsmonitor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"add fsmonitor\00", align 1
@FSMONITOR_CHANGED = common dso_local global i32 0, align 4
@CE_FSMONITOR_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_fsmonitor(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %4 = load %struct.index_state*, %struct.index_state** %2, align 8
  %5 = getelementptr inbounds %struct.index_state, %struct.index_state* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %1
  %9 = call i32 @trace_printf_key(i32* @trace_fsmonitor, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @FSMONITOR_CHANGED, align 4
  %11 = load %struct.index_state*, %struct.index_state** %2, align 8
  %12 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = call i32 (...) @getnanotime()
  %16 = load %struct.index_state*, %struct.index_state** %2, align 8
  %17 = getelementptr inbounds %struct.index_state, %struct.index_state* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %37, %8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.index_state*, %struct.index_state** %2, align 8
  %21 = getelementptr inbounds %struct.index_state, %struct.index_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i32, i32* @CE_FSMONITOR_VALID, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.index_state*, %struct.index_state** %2, align 8
  %28 = getelementptr inbounds %struct.index_state, %struct.index_state* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %26
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load %struct.index_state*, %struct.index_state** %2, align 8
  %42 = getelementptr inbounds %struct.index_state, %struct.index_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.index_state*, %struct.index_state** %2, align 8
  %47 = call i32 @add_untracked_cache(%struct.index_state* %46)
  %48 = load %struct.index_state*, %struct.index_state** %2, align 8
  %49 = getelementptr inbounds %struct.index_state, %struct.index_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.index_state*, %struct.index_state** %2, align 8
  %54 = call i32 @refresh_fsmonitor(%struct.index_state* %53)
  br label %55

55:                                               ; preds = %52, %1
  ret void
}

declare dso_local i32 @trace_printf_key(i32*, i8*) #1

declare dso_local i32 @getnanotime(...) #1

declare dso_local i32 @add_untracked_cache(%struct.index_state*) #1

declare dso_local i32 @refresh_fsmonitor(%struct.index_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
