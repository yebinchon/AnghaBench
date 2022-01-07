; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_rand_bits.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_rand_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_rand_bits.rounds = internal constant [7 x i32] [i32 1, i32 30, i32 73, i32 156, i32 322, i32 653, i32 1316], align 16
@test_rand_bits.mults = internal constant [6 x i32] [i32 1, i32 3, i32 21, i32 289, i32 39321, i32 -2143281135], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rand_bits(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x [27 x i32]], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 6, %15 ], [ %17, %16 ]
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = bitcast [6 x [27 x i32]]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 648, i1 false)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %87, %18
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i32], [7 x i32]* @test_rand_bits.rounds, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @secp256k1_rand32()
  br label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @secp256k1_rand_bits(i32 %37)
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @CHECK(i32 %45)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %83, %39
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %49, 6
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* @test_rand_bits.mults, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %52, %56
  store i32 %57, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %79, %51
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 1, %66
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %65, %68
  %70 = shl i32 1, %69
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [6 x [27 x i32]], [6 x [27 x i32]]* %7, i64 0, i64 %72
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [27 x i32], [27 x i32]* %73, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %70
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %58

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %47

86:                                               ; preds = %47
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %24

90:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %120, %90
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = icmp ult i64 %93, 6
  br i1 %94, label %95, label %123

95:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %116, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ule i32 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [6 x [27 x i32]], [6 x [27 x i32]]* %7, i64 0, i64 %102
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [27 x i32], [27 x i32]* %103, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %5, align 4
  %110 = shl i32 1, %109
  %111 = sub nsw i32 64, %110
  %112 = shl i32 %108, %111
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @CHECK(i32 %114)
  br label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %96

119:                                              ; preds = %96
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %91

123:                                              ; preds = %91
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @secp256k1_rand32(...) #2

declare dso_local i32 @secp256k1_rand_bits(i32) #2

declare dso_local i32 @CHECK(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
