; ModuleID = '/home/carl/AnghaBench/git/extr_merge-blobs.c_merge_blobs.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-blobs.c_merge_blobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.blob = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @merge_blobs(%struct.index_state* %0, i8* %1, %struct.blob* %2, %struct.blob* %3, %struct.blob* %4, i64* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.blob*, align 8
  %11 = alloca %struct.blob*, align 8
  %12 = alloca %struct.blob*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.blob* %2, %struct.blob** %10, align 8
  store %struct.blob* %3, %struct.blob** %11, align 8
  store %struct.blob* %4, %struct.blob** %12, align 8
  store i64* %5, i64** %13, align 8
  store i8* null, i8** %14, align 8
  %19 = load %struct.blob*, %struct.blob** %11, align 8
  %20 = icmp ne %struct.blob* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.blob*, %struct.blob** %12, align 8
  %23 = icmp ne %struct.blob* %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %21, %6
  %25 = load %struct.blob*, %struct.blob** %10, align 8
  %26 = icmp ne %struct.blob* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i8* null, i8** %7, align 8
  br label %74

28:                                               ; preds = %24
  %29 = load %struct.blob*, %struct.blob** %11, align 8
  %30 = icmp ne %struct.blob* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load %struct.blob*, %struct.blob** %12, align 8
  store %struct.blob* %32, %struct.blob** %11, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = load %struct.blob*, %struct.blob** %11, align 8
  %35 = getelementptr inbounds %struct.blob, %struct.blob* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64*, i64** %13, align 8
  %38 = call i8* @read_object_file(i32* %36, i32* %18, i64* %37)
  store i8* %38, i8** %7, align 8
  br label %74

39:                                               ; preds = %21
  %40 = load %struct.blob*, %struct.blob** %11, align 8
  %41 = call i64 @fill_mmfile_blob(%struct.TYPE_9__* %15, %struct.blob* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %72

44:                                               ; preds = %39
  %45 = load %struct.blob*, %struct.blob** %12, align 8
  %46 = call i64 @fill_mmfile_blob(%struct.TYPE_9__* %16, %struct.blob* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %70

49:                                               ; preds = %44
  %50 = load %struct.blob*, %struct.blob** %10, align 8
  %51 = icmp ne %struct.blob* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.blob*, %struct.blob** %10, align 8
  %54 = call i64 @fill_mmfile_blob(%struct.TYPE_9__* %17, %struct.blob* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %68

57:                                               ; preds = %52
  br label %62

58:                                               ; preds = %49
  %59 = call i32 @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = load %struct.index_state*, %struct.index_state** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i64*, i64** %13, align 8
  %66 = call i8* @three_way_filemerge(%struct.index_state* %63, i8* %64, %struct.TYPE_9__* %17, %struct.TYPE_9__* %15, %struct.TYPE_9__* %16, i64* %65)
  store i8* %66, i8** %14, align 8
  %67 = call i32 @free_mmfile(%struct.TYPE_9__* %17)
  br label %68

68:                                               ; preds = %62, %56
  %69 = call i32 @free_mmfile(%struct.TYPE_9__* %16)
  br label %70

70:                                               ; preds = %68, %48
  %71 = call i32 @free_mmfile(%struct.TYPE_9__* %15)
  br label %72

72:                                               ; preds = %70, %43
  %73 = load i8*, i8** %14, align 8
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %72, %33, %27
  %75 = load i8*, i8** %7, align 8
  ret i8* %75
}

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

declare dso_local i64 @fill_mmfile_blob(%struct.TYPE_9__*, %struct.blob*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i8* @three_way_filemerge(%struct.index_state*, i8*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64*) #1

declare dso_local i32 @free_mmfile(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
