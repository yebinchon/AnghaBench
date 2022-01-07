; ModuleID = '/home/carl/AnghaBench/libui/common/extr_opentype.c_featurecmp.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_opentype.c_featurecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feature = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @featurecmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @featurecmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.feature*, align 8
  %7 = alloca %struct.feature*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.feature*
  store %struct.feature* %9, %struct.feature** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.feature*
  store %struct.feature* %11, %struct.feature** %7, align 8
  %12 = load %struct.feature*, %struct.feature** %6, align 8
  %13 = getelementptr inbounds %struct.feature, %struct.feature* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.feature*, %struct.feature** %7, align 8
  %16 = getelementptr inbounds %struct.feature, %struct.feature* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.feature*, %struct.feature** %6, align 8
  %21 = getelementptr inbounds %struct.feature, %struct.feature* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.feature*, %struct.feature** %7, align 8
  %24 = getelementptr inbounds %struct.feature, %struct.feature* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @intdiff(i64 %22, i64 %25)
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %2
  %28 = load %struct.feature*, %struct.feature** %6, align 8
  %29 = getelementptr inbounds %struct.feature, %struct.feature* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.feature*, %struct.feature** %7, align 8
  %32 = getelementptr inbounds %struct.feature, %struct.feature* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.feature*, %struct.feature** %6, align 8
  %37 = getelementptr inbounds %struct.feature, %struct.feature* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.feature*, %struct.feature** %7, align 8
  %40 = getelementptr inbounds %struct.feature, %struct.feature* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @intdiff(i64 %38, i64 %41)
  store i32 %42, i32* %3, align 4
  br label %67

43:                                               ; preds = %27
  %44 = load %struct.feature*, %struct.feature** %6, align 8
  %45 = getelementptr inbounds %struct.feature, %struct.feature* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.feature*, %struct.feature** %7, align 8
  %48 = getelementptr inbounds %struct.feature, %struct.feature* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.feature*, %struct.feature** %6, align 8
  %53 = getelementptr inbounds %struct.feature, %struct.feature* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.feature*, %struct.feature** %7, align 8
  %56 = getelementptr inbounds %struct.feature, %struct.feature* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @intdiff(i64 %54, i64 %57)
  store i32 %58, i32* %3, align 4
  br label %67

59:                                               ; preds = %43
  %60 = load %struct.feature*, %struct.feature** %6, align 8
  %61 = getelementptr inbounds %struct.feature, %struct.feature* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.feature*, %struct.feature** %7, align 8
  %64 = getelementptr inbounds %struct.feature, %struct.feature* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @intdiff(i64 %62, i64 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %51, %35, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @intdiff(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
