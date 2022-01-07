; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_rv_alloc.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_rv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dtoa_context*, i32)* @rv_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rv_alloc(%struct.dtoa_context* %0, i32 %1) #0 {
  %3 = alloca %struct.dtoa_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.dtoa_context* %0, %struct.dtoa_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 4, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %16, %2
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 -4, %9
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.dtoa_context*, %struct.dtoa_context** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @Balloc(%struct.dtoa_context* %20, i32 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = bitcast i32* %27 to i8*
  ret i8* %28
}

declare dso_local i64 @Balloc(%struct.dtoa_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
