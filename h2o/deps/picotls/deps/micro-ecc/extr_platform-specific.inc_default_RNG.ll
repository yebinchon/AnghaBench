; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_platform-specific.inc_default_RNG.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_platform-specific.inc_default_RNG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @default_RNG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_RNG(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* @O_CLOEXEC, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = load i32, i32* @O_CLOEXEC, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %53

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32*, i32** %4, align 8
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %43, %25
  %31 = load i64, i64* %8, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @read(i32 %34, i8* %35, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @close(i32 %41)
  store i32 0, i32* %3, align 4
  br label %53

43:                                               ; preds = %33
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %49, i8** %7, align 8
  br label %30

50:                                               ; preds = %30
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @close(i32 %51)
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %40, %23
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
