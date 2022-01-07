; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tree_alloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tree_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @tree_alloc() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = call %struct.tree* @zmalloc(i32 4)
  store %struct.tree* %2, %struct.tree** %1, align 8
  %3 = load %struct.tree*, %struct.tree** %1, align 8
  %4 = call i32 @assert(%struct.tree* %3)
  %5 = load %struct.tree*, %struct.tree** %1, align 8
  %6 = call i32 @memset(%struct.tree* %5, i32 0, i32 4)
  %7 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %7
}

declare dso_local %struct.tree* @zmalloc(i32) #1

declare dso_local i32 @assert(%struct.tree*) #1

declare dso_local i32 @memset(%struct.tree*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
