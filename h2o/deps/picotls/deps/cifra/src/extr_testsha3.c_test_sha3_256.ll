; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha3.c_test_sha3_256.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha3.c_test_sha3_256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cf_sha3_256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\A7\FF\C6\F8\BF\1E\D7fQ\C1GV\A0a\D6b\F5\80\FFM\E4;I\FA\82\D8\0AK\80\F8CJ\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c":\98]\A7O\E2%\B2\04\\\17-k\D3\90\BD\85_\08n>\9DR[F\BF\E2E\11C\152\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"A\C0\DB\A2\A9\D6$\08I\10\03v\A8#^,\82\E1\B9\99\8A\99\9E!\DB2\DD\97Im3v\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\91o`a\FE\87\97A\CAdi\B49q\DF\DB(\B1\A3-\C3l\B3%N\81+\E2z\AD\1D\18\00", align 1
@cf_sha3_256_digest_final = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"\F7\ED\F7+4\8C\B4\AB^\E7Ol\AE\AF\11\AD\E2/\04e\84\8E\\\AA\148\7F\D4\EB\DB\9Dp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_sha3_256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sha3_256() #0 {
  %1 = alloca i32*, align 8
  store i32* @cf_sha3_256, i32** %1, align 8
  %2 = load i32*, i32** %1, align 8
  %3 = call i32 @vector(i32* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 32)
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @vector(i32* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 32)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @vector(i32* %6, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 32)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @vector(i32* %8, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 32)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @cf_sha3_256_digest_final, align 4
  %12 = call i32 @vector_abc_final(i32* %10, i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 32)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @vector_length(i32* %13, i32 1024, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 32)
  ret void
}

declare dso_local i32 @vector(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @vector_abc_final(i32*, i32, i8*, i32) #1

declare dso_local i32 @vector_length(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
