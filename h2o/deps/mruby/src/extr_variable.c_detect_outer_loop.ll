; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_variable.c_detect_outer_loop.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_variable.c_detect_outer_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.RClass*)* @detect_outer_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_outer_loop(i32* %0, %struct.RClass* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.RClass* %1, %struct.RClass** %5, align 8
  %8 = load %struct.RClass*, %struct.RClass** %5, align 8
  store %struct.RClass* %8, %struct.RClass** %6, align 8
  %9 = load %struct.RClass*, %struct.RClass** %5, align 8
  store %struct.RClass* %9, %struct.RClass** %7, align 8
  br label %10

10:                                               ; preds = %35, %2
  %11 = load %struct.RClass*, %struct.RClass** %7, align 8
  %12 = icmp eq %struct.RClass* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.RClass*, %struct.RClass** %7, align 8
  %18 = call %struct.RClass* @outer_class(i32* %16, %struct.RClass* %17)
  store %struct.RClass* %18, %struct.RClass** %7, align 8
  %19 = load %struct.RClass*, %struct.RClass** %7, align 8
  %20 = icmp eq %struct.RClass* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.RClass*, %struct.RClass** %7, align 8
  %26 = call %struct.RClass* @outer_class(i32* %24, %struct.RClass* %25)
  store %struct.RClass* %26, %struct.RClass** %7, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.RClass*, %struct.RClass** %6, align 8
  %29 = call %struct.RClass* @outer_class(i32* %27, %struct.RClass* %28)
  store %struct.RClass* %29, %struct.RClass** %6, align 8
  %30 = load %struct.RClass*, %struct.RClass** %6, align 8
  %31 = load %struct.RClass*, %struct.RClass** %7, align 8
  %32 = icmp eq %struct.RClass* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %23
  br label %10

36:                                               ; preds = %33, %21, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.RClass* @outer_class(i32*, %struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
