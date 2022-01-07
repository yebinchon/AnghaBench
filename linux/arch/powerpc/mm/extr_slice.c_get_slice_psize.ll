; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_get_slice_psize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_get_slice_psize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_slice_psize(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i32 (...) @radix_enabled()
  %9 = call i32 @VM_BUG_ON(i32 %8)
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @slice_addr_is_low(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 0
  %16 = call i8* @mm_ctx_low_slices(i32* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @GET_LOW_SLICE_INDEX(i64 %17)
  store i32 %18, i32* %6, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = call i8* @mm_ctx_high_slices(i32* %21)
  store i8* %22, i8** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @GET_HIGH_SLICE_INDEX(i64 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 4
  %37 = ashr i32 %34, %36
  %38 = and i32 %37, 15
  ret i32 %38
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @radix_enabled(...) #1

declare dso_local i64 @slice_addr_is_low(i64) #1

declare dso_local i8* @mm_ctx_low_slices(i32*) #1

declare dso_local i32 @GET_LOW_SLICE_INDEX(i64) #1

declare dso_local i8* @mm_ctx_high_slices(i32*) #1

declare dso_local i32 @GET_HIGH_SLICE_INDEX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
