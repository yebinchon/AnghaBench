; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_inst_set_target.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_inst_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }

@OP_HAS_BRANCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inst_set_target(i32 %0, %struct.TYPE_9__* %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = bitcast %struct.TYPE_10__* %5 to { i32, %struct.TYPE_9__* }*
  %8 = getelementptr inbounds { i32, %struct.TYPE_9__* }, { i32, %struct.TYPE_9__* }* %7, i32 0, i32 0
  store i32 %0, i32* %8, align 8
  %9 = getelementptr inbounds { i32, %struct.TYPE_9__* }, { i32, %struct.TYPE_9__* }* %7, i32 0, i32 1
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  %10 = bitcast %struct.TYPE_10__* %6 to { i32, %struct.TYPE_9__* }*
  %11 = getelementptr inbounds { i32, %struct.TYPE_9__* }, { i32, %struct.TYPE_9__* }* %10, i32 0, i32 0
  store i32 %2, i32* %11, align 8
  %12 = getelementptr inbounds { i32, %struct.TYPE_9__* }, { i32, %struct.TYPE_9__* }* %10, i32 0, i32 1
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %12, align 8
  %13 = bitcast %struct.TYPE_10__* %5 to { i32, %struct.TYPE_9__* }*
  %14 = getelementptr inbounds { i32, %struct.TYPE_9__* }, { i32, %struct.TYPE_9__* }* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds { i32, %struct.TYPE_9__* }, { i32, %struct.TYPE_9__* }* %13, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call i32 @block_is_single(i32 %15, %struct.TYPE_9__* %17)
  %19 = call i32 @assert(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_11__* @opcode_describe(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OP_HAS_BRANCH, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @assert(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @assert(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @block_is_single(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_11__* @opcode_describe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
