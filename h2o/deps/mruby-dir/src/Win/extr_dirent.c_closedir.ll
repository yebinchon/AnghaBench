; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-dir/src/Win/extr_dirent.c_closedir.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-dir/src/Win/extr_dirent.c_closedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @closedir(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @_findclose(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i32 @free(%struct.TYPE_4__* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = call i32 @free(%struct.TYPE_4__* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @EBADF, align 4
  store i32 %27, i32* @errno, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @_findclose(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
