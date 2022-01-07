; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzEnc.c_Xz_WriteHeader.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzEnc.c_Xz_WriteHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XZ_STREAM_HEADER_SIZE = common dso_local global i32 0, align 4
@XZ_SIG = common dso_local global i32 0, align 4
@XZ_SIG_SIZE = common dso_local global i64 0, align 8
@XZ_STREAM_FLAGS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @Xz_WriteHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Xz_WriteHeader(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @XZ_STREAM_HEADER_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load i32, i32* @XZ_SIG, align 4
  %13 = load i64, i64* @XZ_SIG_SIZE, align 8
  %14 = call i32 @memcpy(i64* %11, i32 %12, i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 8
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @XZ_SIG_SIZE, align 8
  %19 = getelementptr inbounds i64, i64* %11, i64 %18
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 255
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @XZ_SIG_SIZE, align 8
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds i64, i64* %11, i64 %24
  store i64 %22, i64* %25, align 8
  %26 = load i64, i64* @XZ_SIG_SIZE, align 8
  %27 = getelementptr inbounds i64, i64* %11, i64 %26
  %28 = load i32, i32* @XZ_STREAM_FLAGS_SIZE, align 4
  %29 = call i32 @CrcCalc(i64* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i64, i64* @XZ_SIG_SIZE, align 8
  %31 = getelementptr inbounds i64, i64* %11, i64 %30
  %32 = load i32, i32* @XZ_STREAM_FLAGS_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @SetUi32(i64* %34, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @XZ_STREAM_HEADER_SIZE, align 4
  %39 = call i32 @WriteBytes(i32* %37, i64* %11, i32 %38)
  %40 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %40)
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i64*, i32, i64) #2

declare dso_local i32 @CrcCalc(i64*, i32) #2

declare dso_local i32 @SetUi32(i64*, i32) #2

declare dso_local i32 @WriteBytes(i32*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
