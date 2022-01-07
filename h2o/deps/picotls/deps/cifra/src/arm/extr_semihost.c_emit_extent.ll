; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_semihost.c_emit_extent.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_semihost.c_emit_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @emit_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_extent(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [33 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 32, i64* %6, align 8
  %8 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 32
  store i8 0, i8* %8, align 16
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = ptrtoint i8* %9 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %19, %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0
  %21 = load i8*, i8** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @memcpy(i8* %20, i8* %21, i64 %22)
  %24 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0
  %25 = call i32 @emit(i8* %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 %29
  store i8* %31, i8** %3, align 8
  br label %15

32:                                               ; preds = %15
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %45

36:                                               ; preds = %32
  %37 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0
  %38 = load i8*, i8** %3, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 %41
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0
  %44 = call i32 @emit(i8* %43)
  br label %45

45:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @emit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
