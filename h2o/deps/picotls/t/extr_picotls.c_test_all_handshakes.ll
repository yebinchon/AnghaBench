; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_all_handshakes.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_all_handshakes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@sign_certificate = common dso_local global i32 0, align 4
@ctx_peer = common dso_local global %struct.TYPE_7__* null, align 8
@sc_orig = common dso_local global %struct.TYPE_6__* null, align 8
@second_sign_certificate = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_7__* null, align 8
@second_sc_orig = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"full-handshake\00", align 1
@test_full_handshake = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"full-handshake-with-client-authentication\00", align 1
@test_full_handshake_with_client_authentication = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"hrr-handshake\00", align 1
@test_hrr_handshake = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"hrr-stateless-handshake\00", align 1
@test_hrr_stateless_handshake = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"resumption\00", align 1
@test_resumption = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"resumption-different-preferred-key-share\00", align 1
@test_resumption_different_preferred_key_share = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"resumption-with-client-authentication\00", align 1
@test_resumption_with_client_authentication = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"enforce-retry-stateful\00", align 1
@test_enforce_retry_stateful = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"enforce-retry-stateless\00", align 1
@test_enforce_retry_stateless = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"stateless-hrr-aad-change\00", align 1
@test_stateless_hrr_aad_change = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"key-update\00", align 1
@test_key_update = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"handshake-api\00", align 1
@test_handshake_api = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_all_handshakes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_all_handshakes() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %4 = load i32, i32* @sign_certificate, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx_peer, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** @sc_orig, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx_peer, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %11 = load i32, i32* @second_sign_certificate, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx_peer, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %14 = icmp ne %struct.TYPE_7__* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** @second_sc_orig, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %20, align 8
  br label %21

21:                                               ; preds = %15, %0
  %22 = load i32, i32* @test_full_handshake, align 4
  %23 = call i32 @subtest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @test_full_handshake_with_client_authentication, align 4
  %25 = call i32 @subtest(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @test_hrr_handshake, align 4
  %27 = call i32 @subtest(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @test_hrr_stateless_handshake, align 4
  %29 = call i32 @subtest(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @test_resumption, align 4
  %31 = call i32 @subtest(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @test_resumption_different_preferred_key_share, align 4
  %33 = call i32 @subtest(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @test_resumption_with_client_authentication, align 4
  %35 = call i32 @subtest(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @test_enforce_retry_stateful, align 4
  %37 = call i32 @subtest(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @test_enforce_retry_stateless, align 4
  %39 = call i32 @subtest(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @test_stateless_hrr_aad_change, align 4
  %41 = call i32 @subtest(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @test_key_update, align 4
  %43 = call i32 @subtest(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @test_handshake_api, align 4
  %45 = call i32 @subtest(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sc_orig, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx_peer, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx_peer, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %51 = icmp ne %struct.TYPE_7__* %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %21
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @second_sc_orig, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %55, align 8
  br label %56

56:                                               ; preds = %52, %21
  ret void
}

declare dso_local i32 @subtest(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
