; ModuleID = '/home/carl/AnghaBench/i3/src/extr_x.c_x_reinit.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_x.c_x_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.con_state = type { i32, i32, i32, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [24 x i8] c"window state not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"resetting state %p to initial\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x_reinit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.con_state*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.con_state* @state_for_frame(i32 %7)
  store %struct.con_state* %8, %struct.con_state** %3, align 8
  %9 = icmp eq %struct.con_state* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @ELOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.con_state*, %struct.con_state** %3, align 8
  %14 = call i32 @DLOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.con_state* %13)
  %15 = load %struct.con_state*, %struct.con_state** %3, align 8
  %16 = getelementptr inbounds %struct.con_state, %struct.con_state* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.con_state*, %struct.con_state** %3, align 8
  %18 = getelementptr inbounds %struct.con_state, %struct.con_state* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.con_state*, %struct.con_state** %3, align 8
  %21 = getelementptr inbounds %struct.con_state, %struct.con_state* %20, i32 0, i32 3
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.con_state*, %struct.con_state** %3, align 8
  %23 = getelementptr inbounds %struct.con_state, %struct.con_state* %22, i32 0, i32 2
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  br label %25

25:                                               ; preds = %12, %10
  ret void
}

declare dso_local %struct.con_state* @state_for_frame(i32) #1

declare dso_local i32 @ELOG(i8*) #1

declare dso_local i32 @DLOG(i8*, %struct.con_state*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
