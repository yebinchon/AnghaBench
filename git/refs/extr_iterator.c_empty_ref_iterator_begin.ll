; ModuleID = '/home/carl/AnghaBench/git/refs/extr_iterator.c_empty_ref_iterator_begin.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_iterator.c_empty_ref_iterator_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.empty_ref_iterator = type { %struct.ref_iterator }

@empty_ref_iterator_vtable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_iterator* @empty_ref_iterator_begin() #0 {
  %1 = alloca %struct.empty_ref_iterator*, align 8
  %2 = alloca %struct.ref_iterator*, align 8
  %3 = call %struct.empty_ref_iterator* @xcalloc(i32 1, i32 4)
  store %struct.empty_ref_iterator* %3, %struct.empty_ref_iterator** %1, align 8
  %4 = load %struct.empty_ref_iterator*, %struct.empty_ref_iterator** %1, align 8
  %5 = getelementptr inbounds %struct.empty_ref_iterator, %struct.empty_ref_iterator* %4, i32 0, i32 0
  store %struct.ref_iterator* %5, %struct.ref_iterator** %2, align 8
  %6 = load %struct.ref_iterator*, %struct.ref_iterator** %2, align 8
  %7 = call i32 @base_ref_iterator_init(%struct.ref_iterator* %6, i32* @empty_ref_iterator_vtable, i32 1)
  %8 = load %struct.ref_iterator*, %struct.ref_iterator** %2, align 8
  ret %struct.ref_iterator* %8
}

declare dso_local %struct.empty_ref_iterator* @xcalloc(i32, i32) #1

declare dso_local i32 @base_ref_iterator_init(%struct.ref_iterator*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
