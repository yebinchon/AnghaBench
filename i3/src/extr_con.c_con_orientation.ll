; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_orientation.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_orientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VERT = common dso_local global i32 0, align 4
@HORIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"Someone called con_orientation() on a con with L_DEFAULT, this is a bug in the code.\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"con_orientation() called on dockarea/output (%d) container %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @con_orientation(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %21 [
    i32 130, label %7
    i32 129, label %7
    i32 131, label %9
    i32 128, label %9
    i32 134, label %11
    i32 133, label %14
    i32 132, label %14
  ]

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @VERT, align 4
  store i32 %8, i32* %2, align 4
  br label %23

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @HORIZ, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @assert(i32 0)
  br label %14

14:                                               ; preds = %1, %1, %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %17, %struct.TYPE_3__* %18)
  %20 = call i32 @assert(i32 0)
  br label %21

21:                                               ; preds = %14, %1
  %22 = call i32 @assert(i32 0)
  br label %23

23:                                               ; preds = %21, %9, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @ELOG(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
