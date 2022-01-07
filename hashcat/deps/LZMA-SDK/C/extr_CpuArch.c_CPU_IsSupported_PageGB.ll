; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_CpuArch.c_CPU_IsSupported_PageGB.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_CpuArch.c_CPU_IsSupported_PageGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CPU_IsSupported_PageGB() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x i32], align 16
  %5 = call i32 @x86cpuid_CheckAndRead(i32* %2)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @False, align 4
  store i32 %8, i32* %1, align 4
  br label %32

9:                                                ; preds = %0
  %10 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %15 = call i32 @MyCPUID(i32 -2147483648, i32* %11, i32* %12, i32* %13, i32* %14)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = icmp ult i32 %17, -2147483647
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = load i32, i32* @False, align 4
  store i32 %20, i32* %1, align 4
  br label %32

21:                                               ; preds = %9
  %22 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 16, i1 false)
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %27 = call i32 @MyCPUID(i32 -2147483647, i32* %23, i32* %24, i32* %25, i32* %26)
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 26
  %31 = and i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %21, %19, %7
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @x86cpuid_CheckAndRead(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MyCPUID(i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
