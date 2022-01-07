; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_extension_bitmap_set.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_extension_bitmap_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_ptls_extension_bitmap_t = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_ptls_extension_bitmap_t*, i32)* @extension_bitmap_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extension_bitmap_set(%struct.st_ptls_extension_bitmap_t* %0, i32 %1) #0 {
  %3 = alloca %struct.st_ptls_extension_bitmap_t*, align 8
  %4 = alloca i32, align 4
  store %struct.st_ptls_extension_bitmap_t* %0, %struct.st_ptls_extension_bitmap_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 64
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = srem i32 %9, 8
  %11 = shl i32 1, %10
  %12 = load %struct.st_ptls_extension_bitmap_t*, %struct.st_ptls_extension_bitmap_t** %3, align 8
  %13 = getelementptr inbounds %struct.st_ptls_extension_bitmap_t, %struct.st_ptls_extension_bitmap_t* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %15, 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %11
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %8, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
