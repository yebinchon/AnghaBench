; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_add_neg_y_diff_x.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_add_neg_y_diff_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_add_neg_y_diff_x() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @SECP256K1_GEJ_CONST(i32 -1926967915, i32 171268849, i32 1012151557, i32 1143180592, i32 105109407, i32 94737940, i32 797884464, i32 -712411189, i32 1979258, i32 940129741, i32 1812936813, i32 185766824, i32 1299368057, i32 -681043676, i32 1155977971, i32 -1852829315)
  store i32 %7, i32* %1, align 4
  %8 = call i32 @SECP256K1_GEJ_CONST(i32 -944291322, i32 527994073, i32 -1412394115, i32 373951878, i32 -1778974859, i32 -241546007, i32 -804012677, i32 -1080896857, i32 -1979259, i32 -940129742, i32 -1812936814, i32 -185766825, i32 -1299368058, i32 681043675, i32 -1155977973, i32 1852828338)
  store i32 %8, i32* %2, align 4
  %9 = call i32 @SECP256K1_GEJ_CONST(i32 1729782720, i32 1056812364, i32 949647256, i32 607477799, i32 -1277784048, i32 663102915, i32 1552339856, i32 407539578, i32 1600391618, i32 752885547, i32 1361040245, i32 621223176, i32 -630908927, i32 1894341807, i32 -1894938308, i32 -1093076034)
  store i32 %9, i32* %3, align 4
  %10 = call i32 @secp256k1_ge_set_gej(i32* %4, i32* %2)
  %11 = call i32 @secp256k1_gej_add_var(i32* %5, i32* %1, i32* %2, i32* null)
  %12 = call i32 @secp256k1_ge_set_gej(i32* %6, i32* %5)
  %13 = call i32 @ge_equals_gej(i32* %6, i32* %3)
  %14 = call i32 @secp256k1_gej_add_ge(i32* %5, i32* %1, i32* %4)
  %15 = call i32 @secp256k1_ge_set_gej(i32* %6, i32* %5)
  %16 = call i32 @ge_equals_gej(i32* %6, i32* %3)
  %17 = call i32 @secp256k1_gej_add_ge_var(i32* %5, i32* %1, i32* %4, i32* null)
  %18 = call i32 @secp256k1_ge_set_gej(i32* %6, i32* %5)
  %19 = call i32 @ge_equals_gej(i32* %6, i32* %3)
  ret void
}

declare dso_local i32 @SECP256K1_GEJ_CONST(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @secp256k1_ge_set_gej(i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_var(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ge_equals_gej(i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_ge(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_ge_var(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
