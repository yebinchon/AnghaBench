; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_range.c_mrb_gc_mark_range.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_range.c_mrb_gc_mark_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RRange = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_gc_mark_range(i32* %0, %struct.RRange* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.RRange*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.RRange* %1, %struct.RRange** %4, align 8
  %5 = load %struct.RRange*, %struct.RRange** %4, align 8
  %6 = call i64 @RANGE_INITIALIZED_P(%struct.RRange* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.RRange*, %struct.RRange** %4, align 8
  %11 = call i32 @RANGE_BEG(%struct.RRange* %10)
  %12 = call i32 @mrb_gc_mark_value(i32* %9, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.RRange*, %struct.RRange** %4, align 8
  %15 = call i32 @RANGE_END(%struct.RRange* %14)
  %16 = call i32 @mrb_gc_mark_value(i32* %13, i32 %15)
  br label %17

17:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @RANGE_INITIALIZED_P(%struct.RRange*) #1

declare dso_local i32 @mrb_gc_mark_value(i32*, i32) #1

declare dso_local i32 @RANGE_BEG(%struct.RRange*) #1

declare dso_local i32 @RANGE_END(%struct.RRange*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
