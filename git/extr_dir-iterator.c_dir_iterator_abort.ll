; ModuleID = '/home/carl/AnghaBench/git/extr_dir-iterator.c_dir_iterator_abort.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir-iterator.c_dir_iterator_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_iterator = type { i32 }
%struct.dir_iterator_int = type { i32, %struct.TYPE_4__, %struct.dir_iterator_int*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dir_iterator_level = type { i32, %struct.TYPE_4__, %struct.dir_iterator_level*, i32, i64 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error closing directory '%s'\00", align 1
@ITER_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dir_iterator_abort(%struct.dir_iterator* %0) #0 {
  %2 = alloca %struct.dir_iterator*, align 8
  %3 = alloca %struct.dir_iterator_int*, align 8
  %4 = alloca %struct.dir_iterator_level*, align 8
  %5 = alloca i32, align 4
  store %struct.dir_iterator* %0, %struct.dir_iterator** %2, align 8
  %6 = load %struct.dir_iterator*, %struct.dir_iterator** %2, align 8
  %7 = bitcast %struct.dir_iterator* %6 to %struct.dir_iterator_int*
  store %struct.dir_iterator_int* %7, %struct.dir_iterator_int** %3, align 8
  br label %8

8:                                                ; preds = %51, %1
  %9 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %10 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %8
  %14 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %15 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %14, i32 0, i32 2
  %16 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %15, align 8
  %17 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %18 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %16, i64 %21
  %23 = bitcast %struct.dir_iterator_int* %22 to %struct.dir_iterator_level*
  store %struct.dir_iterator_level* %23, %struct.dir_iterator_level** %4, align 8
  %24 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %4, align 8
  %25 = getelementptr inbounds %struct.dir_iterator_level, %struct.dir_iterator_level* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %13
  %29 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %4, align 8
  %30 = getelementptr inbounds %struct.dir_iterator_level, %struct.dir_iterator_level* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @closedir(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %37 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %4, align 8
  %40 = getelementptr inbounds %struct.dir_iterator_level, %struct.dir_iterator_level* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strbuf_setlen(%struct.TYPE_5__* %38, i32 %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* @errno, align 4
  %44 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %45 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @warning_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %34, %28, %13
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %53 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  br label %8

56:                                               ; preds = %8
  %57 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %58 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %57, i32 0, i32 2
  %59 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %58, align 8
  %60 = bitcast %struct.dir_iterator_int* %59 to %struct.dir_iterator_level*
  %61 = call i32 @free(%struct.dir_iterator_level* %60)
  %62 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %63 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @strbuf_release(%struct.TYPE_5__* %64)
  %66 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %67 = bitcast %struct.dir_iterator_int* %66 to %struct.dir_iterator_level*
  %68 = call i32 @free(%struct.dir_iterator_level* %67)
  %69 = load i32, i32* @ITER_DONE, align 4
  ret i32 %69
}

declare dso_local i64 @closedir(i64) #1

declare dso_local i32 @strbuf_setlen(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @warning_errno(i8*, i32) #1

declare dso_local i32 @free(%struct.dir_iterator_level*) #1

declare dso_local i32 @strbuf_release(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
