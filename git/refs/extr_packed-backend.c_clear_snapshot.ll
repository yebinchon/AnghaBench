; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_clear_snapshot.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_clear_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_ref_store = type { %struct.snapshot* }
%struct.snapshot = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packed_ref_store*)* @clear_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_snapshot(%struct.packed_ref_store* %0) #0 {
  %2 = alloca %struct.packed_ref_store*, align 8
  %3 = alloca %struct.snapshot*, align 8
  store %struct.packed_ref_store* %0, %struct.packed_ref_store** %2, align 8
  %4 = load %struct.packed_ref_store*, %struct.packed_ref_store** %2, align 8
  %5 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %4, i32 0, i32 0
  %6 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %7 = icmp ne %struct.snapshot* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.packed_ref_store*, %struct.packed_ref_store** %2, align 8
  %10 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %9, i32 0, i32 0
  %11 = load %struct.snapshot*, %struct.snapshot** %10, align 8
  store %struct.snapshot* %11, %struct.snapshot** %3, align 8
  %12 = load %struct.packed_ref_store*, %struct.packed_ref_store** %2, align 8
  %13 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %12, i32 0, i32 0
  store %struct.snapshot* null, %struct.snapshot** %13, align 8
  %14 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %15 = call i32 @release_snapshot(%struct.snapshot* %14)
  br label %16

16:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @release_snapshot(%struct.snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
