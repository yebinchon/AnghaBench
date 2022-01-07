; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha2.c_test_hmac_sha512.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha2.c_test_hmac_sha512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cf_sha512 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"\87\AA|\DE\A5\EFa\9DO\F0\B4$\1A\1Dl\B0#y\F4\E2\CEN\C2xz\D0\B3\05E\E1|\DE\DA\A83\B7\D6\B8\A7\02\03\8B'N\AE\A3\F4\E4\BE\9D\91N\EBa\F1p.il :\12hT\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"\16Kz{\FC\F8\19\E2\E3\95\FB\E7;V\E0\A3\87\BDd\22.\83\1F\D6\10'\0C\D7\EA%\05T\97X\BFu\C0Z\99Jm\03Oe\F8\F0\E6\FD\CA\EA\B1\A3MJkKcn\07\0A8\BC\E77\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"\FAs\B0\08\9DV\A2\84\EF\B0\F0ul\89\0B\E9\B1\B5\DB\DD\8E\E8\1A6U\F8>3\B2'\9D9\BF>\84\82y\A7\22\C8\06\B4\85\A4~g\C8\07\B9F\A37\BE\E8\94&t'\88Y\E12\92\FB\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"\B0\BAFV7E\8Ci\90\E5\A8\C5\F6\1DJ\F7\E5v\D9\7F\F9K\87-\E7o\80P6\1E\E3\DB\A9\1C\A5\C1\1A\A2^\B4\D6y'\\\C5x\80c\A5\F1\97A\12\0CO-\E2\AD\EB\EB\10\A2\98\DD\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"\80\B2Bc\C7\C1\A3\EB\B7\14\93\C1\DD{\E8\B4\9BF\D1\F4\1BJ\EE\C1\12\1B\017\83\F8\F3RkV\D07\E0_%\98\BD\0F\D2!]j\1ER\95\E6Os\F6?\0A\EC\8B\91Z\98]xe\98\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"\E3{jw]\C8}\BA\A4\DF\A9\F9n^?\FD\DE\BDq\F8\86r\89\86]\F5\A3- \CD\C9D\B6\02,\AC<I\82\B1\0D^\EBU\C3\E4\DE\15\13Fv\FBm\E0D`e\C9t@\FA\8CjX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hmac_sha512 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hmac_sha512() #0 {
  %1 = call i32 @hmac_test(i32* @cf_sha512, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %2 = call i32 @hmac_test_sha2(i32* @cf_sha512, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @hmac_test(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @hmac_test_sha2(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
