; ModuleID = '/home/carl/AnghaBench/ish/util/extr_fifo.c_fifo_read.c'
source_filename = "/home/carl/AnghaBench/ish/util/extr_fifo.c_fifo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifo = type { i64, i64, i64, i32* }

@FIFO_LAST = common dso_local global i32 0, align 4
@FIFO_PEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_read(%struct.fifo* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fifo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.fifo* %0, %struct.fifo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.fifo*, %struct.fifo** %6, align 8
  %14 = call i64 @fifo_size(%struct.fifo* %13)
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %90

17:                                               ; preds = %4
  %18 = load %struct.fifo*, %struct.fifo** %6, align 8
  %19 = getelementptr inbounds %struct.fifo, %struct.fifo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @FIFO_LAST, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.fifo*, %struct.fifo** %6, align 8
  %28 = getelementptr inbounds %struct.fifo, %struct.fifo* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %29, %30
  %32 = add i64 %26, %31
  %33 = load %struct.fifo*, %struct.fifo** %6, align 8
  %34 = getelementptr inbounds %struct.fifo, %struct.fifo* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = urem i64 %32, %35
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %25, %17
  %38 = load %struct.fifo*, %struct.fifo** %6, align 8
  %39 = getelementptr inbounds %struct.fifo, %struct.fifo* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fifo*, %struct.fifo** %6, align 8
  %42 = getelementptr inbounds %struct.fifo, %struct.fifo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %48, %37
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.fifo*, %struct.fifo** %6, align 8
  %53 = getelementptr inbounds %struct.fifo, %struct.fifo* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @memcpy(i8* %51, i32* %56, i64 %57)
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load %struct.fifo*, %struct.fifo** %6, align 8
  %63 = getelementptr inbounds %struct.fifo, %struct.fifo* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %11, align 8
  %68 = sub i64 %66, %67
  %69 = call i32 @memcpy(i8* %61, i32* %65, i64 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @FIFO_PEEK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %50
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %75, %76
  %78 = load %struct.fifo*, %struct.fifo** %6, align 8
  %79 = getelementptr inbounds %struct.fifo, %struct.fifo* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = urem i64 %77, %80
  %82 = load %struct.fifo*, %struct.fifo** %6, align 8
  %83 = getelementptr inbounds %struct.fifo, %struct.fifo* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.fifo*, %struct.fifo** %6, align 8
  %86 = getelementptr inbounds %struct.fifo, %struct.fifo* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %74, %50
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %16
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @fifo_size(%struct.fifo*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
