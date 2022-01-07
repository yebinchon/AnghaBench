; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_picotls.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_picotls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"is_ipaddr\00", align 1
@test_is_ipaddr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@test_sha256 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@test_sha384 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"hmac-sha256\00", align 1
@test_hmac_sha256 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"hkdf\00", align 1
@test_hkdf = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"aes128gcm\00", align 1
@test_aes128gcm = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"aes256gcm\00", align 1
@test_aes256gcm = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"chacha20poly1305\00", align 1
@test_chacha20poly1305 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"aes128ecb\00", align 1
@test_aes128ecb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"aes256ecb\00", align 1
@test_aes256ecb = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"aes128ctr\00", align 1
@test_aes128ctr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"chacha20\00", align 1
@test_chacha20 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"ffx\00", align 1
@test_ffx = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"base64-decode\00", align 1
@test_base64_decode = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"fragmented-message\00", align 1
@test_fragmented_message = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"handshake\00", align 1
@test_all_handshakes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_picotls() #0 {
  %1 = load i32, i32* @test_is_ipaddr, align 4
  %2 = call i32 @subtest(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @test_sha256, align 4
  %4 = call i32 @subtest(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @test_sha384, align 4
  %6 = call i32 @subtest(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @test_hmac_sha256, align 4
  %8 = call i32 @subtest(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @test_hkdf, align 4
  %10 = call i32 @subtest(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @test_aes128gcm, align 4
  %12 = call i32 @subtest(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @test_aes256gcm, align 4
  %14 = call i32 @subtest(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @test_chacha20poly1305, align 4
  %16 = call i32 @subtest(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @test_aes128ecb, align 4
  %18 = call i32 @subtest(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @test_aes256ecb, align 4
  %20 = call i32 @subtest(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @test_aes128ctr, align 4
  %22 = call i32 @subtest(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @test_chacha20, align 4
  %24 = call i32 @subtest(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @test_ffx, align 4
  %26 = call i32 @subtest(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @test_base64_decode, align 4
  %28 = call i32 @subtest(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @test_fragmented_message, align 4
  %30 = call i32 @subtest(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @test_all_handshakes, align 4
  %32 = call i32 @subtest(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %31)
  ret void
}

declare dso_local i32 @subtest(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
