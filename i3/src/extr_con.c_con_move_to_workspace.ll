; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_move_to_workspace.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_move_to_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Not moving, already there\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @con_move_to_workspace(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CT_WORKSPACE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = call %struct.TYPE_10__* @con_get_workspace(%struct.TYPE_10__* %20)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %11, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %24 = icmp eq %struct.TYPE_10__* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = call i32 @DLOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %36

27:                                               ; preds = %5
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = call %struct.TYPE_10__* @con_descend_focused(%struct.TYPE_10__* %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %12, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @_con_move_to_con(%struct.TYPE_10__* %30, %struct.TYPE_10__* %31, i32 1, i32 %32, i32 %33, i32 %34, i32 1)
  br label %36

36:                                               ; preds = %27, %25
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @con_get_workspace(%struct.TYPE_10__*) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local %struct.TYPE_10__* @con_descend_focused(%struct.TYPE_10__*) #1

declare dso_local i32 @_con_move_to_con(%struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
