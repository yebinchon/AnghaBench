; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_generate_rootfs_header.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_generate_rootfs_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i64 }

@ROOTFS_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Couldn't allocate memory for rootfs header!\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@VERSION_STRING_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @generate_rootfs_header(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.file_info, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = bitcast %struct.file_info* %4 to { i32, i64 }*
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 0
  store i32 %0, i32* %12, align 8
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 1
  store i64 %1, i64* %13, align 8
  store i8* %2, i8** %5, align 8
  store i64 0, i64* %10, align 8
  %14 = load i32, i32* @ROOTFS_HEADER_LEN, align 4
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @exit(i32 %20) #3
  unreachable

22:                                               ; preds = %3
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @ROOTFS_HEADER_LEN, align 4
  %25 = call i32 @memset(i8* %23, i32 255, i32 %24)
  %26 = getelementptr inbounds %struct.file_info, %struct.file_info* %4, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = getelementptr inbounds %struct.file_info, %struct.file_info* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @zyxel_chksm(i8* %28, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = getelementptr inbounds %struct.file_info, %struct.file_info* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @htonl(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = call i32 (i8*, ...) @memcpy(i8* %37, i32* %7, i32 4)
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = call i32 (i8*, ...) @memcpy(i8* %43, i32* %8, i32 4)
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %10, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = load i64, i64* @VERSION_STRING_LEN, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %22
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @strlen(i8* %52)
  br label %56

54:                                               ; preds = %22
  %55 = load i64, i64* @VERSION_STRING_LEN, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i64 [ %53, %51 ], [ %55, %54 ]
  store i64 %57, i64* %6, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 (i8*, ...) @memcpy(i8* %60, i8* %61, i64 %62)
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %10, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %9, align 8
  ret i8* %70
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @zyxel_chksm(i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
