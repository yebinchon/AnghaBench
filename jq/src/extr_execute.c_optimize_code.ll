; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_optimize_code.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_optimize_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytecode = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bytecode* (%struct.bytecode*)* @optimize_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bytecode* @optimize_code(%struct.bytecode* %0) #0 {
  %2 = alloca %struct.bytecode*, align 8
  %3 = alloca i32*, align 8
  store %struct.bytecode* %0, %struct.bytecode** %2, align 8
  %4 = load %struct.bytecode*, %struct.bytecode** %2, align 8
  %5 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.bytecode*, %struct.bytecode** %2, align 8
  %10 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.bytecode*, %struct.bytecode** %2, align 8
  %13 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = icmp ult i32* %8, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %7
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %25 [
    i32 128, label %21
  ]

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @tail_call_analyze(i32* %22)
  %24 = load i32*, i32** %3, align 8
  store i32 %23, i32* %24, align 4
  br label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @bytecode_operation_length(i32* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %3, align 8
  br label %7

32:                                               ; preds = %7
  %33 = load %struct.bytecode*, %struct.bytecode** %2, align 8
  ret %struct.bytecode* %33
}

declare dso_local i32 @tail_call_analyze(i32*) #1

declare dso_local i32 @bytecode_operation_length(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
