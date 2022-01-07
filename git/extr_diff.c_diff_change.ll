; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_change.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { %struct.TYPE_2__, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }
%struct.object_id = type { i32 }
%struct.diff_filespec = type { i32 }
%struct.diff_filepair = type { i32 }

@diff_queued_diff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_change(%struct.diff_options* %0, i32 %1, i32 %2, %struct.object_id* %3, %struct.object_id* %4, i32 %5, i32 %6, i8* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.diff_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.object_id*, align 8
  %15 = alloca %struct.object_id*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.diff_filespec*, align 8
  %22 = alloca %struct.diff_filespec*, align 8
  %23 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store %struct.object_id* %3, %struct.object_id** %14, align 8
  store %struct.object_id* %4, %struct.object_id** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @S_ISGITLINK(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %10
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @S_ISGITLINK(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i8*, i8** %18, align 8
  %33 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  %34 = call i64 @is_submodule_ignored(i8* %32, %struct.diff_options* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %127

37:                                               ; preds = %31, %27, %10
  %38 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  %39 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @SWAP(i32 %44, i32 %45)
  %47 = load %struct.object_id*, %struct.object_id** %14, align 8
  %48 = ptrtoint %struct.object_id* %47 to i32
  %49 = load %struct.object_id*, %struct.object_id** %15, align 8
  %50 = ptrtoint %struct.object_id* %49 to i32
  %51 = call i32 @SWAP(i32 %48, i32 %50)
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @SWAP(i32 %52, i32 %53)
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %20, align 4
  %57 = call i32 @SWAP(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %43, %37
  %59 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  %60 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i8*, i8** %18, align 8
  %65 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  %66 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  %69 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @strncmp(i8* %64, i64 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %127

74:                                               ; preds = %63, %58
  %75 = load i8*, i8** %18, align 8
  %76 = call %struct.diff_filespec* @alloc_filespec(i8* %75)
  store %struct.diff_filespec* %76, %struct.diff_filespec** %21, align 8
  %77 = load i8*, i8** %18, align 8
  %78 = call %struct.diff_filespec* @alloc_filespec(i8* %77)
  store %struct.diff_filespec* %78, %struct.diff_filespec** %22, align 8
  %79 = load %struct.diff_filespec*, %struct.diff_filespec** %21, align 8
  %80 = load %struct.object_id*, %struct.object_id** %14, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @fill_filespec(%struct.diff_filespec* %79, %struct.object_id* %80, i32 %81, i32 %82)
  %84 = load %struct.diff_filespec*, %struct.diff_filespec** %22, align 8
  %85 = load %struct.object_id*, %struct.object_id** %15, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @fill_filespec(%struct.diff_filespec* %84, %struct.object_id* %85, i32 %86, i32 %87)
  %89 = load i32, i32* %19, align 4
  %90 = load %struct.diff_filespec*, %struct.diff_filespec** %21, align 8
  %91 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load %struct.diff_filespec*, %struct.diff_filespec** %22, align 8
  %94 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.diff_filespec*, %struct.diff_filespec** %21, align 8
  %96 = load %struct.diff_filespec*, %struct.diff_filespec** %22, align 8
  %97 = call %struct.diff_filepair* @diff_queue(i32* @diff_queued_diff, %struct.diff_filespec* %95, %struct.diff_filespec* %96)
  store %struct.diff_filepair* %97, %struct.diff_filepair** %23, align 8
  %98 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  %99 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %74
  br label %127

104:                                              ; preds = %74
  %105 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  %106 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  %112 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  %117 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.diff_filepair*, %struct.diff_filepair** %23, align 8
  %120 = call i32 @diff_filespec_check_stat_unmatch(i32 %118, %struct.diff_filepair* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  br label %127

123:                                              ; preds = %115, %110, %104
  %124 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  %125 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %122, %103, %73, %36
  ret void
}

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i64 @is_submodule_ignored(i8*, %struct.diff_options*) #1

declare dso_local i32 @SWAP(i32, i32) #1

declare dso_local i64 @strncmp(i8*, i64, i32) #1

declare dso_local %struct.diff_filespec* @alloc_filespec(i8*) #1

declare dso_local i32 @fill_filespec(%struct.diff_filespec*, %struct.object_id*, i32, i32) #1

declare dso_local %struct.diff_filepair* @diff_queue(i32*, %struct.diff_filespec*, %struct.diff_filespec*) #1

declare dso_local i32 @diff_filespec_check_stat_unmatch(i32, %struct.diff_filepair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
