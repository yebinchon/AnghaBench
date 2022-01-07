; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_convert.c_u8_to_hex.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_convert.c_u8_to_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.u8_to_hex.tbl = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u8_to_hex(i8 signext %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i8], align 16
  store i8 %0, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  %6 = bitcast [16 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.u8_to_hex.tbl, i32 0, i32 0), i64 16, i1 false)
  %7 = load i8, i8* %3, align 1
  %8 = sext i8 %7 to i32
  %9 = ashr i32 %8, 0
  %10 = and i32 %9, 15
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %13, i8* %15, align 1
  %16 = load i8, i8* %3, align 1
  %17 = sext i8 %16 to i32
  %18 = ashr i32 %17, 4
  %19 = and i32 %18, 15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %22, i8* %24, align 1
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
