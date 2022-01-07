; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_run_diffstat.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_run_diffstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.diff_options = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.diffstat_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_filepair*, %struct.diff_options*, %struct.diffstat_t*)* @run_diffstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_diffstat(%struct.diff_filepair* %0, %struct.diff_options* %1, %struct.diffstat_t* %2) #0 {
  %4 = alloca %struct.diff_filepair*, align 8
  %5 = alloca %struct.diff_options*, align 8
  %6 = alloca %struct.diffstat_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %4, align 8
  store %struct.diff_options* %1, %struct.diff_options** %5, align 8
  store %struct.diffstat_t* %2, %struct.diffstat_t** %6, align 8
  %9 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %10 = call i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %14 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.diffstat_t*, %struct.diffstat_t** %6, align 8
  %19 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %20 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %21 = call i32 @builtin_diffstat(i8* %17, i8* null, %struct.TYPE_6__* null, %struct.TYPE_6__* null, %struct.diffstat_t* %18, %struct.diff_options* %19, %struct.diff_filepair* %20)
  br label %85

22:                                               ; preds = %3
  %23 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %24 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %30 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %28, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %38 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i8* [ %41, %36 ], [ null, %42 ]
  store i8* %44, i8** %8, align 8
  %45 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %46 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %51 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @strip_prefix(i64 %52, i8** %7, i8** %8)
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %56 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %59 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @diff_fill_oid_info(%struct.TYPE_6__* %57, i32 %62)
  %64 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %65 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %68 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @diff_fill_oid_info(%struct.TYPE_6__* %66, i32 %71)
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %76 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %79 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load %struct.diffstat_t*, %struct.diffstat_t** %6, align 8
  %82 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %83 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %84 = call i32 @builtin_diffstat(i8* %73, i8* %74, %struct.TYPE_6__* %77, %struct.TYPE_6__* %80, %struct.diffstat_t* %81, %struct.diff_options* %82, %struct.diff_filepair* %83)
  br label %85

85:                                               ; preds = %54, %12
  ret void
}

declare dso_local i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair*) #1

declare dso_local i32 @builtin_diffstat(i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.diffstat_t*, %struct.diff_options*, %struct.diff_filepair*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strip_prefix(i64, i8**, i8**) #1

declare dso_local i32 @diff_fill_oid_info(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
