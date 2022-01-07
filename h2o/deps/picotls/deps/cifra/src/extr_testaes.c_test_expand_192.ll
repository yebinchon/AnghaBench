; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_expand_192.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_expand_192.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_expand_192.key = private unnamed_addr constant [24 x i32] [i32 142, i32 115, i32 176, i32 247, i32 218, i32 14, i32 100, i32 82, i32 200, i32 16, i32 243, i32 43, i32 128, i32 144, i32 121, i32 229, i32 98, i32 248, i32 234, i32 210, i32 82, i32 44, i32 107, i32 123], align 16
@__const.test_expand_192.answer = private unnamed_addr constant [52 x i32] [i32 -1905020681, i32 -636591022, i32 -938413269, i32 -2138015259, i32 1660480210, i32 1378642811, i32 -32730633, i32 604173733, i32 -334362994, i32 1820491627, i32 242914745, i32 1549205186, i32 1303884989, i32 1773486360, i32 -2052634730, i32 -383436547, i32 -413160124, i32 -1157016698, i32 1213919319, i32 569356623, i32 -1538722087, i32 1299041828, i32 -1439538336, i32 289091814, i32 -1570865451, i32 -2085498982, i32 670644547, i32 1788147559, i32 -1062824953, i32 -778197791, i32 -334002453, i32 1873168753, i32 1214214194, i32 583763797, i32 -496168110, i32 871413683, i32 1086253864, i32 790143577, i32 1732760171, i32 1166824766, i32 -1478408596, i32 -1810763297, i32 -2111867638, i32 -1391995053, i32 -901774024, i32 -1882435578, i32 674043498, i32 -1136859211, i32 -376725393, i32 1150056252, i32 -1899204092, i32 16785922], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_expand_192 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_expand_192() #0 {
  %1 = alloca [24 x i32], align 16
  %2 = alloca [52 x i32], align 16
  %3 = bitcast [24 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([24 x i32]* @__const.test_expand_192.key to i8*), i64 96, i1 false)
  %4 = bitcast [52 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([52 x i32]* @__const.test_expand_192.answer to i8*), i64 208, i1 false)
  %5 = getelementptr inbounds [24 x i32], [24 x i32]* %1, i64 0, i64 0
  %6 = getelementptr inbounds [52 x i32], [52 x i32]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [52 x i32], [52 x i32]* %2, i64 0, i64 0
  %8 = call i32 @ARRAYCOUNT(i32* %7)
  %9 = call i32 @test_expand(i32* %5, i32 96, i32* %6, i32 %8)
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
