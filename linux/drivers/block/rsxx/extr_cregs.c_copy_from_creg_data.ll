; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_copy_from_creg_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_copy_from_creg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i64, i32 }

@EIO = common dso_local global i32 0, align 4
@LITTLE_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*, i32, i8*, i32)* @copy_from_creg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_from_creg_data(%struct.rsxx_cardinfo* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsxx_cardinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %11, align 8
  %14 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %15 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %63

22:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %57, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  %27 = load i64, i64* @LITTLE_ENDIAN, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %34 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @CREG_DATA(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = call i32 @ioread32be(i64 %38)
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %56

44:                                               ; preds = %29, %26
  %45 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %46 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @CREG_DATA(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @ioread32(i64 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 4
  store i32 %61, i32* %7, align 4
  br label %23

62:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %19
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i64 @CREG_DATA(i32) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
