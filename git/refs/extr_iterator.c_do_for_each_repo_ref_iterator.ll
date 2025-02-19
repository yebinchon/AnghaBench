; ModuleID = '/home/carl/AnghaBench/git/refs/extr_iterator.c_do_for_each_repo_ref_iterator.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_iterator.c_do_for_each_repo_ref_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32, i32, i32 }
%struct.repository = type { i32 }

@current_ref_iter = common dso_local global %struct.ref_iterator* null, align 8
@ITER_OK = common dso_local global i32 0, align 4
@ITER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_for_each_repo_ref_iterator(%struct.repository* %0, %struct.ref_iterator* %1, i32 (%struct.repository*, i32, i32, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.ref_iterator*, align 8
  %8 = alloca i32 (%struct.repository*, i32, i32, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ref_iterator*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.ref_iterator* %1, %struct.ref_iterator** %7, align 8
  store i32 (%struct.repository*, i32, i32, i32, i8*)* %2, i32 (%struct.repository*, i32, i32, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.ref_iterator*, %struct.ref_iterator** @current_ref_iter, align 8
  store %struct.ref_iterator* %13, %struct.ref_iterator** %12, align 8
  %14 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  store %struct.ref_iterator* %14, %struct.ref_iterator** @current_ref_iter, align 8
  br label %15

15:                                               ; preds = %39, %4
  %16 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %17 = call i32 @ref_iterator_advance(%struct.ref_iterator* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @ITER_OK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load i32 (%struct.repository*, i32, i32, i32, i8*)*, i32 (%struct.repository*, i32, i32, i32, i8*)** %8, align 8
  %22 = load %struct.repository*, %struct.repository** %6, align 8
  %23 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %24 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %27 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %30 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 %21(%struct.repository* %22, i32 %25, i32 %28, i32 %31, i8* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %38 = call i32 @ref_iterator_abort(%struct.ref_iterator* %37)
  br label %41

39:                                               ; preds = %20
  br label %15

40:                                               ; preds = %15
  br label %41

41:                                               ; preds = %40, %36
  %42 = load %struct.ref_iterator*, %struct.ref_iterator** %12, align 8
  store %struct.ref_iterator* %42, %struct.ref_iterator** @current_ref_iter, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @ITER_ERROR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @ref_iterator_advance(%struct.ref_iterator*) #1

declare dso_local i32 @ref_iterator_abort(%struct.ref_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
