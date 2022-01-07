; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_disambiguate_treeish_only.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_disambiguate_treeish_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }

@OBJ_TREE = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.object_id*, i8*)* @disambiguate_treeish_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disambiguate_treeish_only(%struct.repository* %0, %struct.object_id* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object*, align 8
  %9 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.repository*, %struct.repository** %5, align 8
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = call i32 @oid_object_info(%struct.repository* %10, %struct.object_id* %11, i32* null)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @OBJ_TREE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @OBJ_COMMIT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store i32 1, i32* %4, align 4
  br label %48

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @OBJ_TAG, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %48

26:                                               ; preds = %21
  %27 = load %struct.repository*, %struct.repository** %5, align 8
  %28 = load %struct.repository*, %struct.repository** %5, align 8
  %29 = load %struct.object_id*, %struct.object_id** %6, align 8
  %30 = call i32 @parse_object(%struct.repository* %28, %struct.object_id* %29)
  %31 = call %struct.object* @deref_tag(%struct.repository* %27, i32 %30, i32* null, i32 0)
  store %struct.object* %31, %struct.object** %8, align 8
  %32 = load %struct.object*, %struct.object** %8, align 8
  %33 = icmp ne %struct.object* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load %struct.object*, %struct.object** %8, align 8
  %36 = getelementptr inbounds %struct.object, %struct.object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OBJ_TREE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.object*, %struct.object** %8, align 8
  %42 = getelementptr inbounds %struct.object, %struct.object* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OBJ_COMMIT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34
  store i32 1, i32* %4, align 4
  br label %48

47:                                               ; preds = %40, %26
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %46, %25, %20
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @oid_object_info(%struct.repository*, %struct.object_id*, i32*) #1

declare dso_local %struct.object* @deref_tag(%struct.repository*, i32, i32*, i32) #1

declare dso_local i32 @parse_object(%struct.repository*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
