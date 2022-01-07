; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_generate_kernel_header.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_generate_kernel_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i64 }

@KERNEL_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Couldn't allocate memory for kernel header!\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @generate_kernel_header(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.file_info, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.file_info* %3 to { i32, i64 }*
  %9 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %8, i32 0, i32 0
  store i32 %0, i32* %9, align 8
  %10 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32, i32* @KERNEL_HEADER_LEN, align 4
  %12 = call i8* @malloc(i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.file_info, %struct.file_info* %3, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds %struct.file_info, %struct.file_info* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @zyxel_chksm(i8* %22, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = getelementptr inbounds %struct.file_info, %struct.file_info* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @htonl(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = call i32 @memcpy(i8* %31, i32* %4, i32 4)
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = call i32 @memcpy(i8* %37, i32* %5, i32 4)
  %39 = load i8*, i8** %6, align 8
  ret i8* %39
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @zyxel_chksm(i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
