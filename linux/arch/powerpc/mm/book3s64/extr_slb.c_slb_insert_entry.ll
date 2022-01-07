; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_insert_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_insert_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32, i32)* @slb_insert_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @slb_insert_entry(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @get_vsid(i64 %16, i64 %17, i32 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* @EFAULT, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %6, align 8
  br label %48

25:                                               ; preds = %5
  %26 = call i32 (...) @barrier()
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @alloc_slb_index(i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @__mk_vsid_data(i64 %29, i32 %30, i64 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i64 @mk_esid_data(i64 %33, i32 %34, i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @assert_slb_presence(i32 0, i64 %37)
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %14, align 8
  call void asm sideeffect "slbmte $0, $1", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %39, i64 %40) #2, !srcloc !2
  %41 = call i32 (...) @barrier()
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %25
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @slb_cache_update(i64 %45)
  br label %47

47:                                               ; preds = %44, %25
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

declare dso_local i64 @get_vsid(i64, i64, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @alloc_slb_index(i32) #1

declare dso_local i64 @__mk_vsid_data(i64, i32, i64) #1

declare dso_local i64 @mk_esid_data(i64, i32, i32) #1

declare dso_local i32 @assert_slb_presence(i32, i64) #1

declare dso_local i32 @slb_cache_update(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1021}
