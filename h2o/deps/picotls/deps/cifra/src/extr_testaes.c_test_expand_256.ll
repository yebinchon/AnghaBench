; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_expand_256.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_expand_256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_expand_256.key = private unnamed_addr constant [32 x i32] [i32 96, i32 61, i32 235, i32 16, i32 21, i32 202, i32 113, i32 190, i32 43, i32 115, i32 174, i32 240, i32 133, i32 125, i32 119, i32 129, i32 31, i32 53, i32 44, i32 7, i32 59, i32 97, i32 8, i32 215, i32 45, i32 152, i32 16, i32 163, i32 9, i32 20, i32 223, i32 244], align 16
@__const.test_expand_256.answer = private unnamed_addr constant [60 x i32] [i32 1614670608, i32 365588926, i32 729001712, i32 -2055374975, i32 523578375, i32 996214999, i32 764940451, i32 152362996, i32 -1683794927, i32 -1905711697, i32 -1524987041, i32 543685854, i32 -1464820710, i32 -1814981427, i32 -1102478226, i32 -1218618470, i32 -711267144, i32 1542703383, i32 -18267576, i32 -561070442, i32 -1247202678, i32 645441095, i32 -1741610455, i32 795638195, i32 -2127789651, i32 -622901062, i32 607521522, i32 -88558492, i32 -1731870775, i32 -1094903410, i32 646724519, i32 165691924, i32 1744862124, i32 -1293995242, i32 -1763100188, i32 1817283968, i32 -938155516, i32 1990851466, i32 1344651309, i32 1506116153, i32 -569153177, i32 1825331825, i32 -98212971, i32 -1770721771, i32 1485228637, i32 774844887, i32 2114646522, i32 667907011, i32 1956399019, i32 407903706, i32 -495616433, i32 1946259546, i32 -889541917, i32 -455763148, i32 -1696634162, i32 -1123018483, i32 -28798767, i32 -434598645, i32 74314564, i32 1886151454], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_expand_256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_expand_256() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [60 x i32], align 16
  %3 = bitcast [32 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([32 x i32]* @__const.test_expand_256.key to i8*), i64 128, i1 false)
  %4 = bitcast [60 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([60 x i32]* @__const.test_expand_256.answer to i8*), i64 240, i1 false)
  %5 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %6 = getelementptr inbounds [60 x i32], [60 x i32]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [60 x i32], [60 x i32]* %2, i64 0, i64 0
  %8 = call i32 @ARRAYCOUNT(i32* %7)
  %9 = call i32 @test_expand(i32* %5, i32 128, i32* %6, i32 %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_expand(i32*, i32, i32*, i32) #2

declare dso_local i32 @ARRAYCOUNT(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
