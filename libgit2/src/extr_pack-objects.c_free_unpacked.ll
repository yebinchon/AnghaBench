; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_free_unpacked.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_free_unpacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpacked = type { i64, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.unpacked*)* @free_unpacked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @free_unpacked(%struct.unpacked* %0) #0 {
  %2 = alloca %struct.unpacked*, align 8
  %3 = alloca i64, align 8
  store %struct.unpacked* %0, %struct.unpacked** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.unpacked*, %struct.unpacked** %2, align 8
  %5 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.unpacked*, %struct.unpacked** %2, align 8
  %10 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = call i64 @git_delta_index_size(i32* %11)
  %13 = load i64, i64* %3, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %3, align 8
  %15 = load %struct.unpacked*, %struct.unpacked** %2, align 8
  %16 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @git_delta_index_free(i32* %17)
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.unpacked*, %struct.unpacked** %2, align 8
  %21 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load %struct.unpacked*, %struct.unpacked** %2, align 8
  %23 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load %struct.unpacked*, %struct.unpacked** %2, align 8
  %28 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %3, align 8
  %34 = load %struct.unpacked*, %struct.unpacked** %2, align 8
  %35 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @git__free(i32* %36)
  %38 = load %struct.unpacked*, %struct.unpacked** %2, align 8
  %39 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %26, %19
  %41 = load %struct.unpacked*, %struct.unpacked** %2, align 8
  %42 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %41, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %42, align 8
  %43 = load %struct.unpacked*, %struct.unpacked** %2, align 8
  %44 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i64 @git_delta_index_size(i32*) #1

declare dso_local i32 @git_delta_index_free(i32*) #1

declare dso_local i32 @git__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
