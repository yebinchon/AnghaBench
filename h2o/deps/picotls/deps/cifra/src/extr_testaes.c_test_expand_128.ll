; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_expand_128.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_expand_128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_expand_128.key = private unnamed_addr constant [16 x i32] [i32 43, i32 126, i32 21, i32 22, i32 40, i32 174, i32 210, i32 166, i32 171, i32 247, i32 21, i32 136, i32 9, i32 207, i32 79, i32 60], align 16
@__const.test_expand_128.answer = private unnamed_addr constant [44 x i32] [i32 729683222, i32 682545830, i32 -1409870456, i32 164581180, i32 -1594163689, i32 -2007749455, i32 597899577, i32 711751173, i32 -222128654, i32 2056698179, i32 1496678522, i32 1935275647, i32 1031817085, i32 1192689214, i32 505642564, i32 1836746811, i32 -280713919, i32 -1470997633, i32 -1234098885, i32 -619991808, i32 -724449544, i32 2089000327, i32 -890062660, i32 301536700, i32 1837671290, i32 285949693, i32 -604404159, i32 -905931779, i32 1314191118, i32 1600113139, i32 -2069475406, i32 1319558223, i32 -355306719, i32 -1249002798, i32 824964448, i32 2139957551, i32 -1401461005, i32 435870753, i32 684796225, i32 1465647214, i32 -803931736, i32 -907139703, i32 -515961656, i32 -1235022682], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_expand_128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_expand_128() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca [44 x i32], align 16
  %3 = bitcast [16 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([16 x i32]* @__const.test_expand_128.key to i8*), i64 64, i1 false)
  %4 = bitcast [44 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([44 x i32]* @__const.test_expand_128.answer to i8*), i64 176, i1 false)
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %6 = getelementptr inbounds [44 x i32], [44 x i32]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [44 x i32], [44 x i32]* %2, i64 0, i64 0
  %8 = call i32 @ARRAYCOUNT(i32* %7)
  %9 = call i32 @test_expand(i32* %5, i32 64, i32* %6, i32 %8)
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
