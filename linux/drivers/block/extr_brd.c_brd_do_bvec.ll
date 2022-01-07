; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_brd.c_brd_do_bvec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_brd.c_brd_do_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brd_device = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brd_device*, %struct.page*, i32, i32, i32, i32)* @brd_do_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brd_do_bvec(%struct.brd_device* %0, %struct.page* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.brd_device*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.brd_device* %0, %struct.brd_device** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i64 @op_is_write(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %6
  %19 = load %struct.brd_device*, %struct.brd_device** %7, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @copy_to_brd_setup(%struct.brd_device* %19, i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %58

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %6
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = call i8* @kmap_atomic(%struct.page* %28)
  store i8* %29, i8** %13, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @op_is_write(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %13, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  %38 = load %struct.brd_device*, %struct.brd_device** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @copy_from_brd(i8* %37, %struct.brd_device* %38, i32 %39, i32 %40)
  %42 = load %struct.page*, %struct.page** %8, align 8
  %43 = call i32 @flush_dcache_page(%struct.page* %42)
  br label %55

44:                                               ; preds = %27
  %45 = load %struct.page*, %struct.page** %8, align 8
  %46 = call i32 @flush_dcache_page(%struct.page* %45)
  %47 = load %struct.brd_device*, %struct.brd_device** %7, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr i8, i8* %48, i64 %50
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @copy_to_brd(%struct.brd_device* %47, i8* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %44, %33
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @kunmap_atomic(i8* %56)
  br label %58

58:                                               ; preds = %55, %25
  %59 = load i32, i32* %14, align 4
  ret i32 %59
}

declare dso_local i64 @op_is_write(i32) #1

declare dso_local i32 @copy_to_brd_setup(%struct.brd_device*, i32, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @copy_from_brd(i8*, %struct.brd_device*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @copy_to_brd(%struct.brd_device*, i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
