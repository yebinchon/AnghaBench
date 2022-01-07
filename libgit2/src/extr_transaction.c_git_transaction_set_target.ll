; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_transaction.c_git_transaction_set_target.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_transaction.c_git_transaction_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_transaction_set_target(i32* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %19, %16, %5
  %23 = phi i1 [ false, %16 ], [ false, %5 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @find_locked(%struct.TYPE_6__** %13, i32* %26, i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %50

32:                                               ; preds = %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @copy_common(%struct.TYPE_6__* %33, i32* %34, i32* %35, i8* %36)
  store i32 %37, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %50

41:                                               ; preds = %32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @git_oid_cpy(i32* %44, i32* %45)
  %47 = load i32, i32* @GIT_REFERENCE_DIRECT, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %41, %39, %30
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @find_locked(%struct.TYPE_6__**, i32*, i8*) #1

declare dso_local i32 @copy_common(%struct.TYPE_6__*, i32*, i32*, i8*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
