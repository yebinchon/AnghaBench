; ModuleID = '/home/carl/AnghaBench/git/refs/extr_iterator.c_base_ref_iterator_init.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_iterator.c_base_ref_iterator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32, i64, i32*, i32*, %struct.ref_iterator_vtable* }
%struct.ref_iterator_vtable = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @base_ref_iterator_init(%struct.ref_iterator* %0, %struct.ref_iterator_vtable* %1, i32 %2) #0 {
  %4 = alloca %struct.ref_iterator*, align 8
  %5 = alloca %struct.ref_iterator_vtable*, align 8
  %6 = alloca i32, align 4
  store %struct.ref_iterator* %0, %struct.ref_iterator** %4, align 8
  store %struct.ref_iterator_vtable* %1, %struct.ref_iterator_vtable** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ref_iterator_vtable*, %struct.ref_iterator_vtable** %5, align 8
  %8 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  %9 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %8, i32 0, i32 4
  store %struct.ref_iterator_vtable* %7, %struct.ref_iterator_vtable** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  %16 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  %18 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  %20 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  %22 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
