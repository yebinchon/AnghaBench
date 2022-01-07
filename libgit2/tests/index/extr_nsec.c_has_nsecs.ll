; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_nsec.c_has_nsecs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_nsec.c_has_nsecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@repo_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @has_nsecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_nsecs() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @repo_index, align 4
  %7 = call i64 @git_index_entrycount(i32 %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %4
  %10 = load i32, i32* @repo_index, align 4
  %11 = load i64, i64* %2, align 8
  %12 = call %struct.TYPE_7__* @git_index_get_byindex(i32 %10, i64 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %1, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %9
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %9
  store i32 1, i32* %3, align 4
  br label %29

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %2, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %2, align 8
  br label %4

29:                                               ; preds = %24, %4
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @git_index_entrycount(i32) #1

declare dso_local %struct.TYPE_7__* @git_index_get_byindex(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
