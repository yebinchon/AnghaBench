; ModuleID = '/home/carl/AnghaBench/git/extr_tree-diff.c_path_appendnew.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-diff.c_path_appendnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.combine_diff_path = type { i8*, i32, i32, i32*, %struct.combine_diff_path* }
%struct.strbuf = type { i32, i8* }

@null_oid = common dso_local global %struct.object_id zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.combine_diff_path* (%struct.combine_diff_path*, i32, %struct.strbuf*, i8*, i32, i32, %struct.object_id*)* @path_appendnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.combine_diff_path* @path_appendnew(%struct.combine_diff_path* %0, i32 %1, %struct.strbuf* %2, i8* %3, i32 %4, i32 %5, %struct.object_id* %6) #0 {
  %8 = alloca %struct.combine_diff_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.object_id*, align 8
  %15 = alloca %struct.combine_diff_path*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.combine_diff_path* %0, %struct.combine_diff_path** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.strbuf* %2, %struct.strbuf** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.object_id* %6, %struct.object_id** %14, align 8
  %18 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i64 @st_add(i32 %20, i32 %21)
  store i64 %22, i64* %16, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %16, align 8
  %25 = call i64 @combine_diff_path_size(i32 %23, i64 %24)
  store i64 %25, i64* %17, align 8
  %26 = load %struct.combine_diff_path*, %struct.combine_diff_path** %8, align 8
  %27 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %26, i32 0, i32 4
  %28 = load %struct.combine_diff_path*, %struct.combine_diff_path** %27, align 8
  store %struct.combine_diff_path* %28, %struct.combine_diff_path** %15, align 8
  %29 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %30 = icmp ne %struct.combine_diff_path* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %7
  %32 = load i64, i64* %17, align 8
  %33 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %34 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %33, i32 0, i32 4
  %35 = load %struct.combine_diff_path*, %struct.combine_diff_path** %34, align 8
  %36 = ptrtoint %struct.combine_diff_path* %35 to i64
  %37 = icmp ugt i64 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %40 = call i32 @FREE_AND_NULL(%struct.combine_diff_path* %39)
  br label %41

41:                                               ; preds = %38, %31, %7
  %42 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %43 = icmp ne %struct.combine_diff_path* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %17, align 8
  %46 = call %struct.combine_diff_path* @xmalloc(i64 %45)
  store %struct.combine_diff_path* %46, %struct.combine_diff_path** %15, align 8
  %47 = load i64, i64* %17, align 8
  %48 = inttoptr i64 %47 to %struct.combine_diff_path*
  %49 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %50 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %49, i32 0, i32 4
  store %struct.combine_diff_path* %48, %struct.combine_diff_path** %50, align 8
  br label %51

51:                                               ; preds = %44, %41
  %52 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %53 = load %struct.combine_diff_path*, %struct.combine_diff_path** %8, align 8
  %54 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %53, i32 0, i32 4
  store %struct.combine_diff_path* %52, %struct.combine_diff_path** %54, align 8
  %55 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %56 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = bitcast i32* %60 to i8*
  %62 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %63 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %65 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @memcpy(i8* %66, i8* %69, i32 %72)
  %74 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %75 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @memcpy(i8* %81, i8* %82, i32 %83)
  %85 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %86 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %92 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  %94 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %93, i32 0, i32 2
  %95 = load %struct.object_id*, %struct.object_id** %14, align 8
  %96 = icmp ne %struct.object_id* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %51
  %98 = load %struct.object_id*, %struct.object_id** %14, align 8
  br label %100

99:                                               ; preds = %51
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi %struct.object_id* [ %98, %97 ], [ @null_oid, %99 ]
  %102 = call i32 @oidcpy(i32* %94, %struct.object_id* %101)
  %103 = load %struct.combine_diff_path*, %struct.combine_diff_path** %15, align 8
  ret %struct.combine_diff_path* %103
}

declare dso_local i64 @st_add(i32, i32) #1

declare dso_local i64 @combine_diff_path_size(i32, i64) #1

declare dso_local i32 @FREE_AND_NULL(%struct.combine_diff_path*) #1

declare dso_local %struct.combine_diff_path* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
