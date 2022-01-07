; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_raw_object_store_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_raw_object_store_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_object_store = type { i32*, i32, i64, i32*, i64, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw_object_store_clear(%struct.raw_object_store* %0) #0 {
  %2 = alloca %struct.raw_object_store*, align 8
  store %struct.raw_object_store* %0, %struct.raw_object_store** %2, align 8
  %3 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %4 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @FREE_AND_NULL(i32 %5)
  %7 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %8 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @oidmap_free(i32 %9, i32 1)
  %11 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %12 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @FREE_AND_NULL(i32 %13)
  %15 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %16 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @free_commit_graph(i32* %17)
  %19 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %20 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %22 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %24 = call i32 @free_object_directories(%struct.raw_object_store* %23)
  %25 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %26 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %28 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %30 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %29, i32 0, i32 1
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %33 = call i32 @close_object_store(%struct.raw_object_store* %32)
  %34 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %35 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  ret void
}

declare dso_local i32 @FREE_AND_NULL(i32) #1

declare dso_local i32 @oidmap_free(i32, i32) #1

declare dso_local i32 @free_commit_graph(i32*) #1

declare dso_local i32 @free_object_directories(%struct.raw_object_store*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @close_object_store(%struct.raw_object_store*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
