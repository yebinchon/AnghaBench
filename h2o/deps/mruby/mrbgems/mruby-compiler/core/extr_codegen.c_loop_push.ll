; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_loop_push.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_loop_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopinfo = type { i32, i32, i32, %struct.loopinfo*, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.loopinfo*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.loopinfo* (%struct.TYPE_4__*, i32)* @loop_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.loopinfo* @loop_push(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loopinfo*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call i64 @codegen_palloc(%struct.TYPE_4__* %6, i32 56)
  %8 = inttoptr i64 %7 to %struct.loopinfo*
  store %struct.loopinfo* %8, %struct.loopinfo** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %11 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %13 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %15 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %17 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %19 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.loopinfo*, %struct.loopinfo** %21, align 8
  %23 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %24 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %23, i32 0, i32 3
  store %struct.loopinfo* %22, %struct.loopinfo** %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %29 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = call i32 (...) @cursp()
  %31 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %32 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.loopinfo* %33, %struct.loopinfo** %35, align 8
  %36 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  ret %struct.loopinfo* %36
}

declare dso_local i64 @codegen_palloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cursp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
