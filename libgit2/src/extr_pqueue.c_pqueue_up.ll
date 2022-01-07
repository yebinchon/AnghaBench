; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pqueue.c_pqueue_up.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pqueue.c_pqueue_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (i8*, i8*)*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @pqueue_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqueue_up(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @PQUEUE_PARENT_OF(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i8* @git_vector_get(%struct.TYPE_4__* %10, i64 %11)
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 %25(i8* %26, i8* %27)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %41

31:                                               ; preds = %16
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8* %32, i8** %37, align 8
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @PQUEUE_PARENT_OF(i64 %39)
  store i64 %40, i64* %5, align 8
  br label %13

41:                                               ; preds = %30, %13
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8* %42, i8** %47, align 8
  ret void
}

declare dso_local i64 @PQUEUE_PARENT_OF(i64) #1

declare dso_local i8* @git_vector_get(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
