; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_transfer_xor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_transfer_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i8*, i32 }
%struct.page = type { i32 }

@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, i32, %struct.page*, i32, %struct.page*, i32, i32, i32)* @transfer_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transfer_xor(%struct.loop_device* %0, i32 %1, %struct.page* %2, i32 %3, %struct.page* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.loop_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.page* %2, %struct.page** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.page* %4, %struct.page** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load %struct.page*, %struct.page** %11, align 8
  %25 = call i8* @kmap_atomic(%struct.page* %24)
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %17, align 8
  %29 = load %struct.page*, %struct.page** %13, align 8
  %30 = call i8* @kmap_atomic(%struct.page* %29)
  %31 = load i32, i32* %14, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %18, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @READ, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %8
  %38 = load i8*, i8** %17, align 8
  store i8* %38, i8** %19, align 8
  %39 = load i8*, i8** %18, align 8
  store i8* %39, i8** %20, align 8
  br label %43

40:                                               ; preds = %8
  %41 = load i8*, i8** %18, align 8
  store i8* %41, i8** %19, align 8
  %42 = load i8*, i8** %17, align 8
  store i8* %42, i8** %20, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.loop_device*, %struct.loop_device** %9, align 8
  %45 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %21, align 8
  %47 = load %struct.loop_device*, %struct.loop_device** %9, align 8
  %48 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %50

50:                                               ; preds = %72, %43
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i8*, i8** %19, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %19, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8*, i8** %21, align 8
  %60 = load i32, i32* %22, align 4
  %61 = and i32 %60, 511
  %62 = load i32, i32* %23, align 4
  %63 = srem i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = xor i32 %58, %67
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %20, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %20, align 8
  store i8 %69, i8* %70, align 1
  br label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %22, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %22, align 4
  br label %50

75:                                               ; preds = %50
  %76 = load i8*, i8** %18, align 8
  %77 = call i32 @kunmap_atomic(i8* %76)
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @kunmap_atomic(i8* %78)
  %80 = call i32 (...) @cond_resched()
  ret i32 0
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
