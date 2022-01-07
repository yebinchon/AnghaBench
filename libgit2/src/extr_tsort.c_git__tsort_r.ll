; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tsort.c_git__tsort_r.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tsort.c_git__tsort_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsort_store = type { i8*, i32, i32*, i64 }
%struct.tsort_run = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git__tsort_r(i8** %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tsort_store, align 8
  %10 = alloca %struct.tsort_store*, align 8
  %11 = alloca [128 x %struct.tsort_run], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.tsort_store* %9, %struct.tsort_store** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %17, 64
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @bisort(i8** %20, i32 1, i64 %21, i32 %22, i8* %23)
  ret void

25:                                               ; preds = %4
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @compute_minrun(i64 %26)
  store i64 %27, i64* %16, align 8
  %28 = load %struct.tsort_store*, %struct.tsort_store** %10, align 8
  %29 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.tsort_store*, %struct.tsort_store** %10, align 8
  %31 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.tsort_store*, %struct.tsort_store** %10, align 8
  %34 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.tsort_store*, %struct.tsort_store** %10, align 8
  %37 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = call i32 (...) @PUSH_NEXT()
  %39 = call i32 (...) @PUSH_NEXT()
  %40 = call i32 (...) @PUSH_NEXT()
  br label %41

41:                                               ; preds = %25, %46, %53
  %42 = getelementptr inbounds [128 x %struct.tsort_run], [128 x %struct.tsort_run]* %11, i64 0, i64 0
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @check_invariant(%struct.tsort_run* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds [128 x %struct.tsort_run], [128 x %struct.tsort_run]* %11, i64 0, i64 0
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.tsort_store*, %struct.tsort_store** %10, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @collapse(i8** %47, %struct.tsort_run* %48, i64 %49, %struct.tsort_store* %50, i64 %51)
  store i64 %52, i64* %12, align 8
  br label %41

53:                                               ; preds = %41
  %54 = call i32 (...) @PUSH_NEXT()
  br label %41
}

declare dso_local i32 @bisort(i8**, i32, i64, i32, i8*) #1

declare dso_local i64 @compute_minrun(i64) #1

declare dso_local i32 @PUSH_NEXT(...) #1

declare dso_local i32 @check_invariant(%struct.tsort_run*, i64) #1

declare dso_local i64 @collapse(i8**, %struct.tsort_run*, i64, %struct.tsort_store*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
