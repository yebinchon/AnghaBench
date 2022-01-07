; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_tree_entry_interesting.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_tree_entry_interesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.name_entry = type { i32 }
%struct.strbuf = type { i32 }
%struct.pathspec = type { i32 }

@PATHSPEC_EXCLUDE = common dso_local global i32 0, align 4
@entry_not_interesting = common dso_local global i32 0, align 4
@all_entries_interesting = common dso_local global i32 0, align 4
@entry_interesting = common dso_local global i32 0, align 4
@all_entries_not_interesting = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tree_entry_interesting(%struct.index_state* %0, %struct.name_entry* %1, %struct.strbuf* %2, i32 %3, %struct.pathspec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca %struct.name_entry*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pathspec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %7, align 8
  store %struct.name_entry* %1, %struct.name_entry** %8, align 8
  store %struct.strbuf* %2, %struct.strbuf** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.pathspec* %4, %struct.pathspec** %11, align 8
  %14 = load %struct.index_state*, %struct.index_state** %7, align 8
  %15 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.pathspec*, %struct.pathspec** %11, align 8
  %19 = call i32 @do_match(%struct.index_state* %14, %struct.name_entry* %15, %struct.strbuf* %16, i32 %17, %struct.pathspec* %18, i32 0)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.pathspec*, %struct.pathspec** %11, align 8
  %21 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @entry_not_interesting, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %5
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %90

32:                                               ; preds = %26
  %33 = load %struct.index_state*, %struct.index_state** %7, align 8
  %34 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %35 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.pathspec*, %struct.pathspec** %11, align 8
  %38 = call i32 @do_match(%struct.index_state* %33, %struct.name_entry* %34, %struct.strbuf* %35, i32 %36, %struct.pathspec* %37, i32 1)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @all_entries_interesting, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @entry_not_interesting, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @entry_interesting, align 4
  store i32 %47, i32* %6, align 4
  br label %90

48:                                               ; preds = %42, %32
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @entry_not_interesting, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %6, align 4
  br label %90

54:                                               ; preds = %48
  %55 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %56 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @S_ISDIR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @entry_interesting, align 4
  %63 = icmp uge i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @entry_interesting, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @entry_interesting, align 4
  store i32 %69, i32* %6, align 4
  br label %90

70:                                               ; preds = %64, %60, %54
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @entry_interesting, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @entry_interesting, align 4
  %77 = icmp uge i32 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @all_entries_interesting, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @entry_interesting, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %74
  %87 = load i32, i32* @entry_not_interesting, align 4
  store i32 %87, i32* %6, align 4
  br label %90

88:                                               ; preds = %82, %78
  %89 = load i32, i32* @all_entries_not_interesting, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %88, %86, %68, %52, %46, %30
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @do_match(%struct.index_state*, %struct.name_entry*, %struct.strbuf*, i32, %struct.pathspec*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
