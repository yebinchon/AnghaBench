; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_bitops_unaligned.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_bitops_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bitops_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bitops_unaligned() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca [4 x i32], align 16
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %4 = call i32 @write32_be(i32 287454020, i32* %3)
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %6 = bitcast i32* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %9 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %7, i32* %8, i32 4, i32 0)
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %11 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %10)
  %12 = icmp eq i32 %11, 287454020
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %13)
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %16 = bitcast i32* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %19 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %17, i32* %18, i32 3, i32 1)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %21 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %20)
  %22 = icmp eq i32 %21, 574907904
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %26 = bitcast i32* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %29 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %27, i32* %28, i32 3, i32 2)
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %31 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %30)
  %32 = icmp eq i32 %31, 1149816064
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %33)
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %36 = bitcast i32* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 16, i1 false)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %39 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %37, i32* %38, i32 3, i32 3)
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %41 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %40)
  %42 = icmp eq i32 %41, -1995335168
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %43)
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %46 = bitcast i32* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %46, i8 0, i64 16, i1 false)
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %49 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %47, i32* %48, i32 3, i32 4)
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %51 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %50)
  %52 = icmp eq i32 %51, 304296960
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %53)
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %56 = bitcast i32* %55 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %56, i8 0, i64 16, i1 false)
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %59 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %57, i32* %58, i32 3, i32 5)
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %61 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %60)
  %62 = icmp eq i32 %61, 608593920
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %63)
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %66 = bitcast i32* %65 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %66, i8 0, i64 16, i1 false)
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %69 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %67, i32* %68, i32 3, i32 6)
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %71 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %70)
  %72 = icmp eq i32 %71, 1217188096
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %73)
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %76 = bitcast i32* %75 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %76, i8 0, i64 16, i1 false)
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %79 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %77, i32* %78, i32 3, i32 7)
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %81 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %80)
  %82 = icmp eq i32 %81, -1860591104
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %83)
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %86 = bitcast i32* %85 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %86, i8 0, i64 16, i1 false)
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %89 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %87, i32* %88, i32 3, i32 8)
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %91 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %90)
  %92 = icmp eq i32 %91, 573785088
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %93)
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %96 = bitcast i32* %95 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %96, i8 0, i64 16, i1 false)
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %99 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %97, i32* %98, i32 2, i32 9)
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %101 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %100)
  %102 = icmp eq i32 %101, 1147535360
  %103 = zext i1 %102 to i32
  %104 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %103)
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %106 = bitcast i32* %105 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %106, i8 0, i64 16, i1 false)
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %109 = call i32 (i32*, i32*, i32, i32, ...) bitcast (i32 (...)* @copy_bytes_unaligned to i32 (i32*, i32*, i32, i32, ...)*)(i32* %107, i32* %108, i32 2, i32 16)
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %111 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %110)
  %112 = icmp eq i32 %111, 860094464
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %113)
  ret void
}

declare dso_local i32 @write32_be(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @copy_bytes_unaligned(...) #1

declare dso_local i32 @TEST_CHECK(...) #1

declare dso_local i32 @read32_be(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
