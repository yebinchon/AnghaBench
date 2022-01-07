; ModuleID = '/home/carl/AnghaBench/git/extr_tree-diff.c_diff_root_tree_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-diff.c_diff_root_tree_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.diff_options = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_root_tree_oid(%struct.object_id* %0, i8* %1, %struct.diff_options* %2) #0 {
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.diff_options*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.diff_options* %2, %struct.diff_options** %6, align 8
  %7 = load %struct.object_id*, %struct.object_id** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %10 = call i32 @diff_tree_oid(i32* null, %struct.object_id* %7, i8* %8, %struct.diff_options* %9)
  ret i32 %10
}

declare dso_local i32 @diff_tree_oid(i32*, %struct.object_id*, i8*, %struct.diff_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
