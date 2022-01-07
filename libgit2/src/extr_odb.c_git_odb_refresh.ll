; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_refresh.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_odb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_refresh(%struct.git_odb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.git_odb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.git_odb* %0, %struct.git_odb** %3, align 8
  %8 = load %struct.git_odb*, %struct.git_odb** %3, align 8
  %9 = call i32 @assert(%struct.git_odb* %8)
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %41, %1
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.git_odb*, %struct.git_odb** %3, align 8
  %13 = getelementptr inbounds %struct.git_odb, %struct.git_odb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %10
  %18 = load %struct.git_odb*, %struct.git_odb** %3, align 8
  %19 = getelementptr inbounds %struct.git_odb, %struct.git_odb* %18, i32 0, i32 0
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.TYPE_7__* @git_vector_get(%struct.TYPE_8__* %19, i64 %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %5, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_6__*)* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %17
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = call i32 %32(%struct.TYPE_6__* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %17
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %10

44:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @assert(%struct.git_odb*) #1

declare dso_local %struct.TYPE_7__* @git_vector_get(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
