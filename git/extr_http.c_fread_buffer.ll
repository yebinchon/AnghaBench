; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_fread_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_fread_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fread_buffer(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = mul i64 %11, %12
  store i64 %13, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.buffer*
  store %struct.buffer* %15, %struct.buffer** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.buffer*, %struct.buffer** %10, align 8
  %18 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.buffer*, %struct.buffer** %10, align 8
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  %25 = icmp ugt i64 %16, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.buffer*, %struct.buffer** %10, align 8
  %28 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.buffer*, %struct.buffer** %10, align 8
  %32 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %26, %4
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.buffer*, %struct.buffer** %10, align 8
  %38 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.buffer*, %struct.buffer** %10, align 8
  %42 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @memcpy(i8* %36, i64 %44, i64 %45)
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.buffer*, %struct.buffer** %10, align 8
  %49 = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %6, align 8
  %54 = udiv i64 %52, %53
  ret i64 %54
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
