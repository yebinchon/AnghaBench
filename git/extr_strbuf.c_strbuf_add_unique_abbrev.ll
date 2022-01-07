; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_add_unique_abbrev.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_add_unique_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }
%struct.object_id = type { i32 }

@GIT_MAX_HEXSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_add_unique_abbrev(%struct.strbuf* %0, %struct.object_id* %1, i32 %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %9 = load i64, i64* @GIT_MAX_HEXSZ, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @strbuf_grow(%struct.strbuf* %8, i64 %10)
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.object_id*, %struct.object_id** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @find_unique_abbrev_r(i64 %18, %struct.object_id* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @strbuf_setlen(%struct.strbuf* %22, i64 %28)
  ret void
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i32 @find_unique_abbrev_r(i64, %struct.object_id*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
