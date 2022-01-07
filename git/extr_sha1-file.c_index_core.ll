; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_index_core.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_index_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SMALL_FILE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"read error while indexing %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"short read while indexing %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.object_id*, i32, i64, i32, i8*, i32)* @index_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_core(%struct.index_state* %0, %struct.object_id* %1, i32 %2, i64 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %7
  %22 = load %struct.index_state*, %struct.index_state** %8, align 8
  %23 = load %struct.object_id*, %struct.object_id** %9, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @index_mem(%struct.index_state* %22, %struct.object_id* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %15, align 4
  br label %97

29:                                               ; preds = %7
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @SMALL_FILE_SIZE, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = load i64, i64* %11, align 8
  %35 = call i8* @xmalloc(i64 %34)
  store i8* %35, i8** %16, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %16, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @read_in_full(i32 %36, i8* %37, i64 %38)
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %17, align 8
  %41 = icmp ult i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %13, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8*, i8** %13, align 8
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i8* [ %47, %46 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %48 ]
  %51 = call i32 @error_errno(i32 %43, i8* %50)
  store i32 %51, i32* %15, align 4
  br label %76

52:                                               ; preds = %33
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i8*, i8** %13, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i8*, i8** %13, align 8
  br label %63

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i8* [ %61, %60 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %62 ]
  %65 = call i32 @error(i32 %57, i8* %64)
  store i32 %65, i32* %15, align 4
  br label %75

66:                                               ; preds = %52
  %67 = load %struct.index_state*, %struct.index_state** %8, align 8
  %68 = load %struct.object_id*, %struct.object_id** %9, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @index_mem(%struct.index_state* %67, %struct.object_id* %68, i8* %69, i64 %70, i32 %71, i8* %72, i32 %73)
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %66, %63
  br label %76

76:                                               ; preds = %75, %49
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @free(i8* %77)
  br label %96

79:                                               ; preds = %29
  %80 = load i64, i64* %11, align 8
  %81 = load i32, i32* @PROT_READ, align 4
  %82 = load i32, i32* @MAP_PRIVATE, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i8* @xmmap(i32* null, i64 %80, i32 %81, i32 %82, i32 %83, i32 0)
  store i8* %84, i8** %18, align 8
  %85 = load %struct.index_state*, %struct.index_state** %8, align 8
  %86 = load %struct.object_id*, %struct.object_id** %9, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @index_mem(%struct.index_state* %85, %struct.object_id* %86, i8* %87, i64 %88, i32 %89, i8* %90, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load i8*, i8** %18, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @munmap(i8* %93, i64 %94)
  br label %96

96:                                               ; preds = %79, %76
  br label %97

97:                                               ; preds = %96, %21
  %98 = load i32, i32* %15, align 4
  ret i32 %98
}

declare dso_local i32 @index_mem(%struct.index_state*, %struct.object_id*, i8*, i64, i32, i8*, i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @read_in_full(i32, i8*, i64) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xmmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
