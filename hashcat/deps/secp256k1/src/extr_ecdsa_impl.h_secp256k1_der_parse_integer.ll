; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecdsa_impl.h_secp256k1_der_parse_integer.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecdsa_impl.h_secp256k1_der_parse_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*)* @secp256k1_der_parse_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_der_parse_integer(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = bitcast [32 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 32, i1 false)
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %133

23:                                               ; preds = %16
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @secp256k1_der_read_len(i64* %10, i8** %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %133

32:                                               ; preds = %23
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ugt i8* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %32
  store i32 0, i32* %4, align 4
  br label %133

43:                                               ; preds = %35
  %44 = load i8**, i8*** %6, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i64, i64* %10, align 8
  %51 = icmp ugt i64 %50, 1
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i8**, i8*** %6, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %133

61:                                               ; preds = %52, %49, %43
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 255
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i64, i64* %10, align 8
  %69 = icmp ugt i64 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 128
  %77 = icmp eq i32 %76, 128
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %133

79:                                               ; preds = %70, %67, %61
  %80 = load i8**, i8*** %6, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 128
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 1, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %79
  %88 = load i64, i64* %10, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i8**, i8*** %6, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, -1
  store i64 %98, i64* %10, align 8
  %99 = load i8**, i8*** %6, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %99, align 8
  br label %102

102:                                              ; preds = %96, %90, %87
  %103 = load i64, i64* %10, align 8
  %104 = icmp ugt i64 %103, 32
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, i32* %8, align 4
  br label %106

106:                                              ; preds = %105, %102
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %111 = getelementptr inbounds i8, i8* %110, i64 32
  %112 = load i64, i64* %10, align 8
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8**, i8*** %6, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @memcpy(i8* %114, i8* %116, i64 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %121 = call i32 @secp256k1_scalar_set_b32(i32* %119, i8* %120, i32* %8)
  br label %122

122:                                              ; preds = %109, %106
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @secp256k1_scalar_set_int(i32* %126, i32 0)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i64, i64* %10, align 8
  %130 = load i8**, i8*** %6, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 %129
  store i8* %132, i8** %130, align 8
  store i32 1, i32* %4, align 4
  br label %133

133:                                              ; preds = %128, %78, %60, %42, %31, %22
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @secp256k1_der_read_len(i64*, i8**, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #2

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
