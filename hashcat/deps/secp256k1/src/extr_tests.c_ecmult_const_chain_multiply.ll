; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_ecmult_const_chain_multiply.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_ecmult_const_chain_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secp256k1_ge_const_g = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecmult_const_chain_multiply() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @SECP256K1_SCALAR_CONST(i32 1231607076, i32 717200250, i32 1181400015, i32 884022125, i32 -846998777, i32 -2105807518, i32 100323534, i32 419096123)
  store i32 %7, i32* %1, align 4
  %8 = call i32 @SECP256K1_GEJ_CONST(i32 1419034973, i32 839489286, i32 -1036427372, i32 881280509, i32 1971118862, i32 1317835003, i32 -1564814972, i32 -125581665, i32 1561943328, i32 -510541953, i32 467920223, i32 1453851030, i32 1618062593, i32 -247058586, i32 -912786796, i32 -612006859)
  store i32 %8, i32* %2, align 4
  %9 = call i32 @secp256k1_gej_set_ge(i32* %3, i32* @secp256k1_ge_const_g)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %16, %0
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = call i32 @secp256k1_ge_set_gej(i32* %6, i32* %3)
  %15 = call i32 @secp256k1_ecmult_const(i32* %3, i32* %6, i32* %1, i32 256)
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %10

19:                                               ; preds = %10
  %20 = call i32 @secp256k1_ge_set_gej(i32* %4, i32* %3)
  %21 = call i32 @ge_equals_gej(i32* %4, i32* %2)
  ret void
}

declare dso_local i32 @SECP256K1_SCALAR_CONST(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SECP256K1_GEJ_CONST(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @secp256k1_gej_set_ge(i32*, i32*) #1

declare dso_local i32 @secp256k1_ge_set_gej(i32*, i32*) #1

declare dso_local i32 @secp256k1_ecmult_const(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ge_equals_gej(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
