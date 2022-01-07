; ModuleID = '/home/carl/AnghaBench/lede/package/utils/jboot-tools/src/extr_jboot_config_read.c_print_mac.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/jboot-tools/src/extr_jboot_config_read.c_print_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_header = type { i64, i64, i32* }

@DATA_HEADER_CONFIG = common dso_local global i64 0, align 8
@DATA_HEADER_ID_MAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%02x:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_header**, i32)* @print_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mac(%struct.data_header** %0, i32 %1) #0 {
  %3 = alloca %struct.data_header**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.data_header** %0, %struct.data_header*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %65, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %68

11:                                               ; preds = %7
  %12 = load %struct.data_header**, %struct.data_header*** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.data_header*, %struct.data_header** %12, i64 %14
  %16 = load %struct.data_header*, %struct.data_header** %15, align 8
  %17 = getelementptr inbounds %struct.data_header, %struct.data_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DATA_HEADER_CONFIG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %11
  %22 = load %struct.data_header**, %struct.data_header*** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.data_header*, %struct.data_header** %22, i64 %24
  %26 = load %struct.data_header*, %struct.data_header** %25, align 8
  %27 = getelementptr inbounds %struct.data_header, %struct.data_header* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DATA_HEADER_ID_MAC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load %struct.data_header**, %struct.data_header*** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.data_header*, %struct.data_header** %36, i64 %38
  %40 = load %struct.data_header*, %struct.data_header** %39, align 8
  %41 = getelementptr inbounds %struct.data_header, %struct.data_header* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.data_header**, %struct.data_header*** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.data_header*, %struct.data_header** %52, i64 %54
  %56 = load %struct.data_header*, %struct.data_header** %55, align 8
  %57 = getelementptr inbounds %struct.data_header, %struct.data_header* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %51, %21, %11
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %7

68:                                               ; preds = %7
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
