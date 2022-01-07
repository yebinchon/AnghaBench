; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecdsa_impl.h_secp256k1_der_read_len.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecdsa_impl.h_secp256k1_der_read_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8**, i8*)* @secp256k1_der_read_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_der_read_len(i64* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i64* %0, i64** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = icmp ne i64* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @VERIFY_CHECK(i32 %12)
  %14 = load i64*, i64** %5, align 8
  store i64 0, i64* %14, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp uge i8* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

20:                                               ; preds = %3
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %21, align 8
  %24 = load i8, i8* %22, align 1
  store i8 %24, i8* %9, align 1
  %25 = load i8, i8* %9, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %104

29:                                               ; preds = %20
  %30 = load i8, i8* %9, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i8, i8* %9, align 1
  %36 = zext i8 %35 to i64
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  store i32 1, i32* %4, align 4
  br label %104

38:                                               ; preds = %29
  %39 = load i8, i8* %9, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %104

43:                                               ; preds = %38
  %44 = load i8, i8* %9, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 127
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %49 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = icmp ugt i64 %48, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %104

57:                                               ; preds = %43
  %58 = load i8**, i8*** %6, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %104

64:                                               ; preds = %57
  %65 = load i64, i64* %8, align 8
  %66 = icmp ugt i64 %65, 8
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %104

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %72, %68
  %70 = load i64, i64* %8, align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i64*, i64** %5, align 8
  %74 = load i64, i64* %73, align 8
  %75 = shl i64 %74, 8
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i64
  %80 = or i64 %75, %79
  %81 = load i64*, i64** %5, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i8**, i8*** %6, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %82, align 8
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %8, align 8
  br label %69

87:                                               ; preds = %69
  %88 = load i64*, i64** %5, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i8**, i8*** %6, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %90 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = icmp ugt i64 %89, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %104

98:                                               ; preds = %87
  %99 = load i64*, i64** %5, align 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %100, 128
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %104

103:                                              ; preds = %98
  store i32 1, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %102, %97, %67, %63, %56, %42, %34, %28, %19
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
