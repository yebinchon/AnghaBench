; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_convert.c_u32_to_hex.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_convert.c_u32_to_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.u32_to_hex.tbl = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u32_to_hex(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = bitcast [16 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.u32_to_hex.tbl, i32 0, i32 0), i64 16, i1 false)
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 0
  %9 = and i32 %8, 15
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %12, i8* %14, align 1
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 4
  %17 = and i32 %16, 15
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %20, i8* %22, align 1
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 15
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 12
  %33 = and i32 %32, 15
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %3, align 4
  %40 = ashr i32 %39, 16
  %41 = and i32 %40, 15
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 5
  store i8 %44, i8* %46, align 1
  %47 = load i32, i32* %3, align 4
  %48 = ashr i32 %47, 20
  %49 = and i32 %48, 15
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  store i8 %52, i8* %54, align 1
  %55 = load i32, i32* %3, align 4
  %56 = ashr i32 %55, 24
  %57 = and i32 %56, 15
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 7
  store i8 %60, i8* %62, align 1
  %63 = load i32, i32* %3, align 4
  %64 = ashr i32 %63, 28
  %65 = and i32 %64, 15
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 6
  store i8 %68, i8* %70, align 1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
