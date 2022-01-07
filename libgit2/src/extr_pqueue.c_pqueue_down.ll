; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pqueue.c_pqueue_down.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pqueue.c_pqueue_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (i8*, i8*)*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @pqueue_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqueue_down(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i8* @git_vector_get(%struct.TYPE_4__* %9, i64 %10)
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %2, %47
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @PQUEUE_LCHILD_OF(i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i8* @git_vector_get(%struct.TYPE_4__* %15, i64 %16)
  store i8* %17, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %55

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, 1
  %24 = call i8* @git_vector_get(%struct.TYPE_4__* %21, i64 %23)
  store i8* %24, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 %29(i8* %30, i8* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  store i8* %35, i8** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %34, %26, %20
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 %41(i8* %42, i8* %43)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %55

47:                                               ; preds = %38
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8* %48, i8** %53, align 8
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %4, align 8
  br label %12

55:                                               ; preds = %46, %19
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  store i8* %56, i8** %61, align 8
  ret void
}

declare dso_local i8* @git_vector_get(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @PQUEUE_LCHILD_OF(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
