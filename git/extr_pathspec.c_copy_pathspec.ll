; ModuleID = '/home/carl/AnghaBench/git/extr_pathspec.c_copy_pathspec.c'
source_filename = "/home/carl/AnghaBench/git/extr_pathspec.c_copy_pathspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32, %struct.pathspec_item* }
%struct.pathspec_item = type { i32, i8*, i32, %struct.pathspec_item*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_pathspec(%struct.pathspec* %0, %struct.pathspec* %1) #0 {
  %3 = alloca %struct.pathspec*, align 8
  %4 = alloca %struct.pathspec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pathspec_item*, align 8
  %8 = alloca %struct.pathspec_item*, align 8
  %9 = alloca i8*, align 8
  store %struct.pathspec* %0, %struct.pathspec** %3, align 8
  store %struct.pathspec* %1, %struct.pathspec** %4, align 8
  %10 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %11 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %12 = bitcast %struct.pathspec* %10 to i8*
  %13 = bitcast %struct.pathspec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %15 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %14, i32 0, i32 1
  %16 = load %struct.pathspec_item*, %struct.pathspec_item** %15, align 8
  %17 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %18 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ALLOC_ARRAY(%struct.pathspec_item* %16, i32 %19)
  %21 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %22 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %21, i32 0, i32 1
  %23 = load %struct.pathspec_item*, %struct.pathspec_item** %22, align 8
  %24 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %25 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %24, i32 0, i32 1
  %26 = load %struct.pathspec_item*, %struct.pathspec_item** %25, align 8
  %27 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %28 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @COPY_ARRAY(%struct.pathspec_item* %23, %struct.pathspec_item* %26, i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %113, %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %34 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %116

37:                                               ; preds = %31
  %38 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %39 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %38, i32 0, i32 1
  %40 = load %struct.pathspec_item*, %struct.pathspec_item** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %40, i64 %42
  store %struct.pathspec_item* %43, %struct.pathspec_item** %7, align 8
  %44 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %45 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %44, i32 0, i32 1
  %46 = load %struct.pathspec_item*, %struct.pathspec_item** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %46, i64 %48
  store %struct.pathspec_item* %49, %struct.pathspec_item** %8, align 8
  %50 = load %struct.pathspec_item*, %struct.pathspec_item** %8, align 8
  %51 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @xstrdup(i8* %52)
  %54 = load %struct.pathspec_item*, %struct.pathspec_item** %7, align 8
  %55 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.pathspec_item*, %struct.pathspec_item** %8, align 8
  %57 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %56, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @xstrdup(i8* %58)
  %60 = load %struct.pathspec_item*, %struct.pathspec_item** %7, align 8
  %61 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.pathspec_item*, %struct.pathspec_item** %7, align 8
  %63 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %62, i32 0, i32 3
  %64 = load %struct.pathspec_item*, %struct.pathspec_item** %63, align 8
  %65 = load %struct.pathspec_item*, %struct.pathspec_item** %7, align 8
  %66 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ALLOC_ARRAY(%struct.pathspec_item* %64, i32 %67)
  %69 = load %struct.pathspec_item*, %struct.pathspec_item** %7, align 8
  %70 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %69, i32 0, i32 3
  %71 = load %struct.pathspec_item*, %struct.pathspec_item** %70, align 8
  %72 = load %struct.pathspec_item*, %struct.pathspec_item** %8, align 8
  %73 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %72, i32 0, i32 3
  %74 = load %struct.pathspec_item*, %struct.pathspec_item** %73, align 8
  %75 = load %struct.pathspec_item*, %struct.pathspec_item** %7, align 8
  %76 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @COPY_ARRAY(%struct.pathspec_item* %71, %struct.pathspec_item* %74, i32 %77)
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %103, %37
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.pathspec_item*, %struct.pathspec_item** %7, align 8
  %82 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %79
  %86 = load %struct.pathspec_item*, %struct.pathspec_item** %8, align 8
  %87 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %86, i32 0, i32 3
  %88 = load %struct.pathspec_item*, %struct.pathspec_item** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %88, i64 %90
  %92 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %9, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i8* @xstrdup_or_null(i8* %94)
  %96 = load %struct.pathspec_item*, %struct.pathspec_item** %7, align 8
  %97 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %96, i32 0, i32 3
  %98 = load %struct.pathspec_item*, %struct.pathspec_item** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %98, i64 %100
  %102 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %101, i32 0, i32 1
  store i8* %95, i8** %102, align 8
  br label %103

103:                                              ; preds = %85
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %79

106:                                              ; preds = %79
  %107 = load %struct.pathspec_item*, %struct.pathspec_item** %8, align 8
  %108 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @attr_check_dup(i32 %109)
  %111 = load %struct.pathspec_item*, %struct.pathspec_item** %7, align 8
  %112 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %31

116:                                              ; preds = %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ALLOC_ARRAY(%struct.pathspec_item*, i32) #2

declare dso_local i32 @COPY_ARRAY(%struct.pathspec_item*, %struct.pathspec_item*, i32) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @xstrdup_or_null(i8*) #2

declare dso_local i32 @attr_check_dup(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
