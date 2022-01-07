; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberLn.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberLn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i64, i32 }

@DECUNUSED = common dso_local global i32 0, align 4
@DEC_Invalid_operation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @decNumberLn(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %10 = call i32 @decCheckMath(%struct.TYPE_24__* %8, %struct.TYPE_25__* %9, i32* %7)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %17 = call i32 @decLnOp(%struct.TYPE_24__* %14, %struct.TYPE_24__* %15, %struct.TYPE_25__* %16, i32* %7)
  br label %18

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = call i32 @decStatus(%struct.TYPE_24__* %23, i32 %24, %struct.TYPE_25__* %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %28
}

declare dso_local i32 @decCheckMath(%struct.TYPE_24__*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @decLnOp(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @decStatus(%struct.TYPE_24__*, i32, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
