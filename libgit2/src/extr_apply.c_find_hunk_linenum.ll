; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_apply.c_find_hunk_linenum.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_apply.c_find_hunk_linenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.TYPE_6__*, %struct.TYPE_6__*, i64)* @find_hunk_linenum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_hunk_linenum(i64* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i64 @git_vector_length(i32* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %8, align 8
  br label %19

19:                                               ; preds = %17, %4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @match_hunk(%struct.TYPE_6__* %20, %struct.TYPE_6__* %21, i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* %10, align 4
  ret i32 %26
}

declare dso_local i64 @git_vector_length(i32*) #1

declare dso_local i32 @match_hunk(%struct.TYPE_6__*, %struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
