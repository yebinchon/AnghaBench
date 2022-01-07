; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_ComputeDistanceShortcut.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_ComputeDistanceShortcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, %struct.TYPE_8__*)* @ComputeDistanceShortcut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ComputeDistanceShortcut(i64 %0, i64 %1, i64 %2, i64 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %16
  %18 = call i64 @ZopfliNodeCopyLength(%struct.TYPE_8__* %17)
  store i64 %18, i64* %12, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = call i64 @ZopfliNodeCopyDistance(%struct.TYPE_8__* %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %67

31:                                               ; preds = %5
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %12, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %35, %36
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %37, %38
  %40 = icmp ule i64 %34, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %31
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %43, %44
  %46 = icmp ule i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %49
  %51 = call i64 @ZopfliNodeDistanceCode(%struct.TYPE_8__* %50)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %67

56:                                               ; preds = %47, %41, %31
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %12, align 8
  %60 = sub i64 %58, %59
  %61 = load i64, i64* %13, align 8
  %62 = sub i64 %60, %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %56, %53, %30
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @ZopfliNodeCopyLength(%struct.TYPE_8__*) #1

declare dso_local i64 @ZopfliNodeCopyDistance(%struct.TYPE_8__*) #1

declare dso_local i64 @ZopfliNodeDistanceCode(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
