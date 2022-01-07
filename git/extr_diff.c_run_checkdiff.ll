; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_run_checkdiff.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_run_checkdiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.diff_options = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_filepair*, %struct.diff_options*)* @run_checkdiff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_checkdiff(%struct.diff_filepair* %0, %struct.diff_options* %1) #0 {
  %3 = alloca %struct.diff_filepair*, align 8
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  %8 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %9 = call i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %82

12:                                               ; preds = %2
  %13 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %14 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %20 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %18, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %28 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %33

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i8* [ %31, %26 ], [ null, %32 ]
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  br label %41

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i8* [ %38, %37 ], [ %40, %39 ]
  store i8* %42, i8** %7, align 8
  %43 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %44 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %49 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @strip_prefix(i64 %50, i8** %5, i8** %6)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %54 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %57 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @diff_fill_oid_info(%struct.TYPE_6__* %55, i32 %60)
  %62 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %63 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %66 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @diff_fill_oid_info(%struct.TYPE_6__* %64, i32 %69)
  %71 = load i8*, i8** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %75 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %78 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %81 = call i32 @builtin_checkdiff(i8* %71, i8* %72, i8* %73, %struct.TYPE_6__* %76, %struct.TYPE_6__* %79, %struct.diff_options* %80)
  br label %82

82:                                               ; preds = %52, %11
  ret void
}

declare dso_local i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strip_prefix(i64, i8**, i8**) #1

declare dso_local i32 @diff_fill_oid_info(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @builtin_checkdiff(i8*, i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.diff_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
