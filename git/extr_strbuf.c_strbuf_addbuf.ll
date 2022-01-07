; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_addbuf.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_addbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_addbuf(%struct.strbuf* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @strbuf_grow(%struct.strbuf* %5, i64 %8)
  %10 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @memcpy(i64 %16, i64 %19, i64 %22)
  %24 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %25 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @strbuf_setlen(%struct.strbuf* %24, i64 %31)
  ret void
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
