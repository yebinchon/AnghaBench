; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_strbuf_make_traverse_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_strbuf_make_traverse_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64, i64 }
%struct.traverse_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_make_traverse_path(%struct.strbuf* %0, %struct.traverse_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.traverse_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store %struct.traverse_info* %1, %struct.traverse_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.traverse_info*, %struct.traverse_info** %6, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i64 @traverse_path_len(%struct.traverse_info* %10, i64 %11)
  store i64 %12, i64* %9, align 8
  %13 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @strbuf_grow(%struct.strbuf* %13, i64 %14)
  %16 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %25, %28
  %30 = load %struct.traverse_info*, %struct.traverse_info** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @make_traverse_path(i64 %22, i64 %29, %struct.traverse_info* %30, i8* %31, i64 %32)
  %34 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %35 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = call i32 @strbuf_setlen(%struct.strbuf* %34, i64 %39)
  ret void
}

declare dso_local i64 @traverse_path_len(%struct.traverse_info*, i64) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i32 @make_traverse_path(i64, i64, %struct.traverse_info*, i8*, i64) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
