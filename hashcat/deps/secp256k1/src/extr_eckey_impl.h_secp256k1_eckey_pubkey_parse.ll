; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_eckey_impl.h_secp256k1_eckey_pubkey_parse.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_eckey_impl.h_secp256k1_eckey_pubkey_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECP256K1_TAG_PUBKEY_EVEN = common dso_local global i8 0, align 1
@SECP256K1_TAG_PUBKEY_ODD = common dso_local global i8 0, align 1
@SECP256K1_TAG_PUBKEY_UNCOMPRESSED = common dso_local global i8 0, align 1
@SECP256K1_TAG_PUBKEY_HYBRID_EVEN = common dso_local global i8 0, align 1
@SECP256K1_TAG_PUBKEY_HYBRID_ODD = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @secp256k1_eckey_pubkey_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_eckey_pubkey_parse(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 33
  br i1 %12, label %13, label %49

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @SECP256K1_TAG_PUBKEY_EVEN, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @SECP256K1_TAG_PUBKEY_ODD, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %21, %13
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i64 @secp256k1_fe_set_b32(i32* %8, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @SECP256K1_TAG_PUBKEY_ODD, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @secp256k1_ge_set_xo_var(i32* %35, i32* %8, i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %34, %29
  %47 = phi i1 [ false, %29 ], [ %45, %34 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %121

49:                                               ; preds = %21, %3
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, 65
  br i1 %51, label %52, label %120

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @SECP256K1_TAG_PUBKEY_UNCOMPRESSED, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %76, label %60

60:                                               ; preds = %52
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @SECP256K1_TAG_PUBKEY_HYBRID_EVEN, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @SECP256K1_TAG_PUBKEY_HYBRID_ODD, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %120

76:                                               ; preds = %68, %60, %52
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = call i64 @secp256k1_fe_set_b32(i32* %9, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 33
  %84 = call i64 @secp256k1_fe_set_b32(i32* %10, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81, %76
  store i32 0, i32* %4, align 4
  br label %121

87:                                               ; preds = %81
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @secp256k1_ge_set_xy(i32* %88, i32* %9, i32* %10)
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @SECP256K1_TAG_PUBKEY_HYBRID_EVEN, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %87
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @SECP256K1_TAG_PUBKEY_HYBRID_ODD, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %97, %87
  %106 = call i32 @secp256k1_fe_is_odd(i32* %10)
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @SECP256K1_TAG_PUBKEY_HYBRID_ODD, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %110, %112
  %114 = zext i1 %113 to i32
  %115 = icmp ne i32 %106, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %121

117:                                              ; preds = %105, %97
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @secp256k1_ge_is_valid_var(i32* %118)
  store i32 %119, i32* %4, align 4
  br label %121

120:                                              ; preds = %68, %49
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %117, %116, %86, %46
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @secp256k1_fe_set_b32(i32*, i8*) #1

declare dso_local i64 @secp256k1_ge_set_xo_var(i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_ge_set_xy(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_fe_is_odd(i32*) #1

declare dso_local i32 @secp256k1_ge_is_valid_var(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
