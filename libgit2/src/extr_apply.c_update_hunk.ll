; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_apply.c_update_hunk.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_apply.c_update_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, %struct.TYPE_9__*, %struct.TYPE_9__*)* @update_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_hunk(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = call i64 @git_vector_length(%struct.TYPE_10__* %15)
  store i64 %16, i64* %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = call i64 @git_vector_length(%struct.TYPE_10__* %18)
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = sub i64 %27, %28
  %30 = call i32 @git_vector_insert_null(%struct.TYPE_10__* %25, i64 %26, i64 %29)
  store i32 %30, i32* %13, align 4
  br label %44

31:                                               ; preds = %4
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %39, %40
  %42 = call i32 @git_vector_remove_range(%struct.TYPE_10__* %37, i64 %38, i64 %41)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %35, %31
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (...) @git_error_set_oom()
  store i32 -1, i32* %5, align 4
  br label %73

49:                                               ; preds = %44
  store i64 0, i64* %12, align 8
  br label %50

50:                                               ; preds = %69, %49
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = call i64 @git_vector_length(%struct.TYPE_10__* %53)
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @git_vector_get(%struct.TYPE_10__* %58, i64 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %65, %66
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %60, i32* %68, align 4
  br label %69

69:                                               ; preds = %56
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %12, align 8
  br label %50

72:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @git_vector_length(%struct.TYPE_10__*) #1

declare dso_local i32 @git_vector_insert_null(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @git_vector_remove_range(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @git_error_set_oom(...) #1

declare dso_local i32 @git_vector_get(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
