; ModuleID = '/home/carl/AnghaBench/ish/util/extr_fifo.c_fifo_write.c'
source_filename = "/home/carl/AnghaBench/ish/util/extr_fifo.c_fifo_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifo = type { i64, i64, i64, i32* }

@FIFO_OVERWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_write(%struct.fifo* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fifo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.fifo* %0, %struct.fifo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.fifo*, %struct.fifo** %6, align 8
  %15 = call i64 @fifo_remaining(%struct.fifo* %14)
  %16 = icmp ugt i64 %13, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @FIFO_OVERWRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %91

23:                                               ; preds = %17
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.fifo*, %struct.fifo** %6, align 8
  %26 = call i64 @fifo_remaining(%struct.fifo* %25)
  %27 = sub i64 %24, %26
  store i64 %27, i64* %10, align 8
  %28 = load %struct.fifo*, %struct.fifo** %6, align 8
  %29 = getelementptr inbounds %struct.fifo, %struct.fifo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.fifo*, %struct.fifo** %6, align 8
  %34 = getelementptr inbounds %struct.fifo, %struct.fifo* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = urem i64 %32, %35
  %37 = load %struct.fifo*, %struct.fifo** %6, align 8
  %38 = getelementptr inbounds %struct.fifo, %struct.fifo* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.fifo*, %struct.fifo** %6, align 8
  %41 = getelementptr inbounds %struct.fifo, %struct.fifo* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %23, %4
  %45 = load %struct.fifo*, %struct.fifo** %6, align 8
  %46 = getelementptr inbounds %struct.fifo, %struct.fifo* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fifo*, %struct.fifo** %6, align 8
  %49 = getelementptr inbounds %struct.fifo, %struct.fifo* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %47, %50
  %52 = load %struct.fifo*, %struct.fifo** %6, align 8
  %53 = getelementptr inbounds %struct.fifo, %struct.fifo* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = urem i64 %51, %54
  store i64 %55, i64* %11, align 8
  %56 = load %struct.fifo*, %struct.fifo** %6, align 8
  %57 = getelementptr inbounds %struct.fifo, %struct.fifo* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = sub i64 %58, %59
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %64, %44
  %67 = load %struct.fifo*, %struct.fifo** %6, align 8
  %68 = getelementptr inbounds %struct.fifo, %struct.fifo* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @memcpy(i32* %71, i8* %72, i64 %73)
  %75 = load %struct.fifo*, %struct.fifo** %6, align 8
  %76 = getelementptr inbounds %struct.fifo, %struct.fifo* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %12, align 8
  %84 = sub i64 %82, %83
  %85 = call i32 @memcpy(i32* %78, i8* %81, i64 %84)
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.fifo*, %struct.fifo** %6, align 8
  %88 = getelementptr inbounds %struct.fifo, %struct.fifo* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %86
  store i64 %90, i64* %88, align 8
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %66, %22
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @fifo_remaining(%struct.fifo*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
