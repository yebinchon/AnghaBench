; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_read.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strbuf_read(%struct.strbuf* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i64 [ %22, %21 ], [ 8192, %23 ]
  %26 = trunc i64 %25 to i32
  %27 = call i32 @strbuf_grow(%struct.strbuf* %18, i32 %26)
  br label %28

28:                                               ; preds = %70, %24
  %29 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  %36 = sub i64 %35, 1
  store i64 %36, i64* %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @read_in_full(i32 %37, i8* %44, i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %28
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %54 = call i32 @strbuf_release(%struct.strbuf* %53)
  br label %59

55:                                               ; preds = %49
  %56 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @strbuf_setlen(%struct.strbuf* %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %52
  store i64 -1, i64* %4, align 8
  br label %86

60:                                               ; preds = %28
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %73

70:                                               ; preds = %60
  %71 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %72 = call i32 @strbuf_grow(%struct.strbuf* %71, i32 8192)
  br label %28

73:                                               ; preds = %69
  %74 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = sub i64 %83, %84
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %73, %59
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i64 @read_in_full(i32, i8*, i64) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
