; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_read_stream.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_read_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, i8*, i32)* @read_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_stream(%struct.ldc_channel* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %10 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %3
  %14 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %15 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %16 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %19 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @read_nonraw(%struct.ldc_channel* %14, i64 %17, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %13
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %30 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %32 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %3
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %41 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %46 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %49 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @memcpy(i8* %44, i64 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %57 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %62 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %43, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @read_nonraw(%struct.ldc_channel*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
