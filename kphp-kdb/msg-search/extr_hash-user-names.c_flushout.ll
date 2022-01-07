; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_hash-user-names.c_flushout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_hash-user-names.c_flushout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rptr = common dso_local global i64* null, align 8
@wptr = common dso_local global i64* null, align 8
@Buff = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64*, i64** @rptr, align 8
  %4 = getelementptr inbounds i64, i64* %3, i64 2
  %5 = load i64, i64* %4, align 8
  %6 = load i64*, i64** @wptr, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %0
  %11 = load i64*, i64** @wptr, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** @rptr, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 2
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %2, align 4
  %19 = load i64*, i64** @rptr, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @write(i32 1, i64 %21, i32 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %10, %0
  %30 = load i64*, i64** @Buff, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** @wptr, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  store i64 %32, i64* %34, align 8
  %35 = load i64*, i64** @rptr, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  store i64 %32, i64* %36, align 8
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
