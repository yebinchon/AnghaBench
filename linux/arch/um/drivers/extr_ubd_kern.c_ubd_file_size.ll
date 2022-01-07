; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_ubd_file_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_ubd_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubd = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@file_reader = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubd*, i32*)* @ubd_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubd_file_size(%struct.ubd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ubd* %0, %struct.ubd** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.ubd*, %struct.ubd** %4, align 8
  %17 = getelementptr inbounds %struct.ubd, %struct.ubd* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.ubd*, %struct.ubd** %4, align 8
  %22 = getelementptr inbounds %struct.ubd, %struct.ubd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.ubd*, %struct.ubd** %4, align 8
  %28 = getelementptr inbounds %struct.ubd, %struct.ubd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  br label %58

31:                                               ; preds = %20, %2
  %32 = load %struct.ubd*, %struct.ubd** %4, align 8
  %33 = getelementptr inbounds %struct.ubd, %struct.ubd* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (...) @OPENFLAGS()
  %36 = call i32 @of_read(i32 %35)
  %37 = call i32 @os_open_file(i8* %34, i32 %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %31
  %43 = load i32, i32* @file_reader, align 4
  %44 = call i32 @read_cow_header(i32 %43, i32* %7, i32* %9, i8** %11, i32* %12, i64* %13, i32* %14, i32* %10, i32* %15)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @os_close_file(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.ubd*, %struct.ubd** %4, align 8
  %53 = getelementptr inbounds %struct.ubd, %struct.ubd* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %6, align 8
  br label %57

55:                                               ; preds = %42
  %56 = load i8*, i8** %11, align 8
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %26
  %59 = load i8*, i8** %6, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @os_file_size(i8* %59, i32* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %40
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @os_open_file(i8*, i32, i32) #1

declare dso_local i32 @of_read(i32) #1

declare dso_local i32 @OPENFLAGS(...) #1

declare dso_local i32 @read_cow_header(i32, i32*, i32*, i8**, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @os_close_file(i32) #1

declare dso_local i32 @os_file_size(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
