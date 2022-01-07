; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_odb_free.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_odb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @odb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odb_free(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %6
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i64, i64* %3, align 8
  %17 = call %struct.TYPE_12__* @git_vector_get(%struct.TYPE_13__* %15, i64 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %4, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %5, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %22, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = call i32 %23(%struct.TYPE_11__* %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = call i32 @git__free(%struct.TYPE_12__* %26)
  br label %28

28:                                               ; preds = %13
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %6

31:                                               ; preds = %6
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = call i32 @git_vector_free(%struct.TYPE_13__* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = call i32 @git_cache_dispose(i32* %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = call i32 @git__memzero(%struct.TYPE_12__* %38, i32 24)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = call i32 @git__free(%struct.TYPE_12__* %40)
  ret void
}

declare dso_local %struct.TYPE_12__* @git_vector_get(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @git__free(%struct.TYPE_12__*) #1

declare dso_local i32 @git_vector_free(%struct.TYPE_13__*) #1

declare dso_local i32 @git_cache_dispose(i32*) #1

declare dso_local i32 @git__memzero(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
