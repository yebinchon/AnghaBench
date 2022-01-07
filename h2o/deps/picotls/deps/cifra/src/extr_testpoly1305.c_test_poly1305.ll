; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testpoly1305.c_test_poly1305.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testpoly1305.c_test_poly1305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"eea6a7251c1e72916d11c2cb214d3c25\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"2539121d8e234e652d651fa4c8cff880\00", align 1
@.str.2 = private unnamed_addr constant [263 x i8] c"8e993b9f48681273c29650ba32fc76ce48332ea7164d96a4476fb8c531a1186ac0dfc17c98dce87b4da7f011ec48c97271d2c20f9b928fe2270d6fb863d51738b48eeee314a7cc8ab932164548e526ae90224368517acfeabd6bb3732bc0e9da99832b61ca01b6de56244a9e88d5f9b37973f622a43d14a6599b1f654cb45a74e355a5\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"f3ffc7703f9400e52a7dfb4b3d3305d9\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"851fc40c3467ac0be05cc20404f3f700\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"580b3b0f9447bb1e69d095b5928b6dbc\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"f3f6\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"f4c633c3044fc145f84f335cb81953de\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"a0f3080000f46400d0c7e9076c834403\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"dd3fab2251f11ac759f0887129cc2ee7\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"48443d0bb0d21109c89a100b5ce2c208\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"83149c69b561dd88298a1798b10716ef\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"663cea190ffb83d89593f3f476b6bc24d7e679107ea26adb8caf6652d0656136\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"0ee1c16bb73f0f4fd19881753c01cdbe\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"12976a08c4426d0ce8a82407c4f48207\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"80f8c20aa71202d1e29179cbcb555a57\00", align 1
@.str.17 = private unnamed_addr constant [127 x i8] c"ab0812724a7f1e342742cbed374d94d136c6b8795d45b3819830f2c04491faf0990c62e48b8018b2c3e4a0fa3134cb67fa83e158c994d961c4cb21095c1bf9\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"5154ad0d2cb26e01274fc51148491f1b\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"02000000000000000000000000000000\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"00000000000000000000000000000000\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"03000000000000000000000000000000\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"01000000000000000000000000000000\00", align 1
@.str.24 = private unnamed_addr constant [97 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF11000000000000000000000000000000\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"05000000000000000000000000000000\00", align 1
@.str.26 = private unnamed_addr constant [97 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE01010101010101010101010101010101\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"01000000000000000400000000000000\00", align 1
@.str.30 = private unnamed_addr constant [129 x i8] c"E33594D7505E43B900000000000000003394D7505E4379CD01000000000000000000000000000000000000000000000001000000000000000000000000000000\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"14000000000000005500000000000000\00", align 1
@.str.32 = private unnamed_addr constant [97 x i8] c"E33594D7505E43B900000000000000003394D7505E4379CD010000000000000000000000000000000000000000000000\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"13000000000000000000000000000000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_poly1305 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_poly1305() #0 {
  %1 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([263 x i8], [263 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %2 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %3 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %4 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %5 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  %6 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0))
  %7 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0))
  %8 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0))
  %9 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  %10 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0))
  %11 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0))
  %12 = call i32 @check(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0))
  ret void
}

declare dso_local i32 @check(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
