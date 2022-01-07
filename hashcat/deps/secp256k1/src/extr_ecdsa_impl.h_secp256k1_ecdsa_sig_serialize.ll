; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecdsa_impl.h_secp256k1_ecdsa_sig_serialize.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecdsa_impl.h_secp256k1_ecdsa_sig_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32*, i32*)* @secp256k1_ecdsa_sig_serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_ecdsa_sig_serialize(i8* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [33 x i8], align 16
  %11 = alloca [33 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = bitcast [33 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 33, i1 false)
  %17 = bitcast [33 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 33, i1 false)
  %18 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  store i8* %18, i8** %12, align 8
  %19 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 0
  store i8* %19, i8** %13, align 8
  store i64 33, i64* %14, align 8
  store i64 33, i64* %15, align 8
  %20 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 1
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @secp256k1_scalar_get_b32(i8* %20, i32* %21)
  %23 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 1
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @secp256k1_scalar_get_b32(i8* %23, i32* %24)
  br label %26

26:                                               ; preds = %43, %4
  %27 = load i64, i64* %14, align 8
  %28 = icmp ugt i64 %27, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp slt i32 %39, 128
  br label %41

41:                                               ; preds = %35, %29, %26
  %42 = phi i1 [ false, %29 ], [ false, %26 ], [ %40, %35 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %14, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %12, align 8
  br label %26

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i64, i64* %15, align 8
  %51 = icmp ugt i64 %50, 1
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %62, 128
  br label %64

64:                                               ; preds = %58, %52, %49
  %65 = phi i1 [ false, %52 ], [ false, %49 ], [ %63, %58 ]
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = load i64, i64* %15, align 8
  %68 = add i64 %67, -1
  store i64 %68, i64* %15, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %13, align 8
  br label %49

71:                                               ; preds = %64
  %72 = load i64*, i64** %7, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = add i64 6, %74
  %76 = load i64, i64* %14, align 8
  %77 = add i64 %75, %76
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load i64, i64* %15, align 8
  %81 = add i64 6, %80
  %82 = load i64, i64* %14, align 8
  %83 = add i64 %81, %82
  %84 = load i64*, i64** %7, align 8
  store i64 %83, i64* %84, align 8
  store i32 0, i32* %5, align 4
  br label %128

85:                                               ; preds = %71
  %86 = load i64, i64* %15, align 8
  %87 = add i64 6, %86
  %88 = load i64, i64* %14, align 8
  %89 = add i64 %87, %88
  %90 = load i64*, i64** %7, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 48, i8* %92, align 1
  %93 = load i64, i64* %15, align 8
  %94 = add i64 4, %93
  %95 = load i64, i64* %14, align 8
  %96 = add i64 %94, %95
  %97 = trunc i64 %96 to i8
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8 %97, i8* %99, align 1
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  store i8 2, i8* %101, align 1
  %102 = load i64, i64* %14, align 8
  %103 = trunc i64 %102 to i8
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 3
  store i8 %103, i8* %105, align 1
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  %108 = load i8*, i8** %12, align 8
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @memcpy(i8* %107, i8* %108, i64 %109)
  %111 = load i8*, i8** %6, align 8
  %112 = load i64, i64* %14, align 8
  %113 = add i64 4, %112
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8 2, i8* %114, align 1
  %115 = load i64, i64* %15, align 8
  %116 = trunc i64 %115 to i8
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %14, align 8
  %119 = add i64 5, %118
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 %116, i8* %120, align 1
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = getelementptr inbounds i8, i8* %123, i64 6
  %125 = load i8*, i8** %13, align 8
  %126 = load i64, i64* %15, align 8
  %127 = call i32 @memcpy(i8* %124, i8* %125, i64 %126)
  store i32 1, i32* %5, align 4
  br label %128

128:                                              ; preds = %85, %79
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @secp256k1_scalar_get_b32(i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
