; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat_rbtree.c_rbt_memtype_erase.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat_rbtree.c_rbt_memtype_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memtype = type { i64, i64, i64, i32 }

@memtype_rbroot = common dso_local global i32 0, align 4
@MEMTYPE_EXACT_MATCH = common dso_local global i32 0, align 4
@MEMTYPE_END_MATCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@memtype_rb_augment_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.memtype* @rbt_memtype_erase(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.memtype*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.memtype*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* @MEMTYPE_EXACT_MATCH, align 4
  %10 = call %struct.memtype* @memtype_rb_match(i32* @memtype_rbroot, i64 %7, i64 %8, i32 %9)
  store %struct.memtype* %10, %struct.memtype** %6, align 8
  %11 = load %struct.memtype*, %struct.memtype** %6, align 8
  %12 = icmp ne %struct.memtype* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @MEMTYPE_END_MATCH, align 4
  %17 = call %struct.memtype* @memtype_rb_match(i32* @memtype_rbroot, i64 %14, i64 %15, i32 %16)
  store %struct.memtype* %17, %struct.memtype** %6, align 8
  %18 = load %struct.memtype*, %struct.memtype** %6, align 8
  %19 = icmp ne %struct.memtype* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.memtype* @ERR_PTR(i32 %22)
  store %struct.memtype* %23, %struct.memtype** %3, align 8
  br label %51

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.memtype*, %struct.memtype** %6, align 8
  %27 = getelementptr inbounds %struct.memtype, %struct.memtype* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.memtype*, %struct.memtype** %6, align 8
  %33 = getelementptr inbounds %struct.memtype, %struct.memtype* %32, i32 0, i32 3
  %34 = call i32 @rb_erase_augmented(i32* %33, i32* @memtype_rbroot, i32* @memtype_rb_augment_cb)
  br label %49

35:                                               ; preds = %25
  %36 = load %struct.memtype*, %struct.memtype** %6, align 8
  %37 = getelementptr inbounds %struct.memtype, %struct.memtype* %36, i32 0, i32 3
  %38 = call i32 @rb_erase_augmented(i32* %37, i32* @memtype_rbroot, i32* @memtype_rb_augment_cb)
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.memtype*, %struct.memtype** %6, align 8
  %41 = getelementptr inbounds %struct.memtype, %struct.memtype* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.memtype*, %struct.memtype** %6, align 8
  %43 = getelementptr inbounds %struct.memtype, %struct.memtype* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.memtype*, %struct.memtype** %6, align 8
  %46 = getelementptr inbounds %struct.memtype, %struct.memtype* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.memtype*, %struct.memtype** %6, align 8
  %48 = call i32 @memtype_rb_insert(i32* @memtype_rbroot, %struct.memtype* %47)
  store %struct.memtype* null, %struct.memtype** %3, align 8
  br label %51

49:                                               ; preds = %31
  %50 = load %struct.memtype*, %struct.memtype** %6, align 8
  store %struct.memtype* %50, %struct.memtype** %3, align 8
  br label %51

51:                                               ; preds = %49, %35, %20
  %52 = load %struct.memtype*, %struct.memtype** %3, align 8
  ret %struct.memtype* %52
}

declare dso_local %struct.memtype* @memtype_rb_match(i32*, i64, i64, i32) #1

declare dso_local %struct.memtype* @ERR_PTR(i32) #1

declare dso_local i32 @rb_erase_augmented(i32*, i32*, i32*) #1

declare dso_local i32 @memtype_rb_insert(i32*, %struct.memtype*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
