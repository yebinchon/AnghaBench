; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-connections.c_tcp_prepare_iovec.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-connections.c_tcp_prepare_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64 }
%struct.raw_message = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_prepare_iovec(%struct.iovec* %0, i32* %1, i32 %2, %struct.raw_message* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.raw_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.raw_message* %3, %struct.raw_message** %9, align 8
  %12 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %13 = load %struct.iovec*, %struct.iovec** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %16 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rwm_prepare_iovec(%struct.raw_message* %12, %struct.iovec* %13, i32 %14, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %39, %21
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.iovec*, %struct.iovec** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i64 %31
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %45 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %57

51:                                               ; preds = %4
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %55 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %42
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @rwm_prepare_iovec(%struct.raw_message*, %struct.iovec*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
