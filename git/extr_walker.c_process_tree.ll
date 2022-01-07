; ModuleID = '/home/carl/AnghaBench/git/extr_walker.c_process_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_walker.c_process_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { i32 }
%struct.tree = type { %struct.object, i32, i32 }
%struct.object = type { i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { i32, i32 }
%struct.blob = type { %struct.object }

@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walker*, %struct.tree*)* @process_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_tree(%struct.walker* %0, %struct.tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.walker*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca %struct.tree_desc, align 4
  %7 = alloca %struct.name_entry, align 4
  %8 = alloca %struct.object*, align 8
  %9 = alloca %struct.tree*, align 8
  %10 = alloca %struct.blob*, align 8
  store %struct.walker* %0, %struct.walker** %4, align 8
  store %struct.tree* %1, %struct.tree** %5, align 8
  %11 = load %struct.tree*, %struct.tree** %5, align 8
  %12 = call i64 @parse_tree(%struct.tree* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.tree*, %struct.tree** %5, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tree*, %struct.tree** %5, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @init_tree_desc(%struct.tree_desc* %6, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %66, %31, %15
  %24 = call i64 @tree_entry(%struct.tree_desc* %6, %struct.name_entry* %7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  store %struct.object* null, %struct.object** %8, align 8
  %27 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISGITLINK(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %23

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* @the_repository, align 4
  %39 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %7, i32 0, i32 0
  %40 = call %struct.tree* @lookup_tree(i32 %38, i32* %39)
  store %struct.tree* %40, %struct.tree** %9, align 8
  %41 = load %struct.tree*, %struct.tree** %9, align 8
  %42 = icmp ne %struct.tree* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.tree*, %struct.tree** %9, align 8
  %45 = getelementptr inbounds %struct.tree, %struct.tree* %44, i32 0, i32 0
  store %struct.object* %45, %struct.object** %8, align 8
  br label %46

46:                                               ; preds = %43, %37
  br label %57

47:                                               ; preds = %32
  %48 = load i32, i32* @the_repository, align 4
  %49 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %7, i32 0, i32 0
  %50 = call %struct.blob* @lookup_blob(i32 %48, i32* %49)
  store %struct.blob* %50, %struct.blob** %10, align 8
  %51 = load %struct.blob*, %struct.blob** %10, align 8
  %52 = icmp ne %struct.blob* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.blob*, %struct.blob** %10, align 8
  %55 = getelementptr inbounds %struct.blob, %struct.blob* %54, i32 0, i32 0
  store %struct.object* %55, %struct.object** %8, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56, %46
  %58 = load %struct.object*, %struct.object** %8, align 8
  %59 = icmp ne %struct.object* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.walker*, %struct.walker** %4, align 8
  %62 = load %struct.object*, %struct.object** %8, align 8
  %63 = call i64 @process(%struct.walker* %61, %struct.object* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %57
  store i32 -1, i32* %3, align 4
  br label %70

66:                                               ; preds = %60
  br label %23

67:                                               ; preds = %23
  %68 = load %struct.tree*, %struct.tree** %5, align 8
  %69 = call i32 @free_tree_buffer(%struct.tree* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %65, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @parse_tree(%struct.tree*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.tree* @lookup_tree(i32, i32*) #1

declare dso_local %struct.blob* @lookup_blob(i32, i32*) #1

declare dso_local i64 @process(%struct.walker*, %struct.object*) #1

declare dso_local i32 @free_tree_buffer(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
