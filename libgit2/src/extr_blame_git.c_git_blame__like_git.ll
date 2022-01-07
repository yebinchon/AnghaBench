; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_git_blame__like_git.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_git_blame__like_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_blame__like_git(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %2, %82
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  br label %12

12:                                               ; preds = %30, %8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %7, align 8
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %6, align 8
  br label %12

34:                                               ; preds = %18
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %85

38:                                               ; preds = %34
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = call i32 @origin_incref(%struct.TYPE_14__* %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @pass_blame(%struct.TYPE_16__* %41, %struct.TYPE_14__* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %85

47:                                               ; preds = %38
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %6, align 8
  br label %51

51:                                               ; preds = %78, %47
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %54, label %82

54:                                               ; preds = %51
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = call i64 @same_suspect(%struct.TYPE_14__* %57, %struct.TYPE_14__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %54
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @git_commit_id(i32 %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = call i32 @git_oid_cmp(i32 %67, i32* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %61, %54
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %6, align 8
  br label %51

82:                                               ; preds = %51
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = call i32 @origin_decref(%struct.TYPE_14__* %83)
  br label %8

85:                                               ; preds = %46, %37
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = call i32 @coalesce(%struct.TYPE_16__* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @origin_incref(%struct.TYPE_14__*) #1

declare dso_local i32 @pass_blame(%struct.TYPE_16__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @same_suspect(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @git_oid_cmp(i32, i32*) #1

declare dso_local i32 @git_commit_id(i32) #1

declare dso_local i32 @origin_decref(%struct.TYPE_14__*) #1

declare dso_local i32 @coalesce(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
