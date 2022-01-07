; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_setup_copyup_bvecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_setup_copyup_bvecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*, i64)* @setup_copyup_bvecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_copyup_bvecs(%struct.rbd_obj_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbd_obj_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %9 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @rbd_assert(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @calc_pages_for(i32 0, i64 %15)
  %17 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %18 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %20 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = call %struct.TYPE_2__* @kcalloc(i64 %21, i32 24, i32 %22)
  %24 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %25 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %24, i32 0, i32 1
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %27 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %90

33:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %81, %33
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %37 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %34
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = call i32 @min(i64 %41, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @GFP_NOIO, align 4
  %45 = call i32 @alloc_page(i32 %44)
  %46 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %47 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %45, i32* %51, align 8
  %52 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %53 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %40
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %90

63:                                               ; preds = %40
  %64 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %65 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %72 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %70, i32* %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %5, align 8
  %80 = sub nsw i64 %79, %78
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %63
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  br label %34

84:                                               ; preds = %34
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @rbd_assert(i32 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %60, %30
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i64 @calc_pages_for(i32, i64) #1

declare dso_local %struct.TYPE_2__* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @alloc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
