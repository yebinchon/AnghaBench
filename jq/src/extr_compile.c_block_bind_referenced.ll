; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_block_bind_referenced.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_block_bind_referenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_HAS_BINDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_bind_referenced(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @block_has_only_binders(i32 %9, i32 %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @OP_HAS_BINDING, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %34, %3
  %17 = call i32* @block_take_last(i32* %4)
  store i32* %17, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @inst_block(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @block_bind_subblock(i32 %22, i32 %23, i32 %24, i32 0)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @block_free(i32 %28)
  br label %34

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @BLOCK(i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %27
  br label %16

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @block_has_only_binders(i32, i32) #1

declare dso_local i32* @block_take_last(i32*) #1

declare dso_local i32 @inst_block(i32*) #1

declare dso_local i64 @block_bind_subblock(i32, i32, i32, i32) #1

declare dso_local i32 @block_free(i32) #1

declare dso_local i32 @BLOCK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
