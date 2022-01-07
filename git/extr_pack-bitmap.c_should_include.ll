; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_should_include.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_should_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.commit_list*, %struct.TYPE_6__ }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.include_data = type { i32 }
%struct.object = type { i32 }

@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, i8*)* @should_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_include(%struct.commit* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.include_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit_list*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.include_data*
  store %struct.include_data* %10, %struct.include_data** %6, align 8
  %11 = load %struct.include_data*, %struct.include_data** %6, align 8
  %12 = getelementptr inbounds %struct.include_data, %struct.include_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.commit*, %struct.commit** %4, align 8
  %15 = getelementptr inbounds %struct.commit, %struct.commit* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @bitmap_position(i32 %13, i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.include_data*, %struct.include_data** %6, align 8
  %22 = getelementptr inbounds %struct.include_data, %struct.include_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.commit*, %struct.commit** %4, align 8
  %25 = bitcast %struct.commit* %24 to %struct.object*
  %26 = call i32 @ext_index_add_object(i32 %23, %struct.object* %25, i32* null)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.include_data*, %struct.include_data** %6, align 8
  %29 = getelementptr inbounds %struct.include_data, %struct.include_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.include_data*, %struct.include_data** %6, align 8
  %32 = load %struct.commit*, %struct.commit** %4, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @add_to_include_set(i32 %30, %struct.include_data* %31, i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %27
  %39 = load %struct.commit*, %struct.commit** %4, align 8
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %39, i32 0, i32 0
  %41 = load %struct.commit_list*, %struct.commit_list** %40, align 8
  store %struct.commit_list* %41, %struct.commit_list** %8, align 8
  br label %42

42:                                               ; preds = %45, %38
  %43 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %44 = icmp ne %struct.commit_list* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* @SEEN, align 4
  %47 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %48 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %46
  store i32 %53, i32* %51, align 4
  %54 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %55 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %54, i32 0, i32 0
  %56 = load %struct.commit_list*, %struct.commit_list** %55, align 8
  store %struct.commit_list* %56, %struct.commit_list** %8, align 8
  br label %42

57:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %59

58:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @bitmap_position(i32, i32*) #1

declare dso_local i32 @ext_index_add_object(i32, %struct.object*, i32*) #1

declare dso_local i32 @add_to_include_set(i32, %struct.include_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
