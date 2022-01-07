; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pkeys.c_pkey_access_permitted.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pkeys.c_pkey_access_permitted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IAMR_EX_BIT = common dso_local global i32 0, align 4
@AMR_RD_BIT = common dso_local global i32 0, align 4
@AMR_WR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pkey_access_permitted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_access_permitted(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @is_pkey_enabled(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %54

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pkeyshift(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = call i32 (...) @read_iamr()
  %21 = load i32, i32* @IAMR_EX_BIT, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %54

27:                                               ; preds = %19, %14
  %28 = call i32 (...) @read_amr()
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @AMR_RD_BIT, align 4
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @AMR_WR_BIT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %41, %38
  %50 = phi i1 [ false, %38 ], [ %48, %41 ]
  br label %51

51:                                               ; preds = %49, %31
  %52 = phi i1 [ true, %31 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %26, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @is_pkey_enabled(i32) #1

declare dso_local i32 @pkeyshift(i32) #1

declare dso_local i32 @read_iamr(...) #1

declare dso_local i32 @read_amr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
