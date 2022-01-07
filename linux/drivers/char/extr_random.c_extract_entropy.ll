; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_extract_entropy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_extract_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { i32, i32, i32, i32 }

@EXTRACT_SIZE = common dso_local global i32 0, align 4
@fips_enabled = common dso_local global i64 0, align 8
@_RET_IP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.entropy_store*, i8*, i64, i32, i32)* @extract_entropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_entropy(%struct.entropy_store* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.entropy_store*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.entropy_store* %0, %struct.entropy_store** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @EXTRACT_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i64, i64* @fips_enabled, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %5
  %21 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %22 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %21, i32 0, i32 2
  %23 = load i64, i64* %13, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %26 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %60, label %29

29:                                               ; preds = %20
  %30 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %31 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %33 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %32, i32 0, i32 2
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %37 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EXTRACT_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %42 = call i32 @ENTROPY_BITS(%struct.entropy_store* %41)
  %43 = load i32, i32* @_RET_IP_, align 4
  %44 = call i32 @trace_extract_entropy(i32 %38, i64 %40, i32 %42, i32 %43)
  %45 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %46 = load i32, i32* @EXTRACT_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 @xfer_secondary_pool(%struct.entropy_store* %45, i64 %47)
  %49 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %50 = call i32 @extract_buf(%struct.entropy_store* %49, i32* %17)
  %51 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %52 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %51, i32 0, i32 2
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %56 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EXTRACT_SIZE, align 4
  %59 = call i32 @memcpy(i32 %57, i32* %17, i32 %58)
  br label %60

60:                                               ; preds = %29, %20
  %61 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %62 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %61, i32 0, i32 2
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %60, %5
  %66 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %67 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %71 = call i32 @ENTROPY_BITS(%struct.entropy_store* %70)
  %72 = load i32, i32* @_RET_IP_, align 4
  %73 = call i32 @trace_extract_entropy(i32 %68, i64 %69, i32 %71, i32 %72)
  %74 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @xfer_secondary_pool(%struct.entropy_store* %74, i64 %75)
  %77 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @account(%struct.entropy_store* %77, i64 %78, i32 %79, i32 %80)
  store i64 %81, i64* %8, align 8
  %82 = load %struct.entropy_store*, %struct.entropy_store** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @fips_enabled, align 8
  %86 = call i32 @_extract_entropy(%struct.entropy_store* %82, i8* %83, i64 %84, i64 %85)
  %87 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %87)
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @trace_extract_entropy(i32, i64, i32, i32) #2

declare dso_local i32 @ENTROPY_BITS(%struct.entropy_store*) #2

declare dso_local i32 @xfer_secondary_pool(%struct.entropy_store*, i64) #2

declare dso_local i32 @extract_buf(%struct.entropy_store*, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i64 @account(%struct.entropy_store*, i64, i32, i32) #2

declare dso_local i32 @_extract_entropy(%struct.entropy_store*, i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
