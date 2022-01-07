; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_generate_board_header_checksum.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_generate_board_header_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEADER_PARTITION_CALC_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Couldn't allocate memory for temporary board header!\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@ROOTFS_HEADER_LEN = common dso_local global i64 0, align 8
@BOARD_NAME_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generate_board_header_checksum(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @HEADER_PARTITION_CALC_LENGTH, align 4
  %11 = call i8* @malloc(i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = call i32 @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  %17 = call i32 @exit(i32 %16) #3
  unreachable

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @HEADER_PARTITION_CALC_LENGTH, align 4
  %21 = call i32 @memset(i8* %19, i32 255, i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* @ROOTFS_HEADER_LEN, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memcpy(i8* %22, i8* %23, i32 %25)
  %27 = load i64, i64* @ROOTFS_HEADER_LEN, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %9, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @memcpy(i8* %32, i8* %33, i32 4)
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 4
  store i64 %36, i64* %9, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i8* %39, i8* %40, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %9, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i64, i64* @ROOTFS_HEADER_LEN, align 8
  %53 = add i64 %52, 4
  %54 = load i64, i64* @BOARD_NAME_LEN, align 8
  %55 = add i64 %53, %54
  store i64 %55, i64* %9, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %18
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @memcpy(i8* %61, i8* %62, i32 8)
  br label %64

64:                                               ; preds = %58, %18
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @HEADER_PARTITION_CALC_LENGTH, align 4
  %67 = call i32 @zyxel_chksm(i8* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @zyxel_chksm(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
