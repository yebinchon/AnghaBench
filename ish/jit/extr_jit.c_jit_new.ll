; ModuleID = '/home/carl/AnghaBench/ish/jit/extr_jit.c_jit_new.c'
source_filename = "/home/carl/AnghaBench/ish/jit/extr_jit.c_jit_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit = type { i32, i32, %struct.mem* }
%struct.mem = type { i32 }

@JIT_INITIAL_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.jit* @jit_new(%struct.mem* %0) #0 {
  %2 = alloca %struct.mem*, align 8
  %3 = alloca %struct.jit*, align 8
  store %struct.mem* %0, %struct.mem** %2, align 8
  %4 = call %struct.jit* @calloc(i32 1, i32 16)
  store %struct.jit* %4, %struct.jit** %3, align 8
  %5 = load %struct.mem*, %struct.mem** %2, align 8
  %6 = load %struct.jit*, %struct.jit** %3, align 8
  %7 = getelementptr inbounds %struct.jit, %struct.jit* %6, i32 0, i32 2
  store %struct.mem* %5, %struct.mem** %7, align 8
  %8 = load %struct.jit*, %struct.jit** %3, align 8
  %9 = load i32, i32* @JIT_INITIAL_HASH_SIZE, align 4
  %10 = call i32 @jit_resize_hash(%struct.jit* %8, i32 %9)
  %11 = load %struct.jit*, %struct.jit** %3, align 8
  %12 = getelementptr inbounds %struct.jit, %struct.jit* %11, i32 0, i32 1
  %13 = call i32 @list_init(i32* %12)
  %14 = load %struct.jit*, %struct.jit** %3, align 8
  %15 = getelementptr inbounds %struct.jit, %struct.jit* %14, i32 0, i32 0
  %16 = call i32 @lock_init(i32* %15)
  %17 = load %struct.jit*, %struct.jit** %3, align 8
  ret %struct.jit* %17
}

declare dso_local %struct.jit* @calloc(i32, i32) #1

declare dso_local i32 @jit_resize_hash(%struct.jit*, i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
