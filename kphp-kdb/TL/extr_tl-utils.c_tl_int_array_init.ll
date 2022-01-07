; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_int_array_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_int_array_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_int_array = type { i32*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_int_array_init(%struct.tl_int_array* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.tl_int_array*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.tl_int_array* %0, %struct.tl_int_array** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %9 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %8, i32 0, i32 0
  store i32* %7, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %12 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %14 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
