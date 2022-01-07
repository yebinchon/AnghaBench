; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_dir_rename_warning.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_dir_rename_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i8*, i8* }
%struct.rename = type { i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.merge_options*, %struct.rename*)* @dir_rename_warning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dir_rename_warning(i8* %0, i32 %1, i32 %2, %struct.merge_options* %3, %struct.rename* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.merge_options*, align 8
  %10 = alloca %struct.rename*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.merge_options* %3, %struct.merge_options** %9, align 8
  store %struct.rename* %4, %struct.rename** %10, align 8
  %12 = load %struct.rename*, %struct.rename** %10, align 8
  %13 = getelementptr inbounds %struct.rename, %struct.rename* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %16 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %21 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  br label %27

23:                                               ; preds = %5
  %24 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %25 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i8* [ %22, %19 ], [ %26, %23 ]
  store i8* %28, i8** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 2, i32 1
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.rename*, %struct.rename** %10, align 8
  %39 = getelementptr inbounds %struct.rename, %struct.rename* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rename*, %struct.rename** %10, align 8
  %46 = getelementptr inbounds %struct.rename, %struct.rename* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.rename*, %struct.rename** %10, align 8
  %50 = getelementptr inbounds %struct.rename, %struct.rename* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 (%struct.merge_options*, i32, i8*, i32, i8*, i8*, i8*, ...) @output(%struct.merge_options* %32, i32 %36, i8* %37, i32 %44, i8* %47, i8* %48, i8* %57)
  br label %90

59:                                               ; preds = %27
  %60 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 2, i32 1
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.rename*, %struct.rename** %10, align 8
  %67 = getelementptr inbounds %struct.rename, %struct.rename* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rename*, %struct.rename** %10, align 8
  %74 = getelementptr inbounds %struct.rename, %struct.rename* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.rename*, %struct.rename** %10, align 8
  %79 = getelementptr inbounds %struct.rename, %struct.rename* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load %struct.rename*, %struct.rename** %10, align 8
  %83 = getelementptr inbounds %struct.rename, %struct.rename* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.merge_options*, i32, i8*, i32, i8*, i8*, i8*, ...) @output(%struct.merge_options* %60, i32 %64, i8* %65, i32 %72, i8* %77, i8* %80, i8* %81, i32 %88)
  br label %90

90:                                               ; preds = %59, %31
  ret void
}

declare dso_local i32 @output(%struct.merge_options*, i32, i8*, i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
