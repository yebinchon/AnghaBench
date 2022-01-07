; ModuleID = '/home/carl/AnghaBench/git/extr_progress.c_display_throughput.c'
source_filename = "/home/carl/AnghaBench/git/extr_progress.c_display_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.progress = type { i32, %struct.throughput* }
%struct.throughput = type { i32, i32, i32, i32, i32, i32*, i64, i32*, i32 }

@TP_IDX_MAX = common dso_local global i32 0, align 4
@progress_update = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_throughput(%struct.progress* %0, i32 %1) #0 {
  %3 = alloca %struct.progress*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.throughput*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.progress* %0, %struct.progress** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.progress*, %struct.progress** %3, align 8
  %11 = icmp ne %struct.progress* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %150

13:                                               ; preds = %2
  %14 = load %struct.progress*, %struct.progress** %3, align 8
  %15 = getelementptr inbounds %struct.progress, %struct.progress* %14, i32 0, i32 1
  %16 = load %struct.throughput*, %struct.throughput** %15, align 8
  store %struct.throughput* %16, %struct.throughput** %5, align 8
  %17 = load %struct.progress*, %struct.progress** %3, align 8
  %18 = call i32 @progress_getnanotime(%struct.progress* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.throughput*, %struct.throughput** %5, align 8
  %20 = icmp ne %struct.throughput* %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %13
  %22 = call %struct.throughput* @xcalloc(i32 1, i32 56)
  store %struct.throughput* %22, %struct.throughput** %5, align 8
  %23 = load %struct.progress*, %struct.progress** %3, align 8
  %24 = getelementptr inbounds %struct.progress, %struct.progress* %23, i32 0, i32 1
  store %struct.throughput* %22, %struct.throughput** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.throughput*, %struct.throughput** %5, align 8
  %27 = getelementptr inbounds %struct.throughput, %struct.throughput* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.throughput*, %struct.throughput** %5, align 8
  %29 = getelementptr inbounds %struct.throughput, %struct.throughput* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.throughput*, %struct.throughput** %5, align 8
  %32 = getelementptr inbounds %struct.throughput, %struct.throughput* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.throughput*, %struct.throughput** %5, align 8
  %34 = getelementptr inbounds %struct.throughput, %struct.throughput* %33, i32 0, i32 8
  %35 = call i32 @strbuf_init(i32* %34, i32 0)
  br label %150

36:                                               ; preds = %13
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.throughput*, %struct.throughput** %5, align 8
  %39 = getelementptr inbounds %struct.throughput, %struct.throughput* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.throughput*, %struct.throughput** %5, align 8
  %42 = getelementptr inbounds %struct.throughput, %struct.throughput* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %40, %43
  %45 = icmp sle i32 %44, 500000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %150

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.throughput*, %struct.throughput** %5, align 8
  %50 = getelementptr inbounds %struct.throughput, %struct.throughput* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  %53 = mul nsw i32 %52, 4398
  %54 = ashr i32 %53, 32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.throughput*, %struct.throughput** %5, align 8
  %57 = getelementptr inbounds %struct.throughput, %struct.throughput* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.throughput*, %struct.throughput** %5, align 8
  %62 = getelementptr inbounds %struct.throughput, %struct.throughput* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.throughput*, %struct.throughput** %5, align 8
  %65 = getelementptr inbounds %struct.throughput, %struct.throughput* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.throughput*, %struct.throughput** %5, align 8
  %68 = getelementptr inbounds %struct.throughput, %struct.throughput* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.throughput*, %struct.throughput** %5, align 8
  %73 = getelementptr inbounds %struct.throughput, %struct.throughput* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = add i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.throughput*, %struct.throughput** %5, align 8
  %77 = getelementptr inbounds %struct.throughput, %struct.throughput* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.throughput*, %struct.throughput** %5, align 8
  %80 = getelementptr inbounds %struct.throughput, %struct.throughput* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = udiv i32 %78, %81
  store i32 %82, i32* %9, align 4
  %83 = load %struct.throughput*, %struct.throughput** %5, align 8
  %84 = getelementptr inbounds %struct.throughput, %struct.throughput* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.throughput*, %struct.throughput** %5, align 8
  %87 = getelementptr inbounds %struct.throughput, %struct.throughput* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.throughput*, %struct.throughput** %5, align 8
  %92 = getelementptr inbounds %struct.throughput, %struct.throughput* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sub i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.throughput*, %struct.throughput** %5, align 8
  %96 = getelementptr inbounds %struct.throughput, %struct.throughput* %95, i32 0, i32 7
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.throughput*, %struct.throughput** %5, align 8
  %99 = getelementptr inbounds %struct.throughput, %struct.throughput* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.throughput*, %struct.throughput** %5, align 8
  %104 = getelementptr inbounds %struct.throughput, %struct.throughput* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = sub i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.throughput*, %struct.throughput** %5, align 8
  %109 = getelementptr inbounds %struct.throughput, %struct.throughput* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.throughput*, %struct.throughput** %5, align 8
  %112 = getelementptr inbounds %struct.throughput, %struct.throughput* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32 %107, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.throughput*, %struct.throughput** %5, align 8
  %117 = getelementptr inbounds %struct.throughput, %struct.throughput* %116, i32 0, i32 7
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.throughput*, %struct.throughput** %5, align 8
  %120 = getelementptr inbounds %struct.throughput, %struct.throughput* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %115, i32* %122, align 4
  %123 = load %struct.throughput*, %struct.throughput** %5, align 8
  %124 = getelementptr inbounds %struct.throughput, %struct.throughput* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 1
  %127 = load i32, i32* @TP_IDX_MAX, align 4
  %128 = sext i32 %127 to i64
  %129 = urem i64 %126, %128
  %130 = load %struct.throughput*, %struct.throughput** %5, align 8
  %131 = getelementptr inbounds %struct.throughput, %struct.throughput* %130, i32 0, i32 6
  store i64 %129, i64* %131, align 8
  %132 = load %struct.throughput*, %struct.throughput** %5, align 8
  %133 = getelementptr inbounds %struct.throughput, %struct.throughput* %132, i32 0, i32 8
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @throughput_string(i32* %133, i32 %134, i32 %135)
  %137 = load %struct.progress*, %struct.progress** %3, align 8
  %138 = getelementptr inbounds %struct.progress, %struct.progress* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, -1
  br i1 %140, label %141, label %150

141:                                              ; preds = %47
  %142 = load i64, i64* @progress_update, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.progress*, %struct.progress** %3, align 8
  %146 = load %struct.progress*, %struct.progress** %3, align 8
  %147 = getelementptr inbounds %struct.progress, %struct.progress* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @display(%struct.progress* %145, i32 %148, i32* null)
  br label %150

150:                                              ; preds = %12, %21, %46, %144, %141, %47
  ret void
}

declare dso_local i32 @progress_getnanotime(%struct.progress*) #1

declare dso_local %struct.throughput* @xcalloc(i32, i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @throughput_string(i32*, i32, i32) #1

declare dso_local i32 @display(%struct.progress*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
