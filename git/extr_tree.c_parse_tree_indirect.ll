; ModuleID = '/home/carl/AnghaBench/git/extr_tree.c_parse_tree_indirect.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree.c_parse_tree_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.tree = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global %struct.repository* null, align 8
@OBJ_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_tree_indirect(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %5 = load %struct.repository*, %struct.repository** @the_repository, align 8
  store %struct.repository* %5, %struct.repository** %3, align 8
  %6 = load %struct.repository*, %struct.repository** %3, align 8
  %7 = load %struct.object_id*, %struct.object_id** %2, align 8
  %8 = call %struct.object* @parse_object(%struct.repository* %6, %struct.object_id* %7)
  store %struct.object* %8, %struct.object** %4, align 8
  %9 = load %struct.repository*, %struct.repository** %3, align 8
  %10 = load %struct.object*, %struct.object** %4, align 8
  %11 = load i32, i32* @OBJ_TREE, align 4
  %12 = call i64 @repo_peel_to_type(%struct.repository* %9, i32* null, i32 0, %struct.object* %10, i32 %11)
  %13 = inttoptr i64 %12 to %struct.tree*
  ret %struct.tree* %13
}

declare dso_local %struct.object* @parse_object(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @repo_peel_to_type(%struct.repository*, i32*, i32, %struct.object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
