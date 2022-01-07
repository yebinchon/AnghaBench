; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_base_ref_store_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_base_ref_store_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { %struct.ref_storage_be* }
%struct.ref_storage_be = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @base_ref_store_init(%struct.ref_store* %0, %struct.ref_storage_be* %1) #0 {
  %3 = alloca %struct.ref_store*, align 8
  %4 = alloca %struct.ref_storage_be*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %3, align 8
  store %struct.ref_storage_be* %1, %struct.ref_storage_be** %4, align 8
  %5 = load %struct.ref_storage_be*, %struct.ref_storage_be** %4, align 8
  %6 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %7 = getelementptr inbounds %struct.ref_store, %struct.ref_store* %6, i32 0, i32 0
  store %struct.ref_storage_be* %5, %struct.ref_storage_be** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
