; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_sha1.c_sha1_hmac_starts.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_sha1.c_sha1_hmac_starts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha1_hmac_starts(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [20 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ugt i64 %9, 64
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %15 = call i32 @sha1(i8* %12, i64 %13, i8* %14)
  store i64 20, i64* %6, align 8
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %11, %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @memset(i8* %20, i32 54, i32 64)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @memset(i8* %24, i32 92, i32 64)
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %69, %17
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %37, %42
  %44 = trunc i32 %43 to i8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 %44, i8* %49, align 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = xor i32 %56, %61
  %63 = trunc i32 %62 to i8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 %63, i8* %68, align 1
  br label %69

69:                                               ; preds = %30
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %26

72:                                               ; preds = %26
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = call i32 @sha1_starts(%struct.TYPE_5__* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @sha1_update(%struct.TYPE_5__* %75, i8* %78, i32 64)
  %80 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %81 = call i32 @memset(i8* %80, i32 0, i32 20)
  ret void
}

declare dso_local i32 @sha1(i8*, i64, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sha1_starts(%struct.TYPE_5__*) #1

declare dso_local i32 @sha1_update(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
