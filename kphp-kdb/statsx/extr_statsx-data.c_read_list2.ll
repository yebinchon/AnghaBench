; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_read_list2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_read_list2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @read_list2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32 (...) @readin_int()
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @readin_int()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  %13 = mul nsw i32 2, %12
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = call i32 (i64, ...) bitcast (i32 (...)* @zzmalloc0 to i32 (i64, ...)*)(i64 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 (i32*, ...) bitcast (i32 (...)* @assert to i32 (i32*, ...)*)(i32* %19)
  %21 = load i32, i32* %1, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* %2, align 4
  %32 = mul nsw i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = call i32 (i8*, i64, ...) bitcast (i32 (...)* @readin to i32 (i8*, i64, ...)*)(i8* %30, i64 %34)
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32 @readin_int(...) #1

declare dso_local i32 @assert(...) #1

declare dso_local i32 @zzmalloc0(...) #1

declare dso_local i32 @readin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
