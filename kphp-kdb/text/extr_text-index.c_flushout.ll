; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_flushout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_flushout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rptr = common dso_local global i64 0, align 8
@wptr = common dso_local global i64 0, align 8
@fd = common dso_local global i32* null, align 8
@Buff = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @rptr, align 8
  %4 = load i64, i64* @wptr, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %0
  %7 = load i64, i64* @wptr, align 8
  %8 = load i64, i64* @rptr, align 8
  %9 = sub nsw i64 %7, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %2, align 4
  %11 = load i32*, i32** @fd, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @rptr, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @write(i32 %13, i64 %14, i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  br label %22

22:                                               ; preds = %6, %0
  %23 = load i64, i64* @Buff, align 8
  store i64 %23, i64* @wptr, align 8
  store i64 %23, i64* @rptr, align 8
  ret void
}

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
