; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_append_blob.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_append_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_output = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.forth_output*, i8*, i64)* @append_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_blob(%struct.forth_output* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.forth_output*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.forth_output* %0, %struct.forth_output** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.forth_output*, %struct.forth_output** %5, align 8
  %10 = icmp eq %struct.forth_output* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %43

12:                                               ; preds = %3
  %13 = load %struct.forth_output*, %struct.forth_output** %5, align 8
  %14 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = sub i64 8, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %43

24:                                               ; preds = %12
  %25 = load %struct.forth_output*, %struct.forth_output** %5, align 8
  %26 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.forth_output*, %struct.forth_output** %5, align 8
  %29 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %27, %31
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy(i64 %32, i8* %33, i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.forth_output*, %struct.forth_output** %5, align 8
  %38 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %24, %23, %11
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
