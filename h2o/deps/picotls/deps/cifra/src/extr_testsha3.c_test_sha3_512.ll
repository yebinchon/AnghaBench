; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha3.c_test_sha3_512.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha3.c_test_sha3_512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cf_sha3_512 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"\A6\9Fs\CC\A2:\9A\C5\C8\B5g\DC\18Zun\97\C9\82\16O\E2XY\E0\D1\DC\C1G\\\80\A6\15\B2\12:\F1\F5\F9L\11\E3\E9@,:\C5X\F5\00\19\9D\95\B6\D3\E3\01u\85\86(\1D\CD&\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"\B7Q\85\0B\1AW\16\8AV\93\CD\92Kk\09n\08\F6!\82tD\F7\0D\88O]\02@\D2q.\10\E1\16\E9\19*\F3\C9\1A~\C5vG\E3\93@W4\0BL\F4\08\D5\A5e\92\F8'N\ECS\F0\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"\04\A3q\E8N\CF\B5\B8\B7|\B4\86\10\FC\A8\18-\D4W\CEo2j\0F\D3\D7\EC/\1E\91cm\EEi\1F\BE\0C\98S\02\BA\1B\0D\8D\C7\8C\08cF\B53\B4\9C\03\0D\99\A2}\AF\119\D6\E7^\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\AF\EB\B2\EFT.ey\C5\0C\AD\06\D2\E5x\F9\F8\DDh\81\D7\DC\82M&6\0F\EE\BF\18\A4\FAs\E3&\11\22\94\8E\FC\FDI.t\E8.!\89\ED\0F\B4@\D1\87\F3\82'\0C\B4U\F2\1D\D1\85\00", align 1
@cf_sha3_512_digest_final = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [65 x i8] c":\98\11\17\BC/\A3;\00Qq\F8\80\863\7FOl\E9\D1\\\B78\C0\9B\E2\8A\B6\D58\BA\BF{\C5N\BF=\DBSJ\9C<\10\85\E7\18=F\A5\8C\BC\B0\15\B0\DFPz\AD\0E\DF\F3T\8E\FD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_sha3_512 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sha3_512() #0 {
  %1 = alloca i32*, align 8
  store i32* @cf_sha3_512, i32** %1, align 8
  %2 = load i32*, i32** %1, align 8
  %3 = call i32 @vector(i32* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 64)
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @vector(i32* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 64)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @vector(i32* %6, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 64)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @vector(i32* %8, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 112, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 64)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @cf_sha3_512_digest_final, align 4
  %12 = call i32 @vector_abc_final(i32* %10, i32 %11, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 64)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @vector_length(i32* %13, i32 1024, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i32 64)
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
