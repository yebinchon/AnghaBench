; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_test_ocb_long.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_test_ocb_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"g\E9D\D22V\C5\E0\B6\C6\1F\A2/\DF\1E\A2\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\F6s\F2\C3\E7\17J\AE{\AE\98l\A9\F2\9E\17\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\D9\0E\B8\E9\C9w\C8\8By\DDy=\7F\FA\16\1C\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"w\A3\D8\E75\89\15\8D%\D0\12\09\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\05\D5n\AD'R\C8k\E6\93,^\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"TX5\9A\C2;\0C\BA\9Ec0\DD\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\19,\9B{\D9\0B\A0j\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\00f\BCn\0E\F3N$\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"}N\A5\D4EP\1C\BE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ocb_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ocb_long() #0 {
  %1 = call i32 @check_ocb_long(i32 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  %2 = call i32 @check_ocb_long(i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %3 = call i32 @check_ocb_long(i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %4 = call i32 @check_ocb_long(i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %5 = call i32 @check_ocb_long(i32 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 12)
  %6 = call i32 @check_ocb_long(i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 12)
  %7 = call i32 @check_ocb_long(i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %8 = call i32 @check_ocb_long(i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %9 = call i32 @check_ocb_long(i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  ret void
}

declare dso_local i32 @check_ocb_long(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
