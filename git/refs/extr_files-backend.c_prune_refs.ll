; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_prune_refs.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_prune_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_ref_store = type { i32 }
%struct.ref_to_prune = type { %struct.ref_to_prune* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_ref_store*, %struct.ref_to_prune**)* @prune_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_refs(%struct.files_ref_store* %0, %struct.ref_to_prune** %1) #0 {
  %3 = alloca %struct.files_ref_store*, align 8
  %4 = alloca %struct.ref_to_prune**, align 8
  %5 = alloca %struct.ref_to_prune*, align 8
  store %struct.files_ref_store* %0, %struct.files_ref_store** %3, align 8
  store %struct.ref_to_prune** %1, %struct.ref_to_prune*** %4, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = load %struct.ref_to_prune**, %struct.ref_to_prune*** %4, align 8
  %8 = load %struct.ref_to_prune*, %struct.ref_to_prune** %7, align 8
  %9 = icmp ne %struct.ref_to_prune* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.ref_to_prune**, %struct.ref_to_prune*** %4, align 8
  %12 = load %struct.ref_to_prune*, %struct.ref_to_prune** %11, align 8
  store %struct.ref_to_prune* %12, %struct.ref_to_prune** %5, align 8
  %13 = load %struct.ref_to_prune*, %struct.ref_to_prune** %5, align 8
  %14 = getelementptr inbounds %struct.ref_to_prune, %struct.ref_to_prune* %13, i32 0, i32 0
  %15 = load %struct.ref_to_prune*, %struct.ref_to_prune** %14, align 8
  %16 = load %struct.ref_to_prune**, %struct.ref_to_prune*** %4, align 8
  store %struct.ref_to_prune* %15, %struct.ref_to_prune** %16, align 8
  %17 = load %struct.files_ref_store*, %struct.files_ref_store** %3, align 8
  %18 = load %struct.ref_to_prune*, %struct.ref_to_prune** %5, align 8
  %19 = call i32 @prune_ref(%struct.files_ref_store* %17, %struct.ref_to_prune* %18)
  %20 = load %struct.ref_to_prune*, %struct.ref_to_prune** %5, align 8
  %21 = call i32 @free(%struct.ref_to_prune* %20)
  br label %6

22:                                               ; preds = %6
  ret void
}

declare dso_local i32 @prune_ref(%struct.files_ref_store*, %struct.ref_to_prune*) #1

declare dso_local i32 @free(%struct.ref_to_prune*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
