; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_oid.c_git_oid_shorten_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_oid.c_git_oid_shorten_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @git_oid_shorten_new(i64 %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = sext i32 %6 to i64
  %8 = load i64, i64* %3, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call %struct.TYPE_6__* @git__calloc(i32 1, i32 8)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call i64 @resize_trie(%struct.TYPE_6__* %17, i32 16)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = call i32 @git__free(%struct.TYPE_6__* %21)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %31

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %2, align 8
  br label %31

31:                                               ; preds = %23, %20, %15
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %32
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_6__* @git__calloc(i32, i32) #1

declare dso_local i64 @resize_trie(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @git__free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
