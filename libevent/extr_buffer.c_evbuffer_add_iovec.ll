; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_add_iovec.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_add_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_iovec = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @evbuffer_add_iovec(%struct.evbuffer* %0, %struct.evbuffer_iovec* %1, i32 %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer_iovec* %1, %struct.evbuffer_iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %11 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %10)
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %17, i64 %19
  %21 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @evbuffer_expand_fast_(%struct.evbuffer* %29, i64 %30, i32 2)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %69

34:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %35
  %40 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %41 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %41, i64 %43
  %45 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %47, i64 %49
  %51 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @evbuffer_add(%struct.evbuffer* %40, i32 %46, i64 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  br label %69

56:                                               ; preds = %39
  %57 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %57, i64 %59
  %61 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %35

68:                                               ; preds = %35
  br label %69

69:                                               ; preds = %68, %55, %33
  %70 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %71 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %70)
  %72 = load i64, i64* %8, align 8
  ret i64 %72
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i64 @evbuffer_expand_fast_(%struct.evbuffer*, i64, i32) #1

declare dso_local i64 @evbuffer_add(%struct.evbuffer*, i32, i64) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
