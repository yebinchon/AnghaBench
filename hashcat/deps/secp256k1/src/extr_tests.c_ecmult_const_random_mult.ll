; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_ecmult_const_random_mult.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_ecmult_const_random_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecmult_const_random_mult() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @SECP256K1_GE_CONST(i32 1838703940, i32 1476350648, i32 -820281050, i32 1535126107, i32 -1451257245, i32 -1310162876, i32 -1825238235, i32 -1849932534, i32 1398561271, i32 845045035, i32 -1013842968, i32 1007843452, i32 863914648, i32 -399863791, i32 19118647, i32 -579429251)
  store i32 %5, i32* %1, align 4
  %6 = call i32 @SECP256K1_SCALAR_CONST(i32 1688031095, i32 -1004261897, i32 2132834761, i32 340984615, i32 -1558476950, i32 -757543382, i32 574019014, i32 -676199781)
  store i32 %6, i32* %2, align 4
  %7 = call i32 @SECP256K1_GE_CONST(i32 595015300, i32 1293983175, i32 160069743, i32 550531021, i32 118110399, i32 -1055209903, i32 50348825, i32 506103686, i32 -309576818, i32 -1066543749, i32 -798054802, i32 1162423055, i32 -1202827749, i32 -76029409, i32 -1766150614, i32 1675544918)
  store i32 %7, i32* %3, align 4
  %8 = call i32 @secp256k1_ecmult_const(i32* %4, i32* %1, i32* %2, i32 256)
  %9 = call i32 @secp256k1_ge_is_valid_var(i32* %1)
  %10 = call i32 @CHECK(i32 %9)
  %11 = call i32 @ge_equals_gej(i32* %3, i32* %4)
  ret void
}

declare dso_local i32 @SECP256K1_GE_CONST(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SECP256K1_SCALAR_CONST(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @secp256k1_ecmult_const(i32*, i32*, i32*, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ge_is_valid_var(i32*) #1

declare dso_local i32 @ge_equals_gej(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
