; ModuleID = '/home/carl/AnghaBench/git/extr_patch-ids.c_commit_patch_id.c'
source_filename = "/home/carl/AnghaBench/git/extr_patch-ids.c_commit_patch_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.diff_options = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @commit_patch_id(%struct.commit* %0, %struct.diff_options* %1, %struct.object_id* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.commit* %0, %struct.commit** %7, align 8
  store %struct.diff_options* %1, %struct.diff_options** %8, align 8
  store %struct.object_id* %2, %struct.object_id** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.commit*, %struct.commit** %7, align 8
  %13 = call i32 @patch_id_defined(%struct.commit* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %48

16:                                               ; preds = %5
  %17 = load %struct.commit*, %struct.commit** %7, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.commit*, %struct.commit** %7, align 8
  %23 = getelementptr inbounds %struct.commit, %struct.commit* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.commit*, %struct.commit** %7, align 8
  %30 = getelementptr inbounds %struct.commit, %struct.commit* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %33 = call i32 @diff_tree_oid(i32* %28, i32* %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.diff_options* %32)
  br label %40

34:                                               ; preds = %16
  %35 = load %struct.commit*, %struct.commit** %7, align 8
  %36 = getelementptr inbounds %struct.commit, %struct.commit* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %39 = call i32 @diff_root_tree_oid(i32* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.diff_options* %38)
  br label %40

40:                                               ; preds = %34, %21
  %41 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %42 = call i32 @diffcore_std(%struct.diff_options* %41)
  %43 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %44 = load %struct.object_id*, %struct.object_id** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @diff_flush_patch_id(%struct.diff_options* %43, %struct.object_id* %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %40, %15
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @patch_id_defined(%struct.commit*) #1

declare dso_local i32 @diff_tree_oid(i32*, i32*, i8*, %struct.diff_options*) #1

declare dso_local i32 @diff_root_tree_oid(i32*, i8*, %struct.diff_options*) #1

declare dso_local i32 @diffcore_std(%struct.diff_options*) #1

declare dso_local i32 @diff_flush_patch_id(%struct.diff_options*, %struct.object_id*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
