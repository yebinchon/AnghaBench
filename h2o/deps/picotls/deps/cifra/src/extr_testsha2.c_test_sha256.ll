; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha2.c_test_sha256.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha2.c_test_sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cf_sha256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\E3\B0\C4B\98\FC\1C\14\9A\FB\F4\C8\99o\B9$'\AEA\E4d\9B\93L\A4\95\99\1BxR\B8U\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\BAx\16\BF\8F\01\CF\EAAA@\DE]\AE\22#\B0\03a\A3\96\17z\9C\B4\10\FFa\F2\00\15\AD\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"$\8Dja\D2\068\B8\E5\C0&\93\0C>`9\A3<\E4Yd\FF!g\F6\EC\ED\D4\19\DB\06\C1\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\CF[\16\A7x\AF\83\80\03l\E5\9E{\04\927\0B$\9B\11\E8\F0zQ\AF\ACE\03z\FE\E9\D1\00", align 1
@cf_sha256_digest_final = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"U{\FD\D5\EF\DA\FDc\06^\B7\98\87\DE\86\DBT\C3\FE\DF{\CC\CB\97\08\FA\87\F0\11\87a\DC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_sha256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sha256() #0 {
  %1 = alloca i32*, align 8
  store i32* @cf_sha256, i32** %1, align 8
  %2 = load i32*, i32** %1, align 8
  %3 = call i32 @vector(i32* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 32)
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @vector(i32* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 32)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @vector(i32* %6, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 32)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @vector(i32* %8, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 32)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @cf_sha256_digest_final, align 4
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
