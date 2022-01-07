; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_zzmalloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_zzmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@total_memory_used = common dso_local global i32 0, align 4
@MAX_ZALLOC = common dso_local global i32 0, align 4
@zalloc_memory_used = common dso_local global i32 0, align 4
@malloc_memory_used = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zzmalloc(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @total_memory_used, align 4
  %6 = add nsw i32 %5, %4
  store i32 %6, i32* @total_memory_used, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_ZALLOC, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @zalloc_memory_used, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* @zalloc_memory_used, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @zmalloc(i32 %14)
  store i8* %15, i8** %2, align 8
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @malloc_memory_used, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* @malloc_memory_used, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i8* @malloc(i32 %20)
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
