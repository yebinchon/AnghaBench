; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv_default_loop.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv_default_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_loop_ptr = common dso_local global i32* null, align 8
@default_loop_struct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @uv_default_loop() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @default_loop_ptr, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32*, i32** @default_loop_ptr, align 8
  store i32* %5, i32** %1, align 8
  br label %12

6:                                                ; preds = %0
  %7 = call i64 @uv_loop_init(i32* @default_loop_struct)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32* null, i32** %1, align 8
  br label %12

10:                                               ; preds = %6
  store i32* @default_loop_struct, i32** @default_loop_ptr, align 8
  %11 = load i32*, i32** @default_loop_ptr, align 8
  store i32* %11, i32** %1, align 8
  br label %12

12:                                               ; preds = %10, %9, %4
  %13 = load i32*, i32** %1, align 8
  ret i32* %13
}

declare dso_local i64 @uv_loop_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
