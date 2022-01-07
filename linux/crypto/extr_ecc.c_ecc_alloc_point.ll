; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_alloc_point.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_alloc_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_point = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ecc_point* (i32)* @ecc_alloc_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ecc_point* @ecc_alloc_point(i32 %0) #0 {
  %2 = alloca %struct.ecc_point*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecc_point*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ecc_point* @kmalloc(i32 24, i32 %5)
  store %struct.ecc_point* %6, %struct.ecc_point** %4, align 8
  %7 = load %struct.ecc_point*, %struct.ecc_point** %4, align 8
  %8 = icmp ne %struct.ecc_point* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ecc_point* null, %struct.ecc_point** %2, align 8
  br label %43

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @ecc_alloc_digits_space(i32 %11)
  %13 = load %struct.ecc_point*, %struct.ecc_point** %4, align 8
  %14 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.ecc_point*, %struct.ecc_point** %4, align 8
  %16 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %40

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = call i8* @ecc_alloc_digits_space(i32 %21)
  %23 = load %struct.ecc_point*, %struct.ecc_point** %4, align 8
  %24 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ecc_point*, %struct.ecc_point** %4, align 8
  %26 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %35

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.ecc_point*, %struct.ecc_point** %4, align 8
  %33 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ecc_point*, %struct.ecc_point** %4, align 8
  store %struct.ecc_point* %34, %struct.ecc_point** %2, align 8
  br label %43

35:                                               ; preds = %29
  %36 = load %struct.ecc_point*, %struct.ecc_point** %4, align 8
  %37 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @ecc_free_digits_space(i8* %38)
  br label %40

40:                                               ; preds = %35, %19
  %41 = load %struct.ecc_point*, %struct.ecc_point** %4, align 8
  %42 = call i32 @kfree(%struct.ecc_point* %41)
  store %struct.ecc_point* null, %struct.ecc_point** %2, align 8
  br label %43

43:                                               ; preds = %40, %30, %9
  %44 = load %struct.ecc_point*, %struct.ecc_point** %2, align 8
  ret %struct.ecc_point* %44
}

declare dso_local %struct.ecc_point* @kmalloc(i32, i32) #1

declare dso_local i8* @ecc_alloc_digits_space(i32) #1

declare dso_local i32 @ecc_free_digits_space(i8*) #1

declare dso_local i32 @kfree(%struct.ecc_point*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
