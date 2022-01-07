; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv_loop_new.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv_loop_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @uv_loop_new() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* @uv__malloc(i32 4)
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %16

7:                                                ; preds = %0
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @uv_loop_init(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @uv__free(i32* %12)
  store i32* null, i32** %1, align 8
  br label %16

14:                                               ; preds = %7
  %15 = load i32*, i32** %2, align 8
  store i32* %15, i32** %1, align 8
  br label %16

16:                                               ; preds = %14, %11, %6
  %17 = load i32*, i32** %1, align 8
  ret i32* %17
}

declare dso_local i32* @uv__malloc(i32) #1

declare dso_local i64 @uv_loop_init(i32*) #1

declare dso_local i32 @uv__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
