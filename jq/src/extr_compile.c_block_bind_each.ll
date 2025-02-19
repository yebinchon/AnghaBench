; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_block_bind_each.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_block_bind_each.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

@OP_HAS_BINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*, i32)* @block_bind_each to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_bind_each(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call i32 @block_has_only_binders(%struct.TYPE_8__* %13, i32 %11)
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @OP_HAS_BINDING, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %8, align 8
  br label %21

21:                                               ; preds = %35, %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = call i32 @inst_block(%struct.TYPE_8__* %25)
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i64 @block_bind_subblock(i32 %26, %struct.TYPE_8__* %29, i32 %27, i32 0)
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %24
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %8, align 8
  br label %21

39:                                               ; preds = %21
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @block_has_only_binders(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @block_bind_subblock(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @inst_block(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
