; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/skas/extr_uaccess.c_do_op_one_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/skas/extr_uaccess.c_do_op_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32 (i64, i32, i8*)*, i8*)* @do_op_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_op_one_page(i64 %0, i32 %1, i32 %2, i32 (i64, i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i64, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (i64, i32, i8*)* %3, i32 (i64, i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32* @maybe_map(i64 %15, i32 %16)
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %41

21:                                               ; preds = %5
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.page* @pte_page(i32 %23)
  store %struct.page* %24, %struct.page** %12, align 8
  %25 = load %struct.page*, %struct.page** %12, align 8
  %26 = call i64 @kmap_atomic(%struct.page* %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @PAGE_MASK, align 8
  %29 = xor i64 %28, -1
  %30 = and i64 %27, %29
  %31 = add i64 %26, %30
  store i64 %31, i64* %7, align 8
  %32 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 %32(i64 %33, i32 %34, i8* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i64, i64* %7, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @kunmap_atomic(i8* %38)
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %21, %20
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32* @maybe_map(i64, i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i64 @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
