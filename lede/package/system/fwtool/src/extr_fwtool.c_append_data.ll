; ModuleID = '/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_append_data.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwimage_trailer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.fwimage_trailer*, i32)* @append_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_data(i32* %0, i32* %1, %struct.fwimage_trailer* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fwimage_trailer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [512 x i8], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.fwimage_trailer* %2, %struct.fwimage_trailer** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %4, %26
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @fread(i8* %13, i32 1, i32 512, i32* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %40

19:                                               ; preds = %12
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %41

26:                                               ; preds = %19
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %8, align 8
  %29 = getelementptr inbounds %struct.fwimage_trailer, %struct.fwimage_trailer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %8, align 8
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @trailer_update_crc(%struct.fwimage_trailer* %32, i8* %33, i32 %34)
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @fwrite(i8* %36, i32 %37, i32 1, i32* %38)
  br label %12

40:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @trailer_update_crc(%struct.fwimage_trailer*, i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
